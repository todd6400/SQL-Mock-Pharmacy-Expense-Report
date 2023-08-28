--Creating Table for Company Costs
Create Table Costs(
ExpenseID INT Primary Key,
OrderDate Date,
ExpenseType Varchar(50),
ExpenseSource Varchar(50),
Amount Decimal(10,2));

--Creating table for Company Salary
Create Table Salary(
EmployeeID INT,
EmployeeName Varchar(50),
Department Varchar(50),
MonthlySalary Decimal(10,2),
OrderDate Date,
ExpenseType Varchar(50)
CONSTRAINT PK_EmployeeID PRIMARY KEY (EmployeeID,OrderDate));

--Adding ExpenseSource column to Salary table
Alter Table [dbo].[Salary]
ADD ExpenseSource Varchar(50);

--Filling values into Company Costs Table
Insert into [dbo].[Costs](ExpenseID,OrderDate,ExpenseType,ExpenseSource,Amount)
Values
(1,'2023-01-03','entertainment','HolidayCorp',501.32),
(2,'2023-01-03','supplies', 'BottleCorp', 11281.65),
(3,'2023-01-03','supplies','PillCorp', 25643.29),
(4,'2023-01-27','travel','PlaneCorp',338.41),
(5,'2023-02-06','meals','PizzaCorp',124.53),
(6,'2023-02-14','entertainment','HolidayCorp',314.56),
(7,'2023-03-07','supplies','AppsCorp',2499.99),
(8,'2023-04-01','entertainment','HolidayCorp',259.82),
(9,'2023-04-01','supplies','BottleCorp',10588.93),
(10,'2023-04-01','supplies','PillCorp',25135.93),
(11,'2023-04-01','lease','LeaseCorp',60112.51),
(12,'2023-05-09','travel','PlaneCorp',289.73),
(13,'2023-05-22','maintenance','HelpCorp', 4591.43),
(14,'2023-05-24','supplies','AmazonCorp',600.67),
(15,'2023-05-28','travel','TrainCorp',160.80),
(16,'2023-06-08','marketing','AdCorp',3000.89),
(17,'2023-07-01','supplies','BottleCorp',7058.90),
(18,'2023-07-01','maintenance','CleanCorp',1500.00),
(19,'2023-07-03','meals','CateringCorp',250.00),
(20,'2023-07-20','travel','PlaneCorp',400.37),
(21,'2023-07-26','marketing','AdCorp',9970.80),
(22,'2023-08-01','supplies','PillCorp',22193.23),
(23,'2023-08-23','supplies','OfficeCorp',85.00),
(24,'2023-08-27','travel','PlaneCorp',312.45),
(25,'2023-09-05','meals','PizzaCorp',76.92),
(26,'2023-10-01','supplies','BottleCorp',12908.02),
(27,'2023-10-01','supplies','PillCorp',28982.77),
(28,'2023-10-31','entertainment','HoldayCorp',587.31),
(29,'2023-11-22','meals','TurkeyCorp', 231.23),
(30,'2023-12-23','entertainment','HolidayCorp',422.57);

--Filling values into Company Salary Table
Insert Into [dbo].[Salary](EmployeeID,EmployeeName,Department,MonthlySalary,OrderDate,ExpenseType,ExpenseSource)
Values
(101,'John Doe','Research',5315.28,'2023-01-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-01-01','Salary','Company'),
(103,'Alice Johnson','Sales',5500.23,'2023-01-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-01-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-01-01','Salary','Company'),
(106,'Jozie James','Sales',1240.00,'2023-01-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-02-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-02-01','Salary','Company'),
(103,'Alice Johnson','Sales',3380.88,'2023-02-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-02-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-02-01','Salary','Company'),
(106,'Jozie James','Sales',3598.28,'2023-02-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-03-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-03-01','Salary','Company'),
(103,'Alice Johnson','Sales',3665.68,'2023-03-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-03-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-03-01','Salary','Company'),
(106,'Jozie James','Sales',1923.42,'2023-03-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-04-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-04-01','Salary','Company'),
(103,'Alice Johnson','Sales',1815.34,'2023-04-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-04-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-04-01','Salary','Company'),
(106,'Jozie James','Sales',3678.53,'2023-04-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-05-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-05-01','Salary','Company'),
(103,'Alice Johnson','Sales',2632.32,'2023-05-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-05-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-05-01','Salary','Company'),
(106,'Jozie James','Sales',4765.17,'2023-05-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-06-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-06-01','Salary','Company'),
(103,'Alice Johnson','Sales',3363.24,'2023-06-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-06-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-06-01','Salary','Company'),
(106,'Jozie James','Sales',2453.72,'2023-06-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-07-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-07-01','Salary','Company'),
(103,'Alice Johnson','Sales',5821.17,'2023-07-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-07-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-07-01','Salary','Company'),
(106,'Jozie James','Sales',3456.53,'2023-07-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-08-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-08-01','Salary','Company'),
(103,'Alice Johnson','Sales',1532.62,'2023-08-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-08-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-08-01','Salary','Company'),
(106,'Jozie James','Sales',2674.37,'2023-08-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-09-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-09-01','Salary','Company'),
(103,'Alice Johnson','Sales',3537.21,'2023-09-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-09-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-09-01','Salary','Company'),
(106,'Jozie James','Sales',1444.28,'2023-09-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-10-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-10-01','Salary','Company'),
(103,'Alice Johnson','Sales',3059.47,'2023-10-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-10-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-10-01','Salary','Company'),
(106,'Jozie James','Sales',4102.48,'2023-10-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-11-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-11-01','Salary','Company'),
(103,'Alice Johnson','Sales',2524.93,'2023-11-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-11-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-11-01','Salary','Company'),
(106,'Jozie James','Sales',1650.25,'2023-11-01','Salary','Company'),

(101,'John Doe','Research',5315.28,'2023-12-01','Salary','Company'),
(102,'Jane Smith','Production',4535.32,'2023-12-01','Salary','Company'),
(103,'Alice Johnson','Sales',3451.34,'2023-12-01','Salary','Company'),
(104,'Jarvis Mayfield','Research',2546.71,'2023-12-01','Salary','Company'),
(105,'Ronaldo Ferrel','Production',3231.43,'2023-12-01','Salary','Company'),
(106,'Jozie James','Sales',5194.73,'2023-12-01','Salary','Company');

--Creating Yearly Expense table
Create Table YearlyExpense(
ExpenseType Varchar(50),
YearlyCost Decimal(10,2));

--Calculating Sum of Expenses by Expense Type (Total Salary) and inserting into new table
Insert into [dbo].[YearlyExpense](ExpenseType, YearlyCost)
Select ExpenseType, Sum(MonthlySalary) AS YearlyExpenseSalary
From [dbo].[Salary]
GROUP BY ExpenseType;


--Creating Stored procedure to calculate yearly expenses for different expense types on Costs table 

Create PROCEDURE CalculateYearlyExpense
    @CategoryName Varchar(50)
AS
    SELECT ExpenseType,SUM(Amount)
    FROM [dbo].[Costs]
    WHERE ExpenseType = @CategoryName
	Group by ExpenseType;

--Checking all categories in the ExpenseType column
Select Distinct ExpenseType
from [dbo].[Costs];

--Executing stored procedure on different expense types and inserting into Yearly Expense table
Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'entertainment' 

Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'supplies'

Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'travel'

Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'meals'

Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'lease' 

Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'marketing'

Insert into [dbo].[YearlyExpense](ExpenseType,YearlyCost)
EXECUTE CalculateYearlyExpense @CategoryName = 'maintenance' 

--Creating Table for Monthly Expenses
Create Table MonthlyExpenses(
MonthofExpense VarChar(50),
OtherExpenses Decimal(10,2),
SalaryExpenses Decimal(10,2),
TotalExpenses Decimal(10,2)
);

--Calculating Expense by Month for Costs Table and inserting into Monthly Expense table
Insert Into [dbo].[MonthlyExpenses](MonthofExpense,OtherExpenses)
SELECT
    FORMAT(OrderDate, 'MMMM-yyyy') AS Month,
    SUM(amount) AS TotalExpenses
FROM
    [dbo].[Costs]
GROUP BY
    FORMAT(OrderDate, 'MMMM-yyyy')
ORDER BY
    Min(OrderDate);

--Calculating Expense by Month for Salary Table and updating into Monthly Expense table
UPDATE [dbo].[MonthlyExpenses]
SET SalaryExpenses = (
    SELECT SUM(MonthlySalary)
    FROM [dbo].[Salary]
    WHERE FORMAT([dbo].[Salary].OrderDate, 'MMMM-yyyy') = [dbo].[MonthlyExpenses].MonthofExpense
);

--Adding monthly salary expenses and montly other expenses to get total monthly expenses
Update [dbo].[MonthlyExpenses]
Set TotalExpenses = OtherExpenses + SalaryExpenses;

--Adding specific categories from Other Expenses to see monthly expense
Alter Table [dbo].[MonthlyExpenses]
Add Entertainment Varchar(50),
Supplies Varchar(50),
Travel Varchar(50),
Meals Varchar(50),
Lease Varchar(50),
Marketing Varchar(50),
Maintenance Varchar(50);

--Adding entertainment monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Entertainment = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'entertainment'
    AND MONTH(OrderDate) = 12
)
Where MonthofExpense = 'December-2023';

--Add Supplies monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Supplies = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'supplies'
    AND MONTH(OrderDate) = 12
)
Where MonthofExpense = 'December-2023';

--Adding Travel monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Travel = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'travel'
    AND MONTH(OrderDate) = 12
)
Where MonthofExpense = 'December-2023';

--Adding Meals monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Meals = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'meals'
    AND MONTH(OrderDate) = 12
)
Where MonthofExpense = 'December-2023';

--Adding Meals monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Lease = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'lease'
    AND MONTH(OrderDate) = 4
)
Where MonthofExpense = 'April-2023';

--Adding Meals monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Marketing = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'marketing'
    AND MONTH(OrderDate) = 12
)
Where MonthofExpense = 'December-2023';

--Adding Maintenance monthly expense to monthly expense chart
Update [dbo].[MonthlyExpenses]
Set Maintenance = (
SELECT
    SUM(Amount) AS TotalMonthlyExpense
FROM
    [dbo].[Costs]
WHERE
    ExpenseType = 'maintenance'
    AND MONTH(OrderDate) = 12
)
Where MonthofExpense = 'December-2023';

--Creating table for checking yearly expense by Supplier
Create Table SupplierExpense(
Supplier Varchar(50),
YearlyCost Decimal(10,2)
);

Insert Into [dbo].[SupplierExpense](Supplier,YearlyCost)
Select ExpenseSource,Sum(amount)
From [dbo].[Costs]
Group by ExpenseSource;

Create Table ExpenseByDepartment(
Department varchar(50),
YearlyCost decimal(10,2)
);

Insert into [dbo].[ExpenseByDepartment](Department,YearlyCost)
Select Department,Sum(MonthlySalary)
From [dbo].[Salary]
Group by Department;
