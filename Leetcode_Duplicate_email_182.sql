# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

# CREATE TABLE IF NOT EXISTS
# While creating a table that already exists, throws an error. To fix this issue, we can add the optional IF NOT EXISTS command while creating a table.

Create table If Not Exists Person_3
(
id int, 
email varchar(255)
);

Truncate table Person_3;
insert into Person_3 (id, email) values ('1', 'a@b.com');
insert into Person_3 (id, email) values ('2', 'c@d.com');
insert into Person_3 (id, email) values ('3', 'a@b.com');

/**
Q. Write an SQL query to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

Input: 
Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
Output: 
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Explanation: a@b.com is repeated two times.
**/

SELECT * FROM Person_3;

# TYPE 1 :- 
SELECT email AS Email
FROM Person_3
GROUP BY email
HAVING count(email)>1;

# TYPE 2 :-
SELECT email 
FROM Person_3
GROUP BY email
HAVING count(*) > 1;

# SEQUENCE QUERY RUNS(BEHIND THE SCENES) :- FROM => GROUP BY => HAVING => SELECT