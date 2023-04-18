create database test;

-- CREATE
create table sample2(
id int,
name varchar(20),
address varchar(200),
pin int,
);

-- INSERT
insert into sample2 (id,name,address,pin) values (1,'yash','vellore',12345);
insert into sample2 (id,name,address,pin) values (2,'raj','patna',12347);
insert into sample2 (id,name,address,pin) values (3,'ram','chennai',632012);
insert into sample2 (id,name,address,pin) values (4,'mohan','delhi',12343);
insert into sample2 (id,name,address,pin) values (5,'rakesh','ranchi',12238);
insert into sample2 (id,name,address,pin) values (6,'abhi','lucknow',63562);
insert into sample2 (id,name,address,pin) values (7,'mani','delhi',62001);
insert into sample2 (id,name,address,pin) values (8,'neha','delhi',62006);
insert into sample2 (id,name,address,pin) values (8,'joe',NULL,62006);


-- SELECT/VIEW
select * from sample2;
select DISTINCT address from sample2;
select * from sample2 WHERE address='delhi';
select * from sample2 WHERE address='delhi' OR address='vellore';
select * from sample2 WHERE address='delhi' AND id=4;
select * from sample2 WHERE NOT address='delhi';
select * from sample2 where address IN ('delhi','vellore','patna');
select * from sample2 order by name ASC;
select * from sample2 order by pin DESC;
select * from sample2 where address is null;
select top 2  * from sample2 ;

-- UPDATE
update sample2 SET name='yashraj' where id=1;
select * from sample2;

-- DELETE
delete from sample2 where id=8 AND address is not NULL;
select * from sample2;

-- ALIAS
select address AS city from sample2;
select * from sample2;

-- OPERATIONS/FUNCTIONS
select MIN(pin) from sample2;
select MAX(pin) from sample2;
select SUM(pin) from sample2;
select AVG(pin) from sample2;
select COUNT(pin) from sample2;

-- JOINS
insert into sample (id,name) values (1,'yashraj');
insert into sample (id,name) values (2,'raj');
insert into sample (id,name) values (3,'ram');
SELECT * from  sample;

select * from sample2 INNER JOIN sample ON sample2.name=sample.name; --COMMON
select * from sample2 LEFT JOIN sample ON sample2.name=sample.name; --LEFT
select * from sample2 RIGHT JOIN sample ON sample2.name=sample.name; --RIGHT
select * from sample2 FULL JOIN sample ON sample2.name=sample.name; --ALL

-- LINK TO SHEET - https://www.codewithharry.com/blogpost/mysql-cheatsheet/



