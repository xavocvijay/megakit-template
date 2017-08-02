-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB-1~xenial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_balance_sheet`
--

DROP TABLE IF EXISTS `account_balance_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_balance_sheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `positive_side` varchar(255) DEFAULT NULL,
  `report_name` varchar(25) DEFAULT NULL,
  `show_sub` varchar(255) DEFAULT NULL,
  `subtract_from` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_balance_sheet`
--

LOCK TABLES `account_balance_sheet` WRITE;
/*!40000 ALTER TABLE `account_balance_sheet` DISABLE KEYS */;
INSERT INTO `account_balance_sheet` VALUES (18,NULL,'Share Holder Fund','LT','BalanceSheet',NULL,'CR','1','2017-07-28'),(19,NULL,'Share Application Money Pending Allotment','LT','BalanceSheet',NULL,'CR','1','2017-07-28'),(20,NULL,'Non Current Liabilities','LT','BalanceSheet',NULL,'CR','1','2017-07-28'),(21,NULL,'Current Liabilities','LT','BalanceSheet',NULL,'CR','1','2017-07-28'),(22,NULL,'Profit & Loss (Opening)','LT','BalanceSheet',NULL,'CR','1','2017-07-28'),(23,NULL,'Non Current Assets','RT','BalanceSheet',NULL,'DR','1','2017-07-28'),(24,NULL,'Current Assets','RT','BalanceSheet',NULL,'DR','1','2017-07-28'),(25,NULL,'Opening Stock','LT','Trading',NULL,'CR','1','2017-07-28'),(26,NULL,'Sales','RT','Trading',NULL,'CR','2','2017-07-28'),(27,NULL,'Direct Expenses','LT','Trading',NULL,'CR','3','2017-07-28'),(28,NULL,'Purchase Returns','RT','Trading',NULL,'CR','4','2017-07-28'),(29,NULL,'Purchase','LT','Trading',NULL,'DR','2','2017-07-28'),(30,NULL,'Closing Stock','RT','Trading',NULL,'DR','3','2017-07-28'),(31,NULL,'Sales Returns','LT','Trading',NULL,'DR','4','2017-07-28'),(32,NULL,'Direct Income','RT','Trading',NULL,'DR','4','2017-07-28'),(33,NULL,'Indirect Expenses','LT','Profit & Loss',NULL,'DR','1','2017-07-28'),(34,NULL,'Indirect Income','RT','Profit & Loss',NULL,'CR','1','2017-07-28');
/*!40000 ALTER TABLE `account_balance_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_group`
--

DROP TABLE IF EXISTS `account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `balance_sheet_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `parent_group_id` int(11) DEFAULT NULL,
  `root_group_id` int(11) DEFAULT NULL,
  `path` text,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `balance_sheet_id` (`balance_sheet_id`) USING BTREE,
  KEY `parent_group_id` (`parent_group_id`) USING BTREE,
  KEY `root_group_id` (`root_group_id`) USING BTREE,
  FULLTEXT KEY `quick_search` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_group`
--

LOCK TABLES `account_group` WRITE;
/*!40000 ALTER TABLE `account_group` DISABLE KEYS */;
INSERT INTO `account_group` VALUES (128,NULL,18,'Share Capital','2017-07-28',NULL,128,'.128.'),(129,NULL,18,'Reserves & Surplus','2017-07-28',NULL,129,'.129.'),(130,NULL,18,'Money Received Against Share Warrants','2017-07-28',NULL,130,'.130.'),(131,NULL,18,'Capital Reserves','2017-07-28',129,129,'.129.131.'),(132,NULL,18,'Capital Redemption Reserve','2017-07-28',129,129,'.129.132.'),(133,NULL,18,'Securities Premium Reserve','2017-07-28',129,129,'.129.133.'),(134,NULL,18,'Debenture Redemption Reserve','2017-07-28',129,129,'.129.134.'),(135,NULL,18,'Revaluation Reserve','2017-07-28',129,129,'.129.135.'),(136,NULL,18,'Share Options Outstanding Account','2017-07-28',129,129,'.129.136.'),(137,NULL,18,'Other Reserves','2017-07-28',129,129,'.129.137.'),(138,NULL,18,'Surplus','2017-07-28',129,129,'.129.138.'),(139,NULL,20,'Long Term Borrowing','2017-07-28',NULL,139,'.139.'),(140,NULL,20,'Deffered Tax Liabilities (Net)','2017-07-28',NULL,140,'.140.'),(141,NULL,20,'Other Long Term Liabilities','2017-07-28',NULL,141,'.141.'),(142,NULL,20,'Long Term Provisions','2017-07-28',NULL,142,'.142.'),(143,NULL,21,'Bonds / Debenture','2017-07-28',139,139,'.139.143.'),(144,NULL,20,'Term Loans','2017-07-28',139,139,'.139.144.'),(145,NULL,20,'Deffered Payment Liabilities','2017-07-28',139,139,'.139.145.'),(146,NULL,20,'Deposits (Long Term Liabilities)','2017-07-28',139,139,'.139.146.'),(147,NULL,20,'Loans And Advances From Related Parties (Long Term)','2017-07-28',139,139,'.139.147.'),(148,NULL,20,'Other Loans And Advances (Long Term Liabilities)','2017-07-28',139,139,'.139.148.'),(149,NULL,20,'Term Loans From Bank','2017-07-28',144,139,'.139.144.149.'),(150,NULL,20,'Term Loans From Other Parties','2017-07-28',144,139,'.139.144.150.'),(151,NULL,20,'Others (Other Long Term Liabilities)','2017-07-28',141,141,'.141.151.'),(152,NULL,20,'Provision For Employee Benefits','2017-07-28',142,142,'.142.152.'),(153,NULL,20,'Others (Long Term Provisions)','2017-07-28',142,142,'.142.153.'),(154,NULL,21,'Short Term Borrowing','2017-07-28',NULL,154,'.154.'),(155,NULL,21,'Trade Payables','2017-07-28',NULL,155,'.155.'),(156,NULL,21,'Other Current Liabilities','2017-07-28',NULL,156,'.156.'),(157,NULL,21,'Short Term Provisions','2017-07-28',NULL,157,'.157.'),(158,NULL,21,'Loans Repayable On Demand','2017-07-28',154,154,'.154.158.'),(159,NULL,21,'Loans And Advances From Related Parties (Short Term)','2017-07-28',154,154,'.154.159.'),(160,NULL,21,'Deposits (Short Term Liabilities)','2017-07-28',154,154,'.154.160.'),(161,NULL,21,'Other Loans And Advances (Short Term Liabilities)','2017-07-28',154,154,'.154.161.'),(162,NULL,21,'Loans From Banks','2017-07-28',158,154,'.154.158.162.'),(163,NULL,21,'Loans From Other Parties','2017-07-28',158,154,'.154.158.163.'),(164,NULL,21,'Bank OD','2017-07-28',158,154,'.154.158.164.'),(165,NULL,21,'Current Maturities Of Long Term Debt','2017-07-28',156,156,'.156.165.'),(166,NULL,21,'Current Maturities Of Financial Lease Obligations','2017-07-28',156,156,'.156.166.'),(167,NULL,21,'Interest Accrued But Not Due On Borrowings','2017-07-28',156,156,'.156.167.'),(168,NULL,21,'Interest Accrued And Due On Borrowings','2017-07-28',156,156,'.156.168.'),(169,NULL,21,'Income Received In Advance','2017-07-28',156,156,'.156.169.'),(170,NULL,21,'Unpaid Divindends','2017-07-28',156,156,'.156.170.'),(171,NULL,21,'Interest Accrued On Not Alloted Security Money','2017-07-28',156,156,'.156.171.'),(172,NULL,21,'Interest Accrued On Unpaid Matured Deposits','2017-07-28',156,156,'.156.172.'),(173,NULL,21,'Interest Accrued On Unpaid Matured Debentures','2017-07-28',156,156,'.156.173.'),(174,NULL,21,'Other Payables','2017-07-28',156,156,'.156.174.'),(175,NULL,21,'Tax Payable','2017-07-28',174,156,'.156.174.175.'),(176,NULL,21,'Sundry Creditor','2017-07-28',155,155,'.155.176.'),(177,NULL,21,'Others (Short Term Provisions)','2017-07-28',157,157,'.157.177.'),(178,NULL,23,'Fixed Assets','2017-07-28',NULL,178,'.178.'),(179,NULL,23,'Non Current Investments','2017-07-28',NULL,179,'.179.'),(180,NULL,23,'Differed Tax Assets (Net)','2017-07-28',NULL,180,'.180.'),(181,NULL,23,'Long Term Loans And Advances','2017-07-28',NULL,181,'.181.'),(182,NULL,23,'Other Non Current Assets','2017-07-28',NULL,182,'.182.'),(183,NULL,23,'Tangible Assets','2017-07-28',178,178,'.178.183.'),(184,NULL,23,'Intangible Assets','2017-07-28',178,178,'.178.184.'),(185,NULL,23,'Capital Work In Progress','2017-07-28',178,178,'.178.185.'),(186,NULL,23,'Land & Building','2017-07-28',183,178,'.178.183.186.'),(187,NULL,23,'Buildings','2017-07-28',183,178,'.178.183.187.'),(188,NULL,23,'Plant & Equipment','2017-07-28',183,178,'.178.183.188.'),(189,NULL,23,'Furniture & Fixtures','2017-07-28',183,178,'.178.183.189.'),(190,NULL,23,'Computers & Printers','2017-07-28',183,178,'.178.183.190.'),(191,NULL,23,'Vehicles','2017-07-28',183,178,'.178.183.191.'),(192,NULL,23,'Office Equipment','2017-07-28',183,178,'.178.183.192.'),(193,NULL,23,'Others (Tangible Assets)','2017-07-28',183,178,'.178.183.193.'),(194,NULL,23,'Land (Appreciable)','2017-07-28',186,178,'.178.183.186.194.'),(195,NULL,23,'Building (Depreciable)','2017-07-28',186,178,'.178.183.186.195.'),(196,NULL,23,'GoodWill','2017-07-28',184,178,'.178.184.196.'),(197,NULL,23,'Brand / Trademarks','2017-07-28',184,178,'.178.184.197.'),(198,NULL,23,'Computer Software','2017-07-28',184,178,'.178.184.198.'),(199,NULL,23,'Mastheads And Publisihing Titles','2017-07-28',184,178,'.178.184.199.'),(200,NULL,23,'Mining Rights','2017-07-28',184,178,'.178.184.200.'),(201,NULL,23,'Copyrights And Patents','2017-07-28',184,178,'.178.184.201.'),(202,NULL,23,'Licences And Franchise','2017-07-28',184,178,'.178.184.202.'),(203,NULL,23,'Others (Intangible Assets)','2017-07-28',184,178,'.178.184.203.'),(204,NULL,23,'Capital Advances','2017-07-28',181,181,'.181.204.'),(205,NULL,23,'Security Deposits','2017-07-28',181,181,'.181.205.'),(206,NULL,23,'Loans And Advances To Related Parties (Long Term)','2017-07-28',181,181,'.181.206.'),(207,NULL,23,'Other Loans And Advances (Assets)','2017-07-28',181,181,'.181.207.'),(208,NULL,23,'Allowance For Bad And Doubtful Advances','2017-07-28',181,181,'.181.208.'),(209,NULL,23,'Others (Other Non Current Assets)','2017-07-28',182,182,'.182.209.'),(210,NULL,23,'Long Term Trade Receivables','2017-07-28',182,182,'.182.210.'),(211,NULL,23,'Unsecured','2017-07-28',210,182,'.182.210.211.'),(212,NULL,23,'Secured','2017-07-28',210,182,'.182.210.212.'),(213,NULL,23,'Doubtful','2017-07-28',210,182,'.182.210.213.'),(214,NULL,24,'Current Investments','2017-07-28',NULL,214,'.214.'),(215,NULL,24,'Inventories','2017-07-28',NULL,215,'.215.'),(216,NULL,24,'Trade Receivables','2017-07-28',NULL,216,'.216.'),(217,NULL,24,'Cash And Cash Equivalents','2017-07-28',NULL,217,'.217.'),(218,NULL,24,'Short Term Loan And Advances','2017-07-28',NULL,218,'.218.'),(219,NULL,24,'Other Current Assets','2017-07-28',NULL,219,'.219.'),(220,NULL,24,'Bank Account','2017-07-28',217,217,'.217.220.'),(221,NULL,24,'Cheque, Drafts On Hand','2017-07-28',217,217,'.217.221.'),(222,NULL,24,'Cash In Hand','2017-07-28',217,217,'.217.222.'),(223,NULL,24,'Others (Cash Equivalents)','2017-07-28',217,217,'.217.223.'),(224,NULL,24,'Loans And Advances To Related Parties','2017-07-28',218,218,'.218.224.'),(225,NULL,24,'Others (Short Term Loans & Advances)','2017-07-28',218,218,'.218.225.'),(226,NULL,24,'Sundry Debtor','2017-07-28',216,216,'.216.226.'),(227,NULL,24,'Tax Receivable','2017-07-28',219,219,'.219.227.'),(228,NULL,25,'Opening Stock','2017-07-28',NULL,228,'.228.'),(229,NULL,29,'Purchase','2017-07-28',NULL,229,'.229.'),(230,NULL,27,'Direct Expenses','2017-07-28',NULL,230,'.230.'),(231,NULL,31,'Sales Returns','2017-07-28',NULL,231,'.231.'),(232,NULL,26,'Sales','2017-07-28',NULL,232,'.232.'),(233,NULL,28,'Purchase Returns','2017-07-28',NULL,233,'.233.'),(234,NULL,30,'Closing Stock','2017-07-28',NULL,234,'.234.'),(235,NULL,32,'Direct Income','2017-07-28',NULL,235,'.235.'),(236,NULL,33,'Compensation To Employee (Indirect)','2017-07-28',NULL,236,'.236.'),(237,NULL,33,'Rebate & Discount Allowed','2017-07-28',NULL,237,'.237.'),(238,NULL,33,'Renumeration To Directors (Indirect)','2017-07-28',236,236,'.236.238.'),(239,NULL,33,'Salary (Indirect)','2017-07-28',236,236,'.236.239.'),(240,NULL,33,'Commission Given','2017-07-28',NULL,240,'.240.'),(241,NULL,33,'Power & Fuel','2017-07-28',NULL,241,'.241.'),(242,NULL,33,'Interest Paid','2017-07-28',NULL,242,'.242.'),(243,NULL,33,'Other Expenses','2017-07-28',NULL,243,'.243.'),(244,NULL,33,'Miscellaneous Expenses','2017-07-28',243,243,'.243.244.'),(245,NULL,33,'Shipping Expenses','2017-07-28',243,243,'.243.245.'),(246,NULL,33,'Exchange Expenses','2017-07-28',243,243,'.243.246.'),(247,NULL,33,'Bank Charges Expenses','2017-07-28',243,243,'.243.247.'),(248,NULL,34,'Rebate & Discount Received','2017-07-28',NULL,248,'.248.'),(249,NULL,34,'Interest Received','2017-07-28',NULL,249,'.249.'),(250,NULL,34,'Commission Received','2017-07-28',NULL,250,'.250.'),(251,NULL,34,'Other Income','2017-07-28',NULL,251,'.251.'),(252,NULL,34,'Round Income','2017-07-28',251,251,'.251.252.'),(253,NULL,34,'Exchange Income','2017-07-28',251,251,'.251.253.'),(254,NULL,22,'Profit & Loss (Opening)','2017-07-28',NULL,254,'.254.'),(255,NULL,33,'Reimbursement To Employees','2017-07-28',236,236,'.236.255.'),(256,NULL,34,'Dedcution From Employees','2017-07-28',251,251,'.251.256.');
/*!40000 ALTER TABLE `account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_report_layout`
--

DROP TABLE IF EXISTS `account_report_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_report_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `layout` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_report_layout`
--

LOCK TABLES `account_report_layout` WRITE;
/*!40000 ALTER TABLE `account_report_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_report_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_transaction`
--

DROP TABLE IF EXISTS `account_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `transaction_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Narration` text,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` decimal(8,6) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `round_amount` decimal(8,2) DEFAULT NULL,
  `related_transaction_id` int(11) DEFAULT NULL,
  `transaction_template_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `transaction_type_id` (`transaction_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction`
--

LOCK TABLES `account_transaction` WRITE;
/*!40000 ALTER TABLE `account_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_transaction_attachment`
--

DROP TABLE IF EXISTS `account_transaction_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_transaction_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_transaction_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction_attachment`
--

LOCK TABLES `account_transaction_attachment` WRITE;
/*!40000 ALTER TABLE `account_transaction_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transaction_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_transaction_row`
--

DROP TABLE IF EXISTS `account_transaction_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_transaction_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `_amountDr` double DEFAULT NULL,
  `_amountCr` double DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `accounts_in_side` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `remark` text,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `transaction_id` (`transaction_id`) USING BTREE,
  KEY `ledger_id` (`ledger_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction_row`
--

LOCK TABLES `account_transaction_row` WRITE;
/*!40000 ALTER TABLE `account_transaction_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transaction_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_transaction_types`
--

DROP TABLE IF EXISTS `account_transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_transaction_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `FromAC` varchar(255) DEFAULT NULL,
  `ToAC` varchar(255) DEFAULT NULL,
  `Default_Narration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction_types`
--

LOCK TABLES `account_transaction_types` WRITE;
/*!40000 ALTER TABLE `account_transaction_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl`
--

DROP TABLE IF EXISTS `acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `action_allowed` text,
  `allow_add` tinyint(4) DEFAULT NULL,
  `namespace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `post_id` (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl`
--

LOCK TABLES `acl` WRITE;
/*!40000 ALTER TABLE `acl` DISABLE KEYS */;
INSERT INTO `acl` VALUES (1154,NULL,6128,'Webpage','[]',1,'xepan\\cms'),(1155,NULL,6128,'CarouselCategory','[]',1,'xepan\\cms'),(1156,NULL,6128,'CarouselImage','[]',1,'xepan\\cms'),(1157,NULL,6128,'Custom_Form','[]',1,'xepan\\cms');
/*!40000 ALTER TABLE `acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `related_contact_id` int(11) DEFAULT NULL,
  `related_document_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime DEFAULT NULL,
  `notify_to` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `document_url` varchar(255) DEFAULT NULL,
  `score` decimal(14,6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `related_contact_id` (`related_contact_id`) USING BTREE,
  KEY `related_document_id` (`related_document_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate`
--

DROP TABLE IF EXISTS `affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `narration` text,
  `contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate`
--

LOCK TABLES `affiliate` WRITE;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT '',
  `user_installable` tinyint(4) DEFAULT '1',
  `default_currency_price` double(8,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (12,'communication','xepan\\communication',1,NULL),(13,'hr','xepan\\hr',1,NULL),(14,'projects','xepan\\projects',1,NULL),(15,'marketing','xepan\\marketing',1,NULL),(16,'accounts','xepan\\accounts',1,NULL),(17,'commerce','xepan\\commerce',1,NULL),(18,'production','xepan\\production',1,NULL),(19,'crm','xepan\\crm',1,NULL),(20,'cms','xepan\\cms',1,NULL),(21,'blog','xepan\\blog',1,NULL),(22,'epanservices','xepan\\epanservices',1,NULL);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` text NOT NULL,
  `type` text NOT NULL,
  `blog_post_id` int(11) NOT NULL,
  `comment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status` text NOT NULL,
  `type` text NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `anonymous_comment_config` varchar(255) DEFAULT NULL,
  `registered_comment_config` varchar(255) DEFAULT NULL,
  `show_comments` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `search_string` (`title`,`description`,`tag`,`meta_title`,`meta_description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_category`
--

DROP TABLE IF EXISTS `blog_post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_category` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_category`
--

LOCK TABLES `blog_post_category` WRITE;
/*!40000 ALTER TABLE `blog_post_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_category_association`
--

DROP TABLE IF EXISTS `blog_post_category_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_category_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) NOT NULL,
  `blog_post_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_category_association`
--

LOCK TABLES `blog_post_category_association` WRITE;
/*!40000 ALTER TABLE `blog_post_category_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_category_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `document_id` int(11) NOT NULL,
  `schedule` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `starting_date` datetime NOT NULL,
  `ending_date` datetime NOT NULL,
  `campaign_type` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `document_id` (`document_id`),
  FULLTEXT KEY `search_string` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_category_association`
--

DROP TABLE IF EXISTS `campaign_category_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_category_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marketing_category_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marketing_category_id` (`marketing_category_id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `ceated_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_category_association`
--

LOCK TABLES `campaign_category_association` WRITE;
/*!40000 ALTER TABLE `campaign_category_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_category_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_category_association_1`
--

DROP TABLE IF EXISTS `campaign_category_association_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_category_association_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marketing_category_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `marketing_category_id` (`marketing_category_id`) USING BTREE,
  KEY `campaign_id` (`campaign_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_category_association_1`
--

LOCK TABLES `campaign_category_association_1` WRITE;
/*!40000 ALTER TABLE `campaign_category_association_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_category_association_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_socialuser_association`
--

DROP TABLE IF EXISTS `campaign_socialuser_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_socialuser_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialuser_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_user_id` (`socialuser_id`) USING BTREE,
  KEY `campaign_id` (`campaign_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_socialuser_association`
--

LOCK TABLES `campaign_socialuser_association` WRITE;
/*!40000 ALTER TABLE `campaign_socialuser_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_socialuser_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carouselcategory`
--

DROP TABLE IF EXISTS `carouselcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carouselcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carouselcategory`
--

LOCK TABLES `carouselcategory` WRITE;
/*!40000 ALTER TABLE `carouselcategory` DISABLE KEYS */;
INSERT INTO `carouselcategory` VALUES (1,143988,'Active','2017-07-28 12:04:40','CarouselCategory','home slider');
/*!40000 ALTER TABLE `carouselcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carouselimage`
--

DROP TABLE IF EXISTS `carouselimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carouselimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carousel_category_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text_to_display` text,
  `alt_text` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carouselimage`
--

LOCK TABLES `carouselimage` WRITE;
/*!40000 ALTER TABLE `carouselimage` DISABLE KEYS */;
INSERT INTO `carouselimage` VALUES (1,1,143988,6523,'Medical Services<br/>that You Can Trust','<p>A clinic is a healthcare facility that is primarily focused on the care of outpatients.</p>\r\n<p><a class=\"text-uppercase s-btn s-btn--md s-btn--white-brd g-radius--50 g-padding-x-50--xs\" href=\"http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes\">Read More</a></p>','',0,'','2017-07-28 12:07:12','Visible','CarouselImage'),(2,1,143988,6524,'Medical Excellence<br/>Every Day','<p>Clinics can be privately operated or publicly managed and funded.</p>\r\n<p><a class=\"text-uppercase s-btn s-btn--md s-btn--white-brd g-radius--50 g-padding-x-50--xs\" href=\"#\"> Read More</a></p>','',0,'','2017-07-28 12:07:23','Visible','CarouselImage');
/*!40000 ALTER TABLE `carouselimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_sequence` int(11) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `custom_link` varchar(255) DEFAULT NULL,
  `cat_image_id` int(11) DEFAULT NULL,
  `is_website_display` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`),
  KEY `parent_category_id` (`parent_category_id`),
  KEY `cat_image_id` (`cat_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_item_association`
--

DROP TABLE IF EXISTS `category_item_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_item_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_document_id` (`item_id`,`category_id`),
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_item_association`
--

LOCK TABLES `category_item_association` WRITE;
/*!40000 ALTER TABLE `category_item_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_item_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_editors`
--

DROP TABLE IF EXISTS `cms_editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_editors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `can_edit_template` tinyint(4) DEFAULT NULL,
  `can_edit_page_content` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_editors`
--

LOCK TABLES `cms_editors` WRITE;
/*!40000 ALTER TABLE `cms_editors` DISABLE KEYS */;
INSERT INTO `cms_editors` VALUES (7,77,1,1);
/*!40000 ALTER TABLE `cms_editors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communication_id` (`communication_id`) USING BTREE,
  KEY `ticket_id` (`ticket_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commerce_package_item_association`
--

DROP TABLE IF EXISTS `commerce_package_item_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commerce_package_item_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_item_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `extra_info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commerce_package_item_association`
--

LOCK TABLES `commerce_package_item_association` WRITE;
/*!40000 ALTER TABLE `commerce_package_item_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `commerce_package_item_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailbox` varchar(45) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `related_document_id` int(11) DEFAULT NULL,
  `from_raw` text,
  `to_raw` text,
  `cc_raw` text,
  `bcc_raw` text,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `communication_type` varchar(45) DEFAULT NULL,
  `flags` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `reply_to` varchar(255) DEFAULT NULL,
  `detailed` tinyint(4) DEFAULT NULL,
  `is_starred` tinyint(4) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `sent_on` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `extra_info` text,
  `type` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `communication_channel_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `emailsetting_id` int(11) DEFAULT NULL,
  `calling_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `to_id_2` (`to_id`,`related_id`,`related_document_id`),
  KEY `related_document_id` (`related_document_id`) USING BTREE,
  KEY `related_id` (`related_id`) USING BTREE,
  KEY `to_id` (`to_id`) USING BTREE,
  KEY `from_id` (`from_id`) USING BTREE,
  KEY `created_at` (`created_at`),
  KEY `communication_type` (`communication_type`),
  KEY `emailsetting_id` (`emailsetting_id`),
  FULLTEXT KEY `search_string` (`title`,`description`,`communication_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication_attachment`
--

DROP TABLE IF EXISTS `communication_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communication_id` (`communication_id`) USING BTREE,
  KEY `file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_attachment`
--

LOCK TABLES `communication_attachment` WRITE;
/*!40000 ALTER TABLE `communication_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `communication_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication_read_emails`
--

DROP TABLE IF EXISTS `communication_read_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_read_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `communication_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `communicaiton_id` (`communication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_read_emails`
--

LOCK TABLES `communication_read_emails` WRITE;
/*!40000 ALTER TABLE `communication_read_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `communication_read_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication_sms_setting`
--

DROP TABLE IF EXISTS `communication_sms_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_sms_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_url` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_user_name_qs_param` varchar(255) DEFAULT NULL,
  `sms_password_qs_param` varchar(255) DEFAULT NULL,
  `sms_number_qs_param` varchar(255) DEFAULT NULL,
  `sm_message_qs_param` varchar(255) DEFAULT NULL,
  `sms_prefix` varchar(255) DEFAULT NULL,
  `sms_postfix` varchar(255) DEFAULT NULL,
  `created_by_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_sms_setting`
--

LOCK TABLES `communication_sms_setting` WRITE;
/*!40000 ALTER TABLE `communication_sms_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `communication_sms_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assign_to_id` int(11) DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `image_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `search_string` text,
  `source` varchar(255) DEFAULT NULL,
  `remark` text,
  `freelancer_type` varchar(255) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `related_with` varchar(255) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_epan_id` (`epan_id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `image_id` (`image_id`) USING BTREE,
  KEY `type` (`type`),
  KEY `state_id` (`state_id`),
  KEY `country_id` (`country_id`),
  FULLTEXT KEY `search_string` (`search_string`),
  CONSTRAINT `fk_epan_id` FOREIGN KEY (`epan_id`) REFERENCES `epan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143989 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (143988,NULL,NULL,'Super','User','Employee','wwwEMP143988','Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,77,'2017-07-28 14:31:45','2017-07-28 14:31:45',0,'   0  2017-07-28      Super User',NULL,NULL,'Not Applicable',0,NULL,NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `head` varchar(45) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_valid` tinyint(4) DEFAULT '1',
  `type` varchar(45) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `type` (`type`),
  KEY `value` (`value`),
  KEY `head` (`head`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_255` text NOT NULL,
  `title` text NOT NULL,
  `document_id` int(11) NOT NULL,
  `marketing_category_id` int(11) NOT NULL,
  `is_template` tinyint(1) NOT NULL,
  `message_3000` text NOT NULL,
  `message_blog` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `message_160` text NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `marketing_category_id` (`marketing_category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (476,'No Content','Empty',6140,6139,1,'','No Content','xavoc.com','',NULL);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `iso_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan','Country','AF','InActive',NULL),(2,'Albania','Country','AL','InActive',NULL),(3,'Algeria','Country','DZ','InActive',NULL),(4,'American Samoa','Country','AS','InActive',NULL),(5,'Andorra','Country','AD','InActive',NULL),(6,'Angola','Country','AO','InActive',NULL),(7,'Anguilla','Country','AI','InActive',NULL),(8,'Antarctica','Country','AQ','InActive',NULL),(9,'Antigua and Barbuda','Country','AG','InActive',NULL),(10,'Argentina','Country','AR','InActive',NULL),(11,'Armenia','Country','AM','InActive',NULL),(12,'Aruba','Country','AW','InActive',NULL),(13,'Australia','Country','AU','InActive',NULL),(14,'Austria','Country','AT','InActive',NULL),(15,'Azerbaijan','Country','AZ','InActive',NULL),(16,'Bahrain','Country','BH','InActive',NULL),(17,'Bangladesh','Country','BD','InActive',NULL),(18,'Barbados','Country','BB','InActive',NULL),(19,'Belarus','Country','BY','InActive',NULL),(20,'Belgium','Country','BE','InActive',NULL),(21,'Belize','Country','BZ','InActive',NULL),(22,'Benin','Country','BJ','InActive',NULL),(23,'Bermuda','Country','BM','InActive',NULL),(24,'Bhutan','Country','BT','InActive',NULL),(25,'Bolivia','Country','BO','InActive',NULL),(26,'Bosnia and Herzegovina','Country','BA','InActive',NULL),(27,'Botswana','Country','BW','InActive',NULL),(28,'Bouvet Island','Country','BV','InActive',NULL),(29,'Brazil','Country','BR','InActive',NULL),(30,'British Indian Ocean Territory','Country','IO','InActive',NULL),(31,'Virgin Islands, British','Country','VG','InActive',NULL),(32,'Brunei Darussalam','Country','BN','InActive',NULL),(33,'Bulgaria','Country','BG','InActive',NULL),(34,'Burkina Faso','Country','BF','InActive',NULL),(35,'Myanmar','Country','MM','InActive',NULL),(36,'Burundi','Country','BI','InActive',NULL),(37,'Cambodia','Country','KH','InActive',NULL),(38,'Cameroon','Country','CM','InActive',NULL),(39,'Canada','Country','CA','InActive',NULL),(40,'Cape Verde','Country','CV','InActive',NULL),(41,'Cayman Islands','Country','KY','InActive',NULL),(42,'Central African Republic','Country','CF','InActive',NULL),(43,'Chad','Country','TD','InActive',NULL),(44,'Chile','Country','CL','InActive',NULL),(45,'China','Country','CN','InActive',NULL),(46,'Christmas Island','Country','CX','InActive',NULL),(47,'Cocos (Keeling) Islands','Country','CC','InActive',NULL),(48,'Colombia','Country','CO','InActive',NULL),(49,'Comoros','Country','KM','InActive',NULL),(50,'Congo, The Democratic Republic of the','Country','CD','InActive',NULL),(51,'Congo','Country','CG','InActive',NULL),(52,'Cook Islands','Country','CK','InActive',NULL),(53,'Costa Rica','Country','CR','InActive',NULL),(54,'Côte d\'Ivoire','Country','CI','InActive',NULL),(55,'Croatia','Country','HR','InActive',NULL),(56,'Cuba','Country','CU','InActive',NULL),(57,'Cyprus','Country','CY','InActive',NULL),(58,'Czech Republic','Country','CZ','InActive',NULL),(59,'Denmark','Country','DK','InActive',NULL),(60,'Djibouti','Country','DJ','InActive',NULL),(61,'Dominica','Country','DM','InActive',NULL),(62,'Dominican Republic','Country','DO','InActive',NULL),(63,'Timor-Leste','Country','TL','InActive',NULL),(64,'Ecuador','Country','EC','InActive',NULL),(65,'Egypt','Country','EG','InActive',NULL),(66,'El Salvador','Country','SV','InActive',NULL),(67,'Equatorial Guinea','Country','GQ','InActive',NULL),(68,'Eritrea','Country','ER','InActive',NULL),(69,'Estonia','Country','EE','InActive',NULL),(70,'Ethiopia','Country','ET','InActive',NULL),(71,'Falkland Islands (Malvinas)','Country','FK','InActive',NULL),(72,'Faroe Islands','Country','FO','InActive',NULL),(73,'Fiji','Country','FJ','InActive',NULL),(74,'Finland','Country','FI','InActive',NULL),(75,'France','Country','FR','InActive',NULL),(76,'French Guiana','Country','GF','InActive',NULL),(77,'French Polynesia','Country','PF','InActive',NULL),(78,'French Southern Territories','Country','TF','InActive',NULL),(79,'Gabon','Country','GA','InActive',NULL),(80,'Georgia','Country','GE','InActive',NULL),(81,'Germany','Country','DE','InActive',NULL),(82,'Ghana','Country','GH','InActive',NULL),(83,'Gibraltar','Country','GI','InActive',NULL),(84,'Greece','Country','GR','InActive',NULL),(85,'Greenland','Country','GL','InActive',NULL),(86,'Grenada','Country','GD','InActive',NULL),(87,'Guadeloupe','Country','GP','InActive',NULL),(88,'Guam','Country','GU','InActive',NULL),(89,'Guatemala','Country','GT','InActive',NULL),(90,'Guinea','Country','GN','InActive',NULL),(91,'Guinea-Bissau','Country','GW','InActive',NULL),(92,'Guyana','Country','GY','InActive',NULL),(93,'Haiti','Country','HT','InActive',NULL),(94,'Heard Island and McDonald Islands','Country','HM','InActive',NULL),(95,'Holy See (Vatican City State)','Country','VA','InActive',NULL),(96,'Honduras','Country','HN','InActive',NULL),(97,'Hong Kong','Country','HK','InActive',NULL),(98,'Hungary','Country','HU','InActive',NULL),(99,'Iceland','Country','IS','InActive',NULL),(100,'India','Country','IN','Active',NULL),(101,'Indonesia','Country','ID','InActive',NULL),(102,'Iran, Islamic Republic of','Country','IR','InActive',NULL),(103,'Iraq','Country','IQ','InActive',NULL),(104,'Ireland','Country','IE','InActive',NULL),(105,'Israel','Country','IL','InActive',NULL),(106,'Italy','Country','IT','InActive',NULL),(107,'Jamaica','Country','JM','InActive',NULL),(108,'Japan','Country','JP','InActive',NULL),(109,'Jordan','Country','JO','InActive',NULL),(110,'Kazakhstan','Country','KZ','InActive',NULL),(111,'Kenya','Country','KE','InActive',NULL),(112,'Kiribati','Country','KI','InActive',NULL),(113,'Korea, Democratic People\'s Republic of','Country','KP','InActive',NULL),(114,'Korea, Republic of','Country','KR','InActive',NULL),(115,'Kuwait','Country','KW','InActive',NULL),(116,'Kyrgyzstan','Country','KG','InActive',NULL),(117,'Lao People\'s Democratic Republic','Country','LA','InActive',NULL),(118,'Latvia','Country','LV','InActive',NULL),(119,'Lebanon','Country','LB','InActive',NULL),(120,'Lesotho','Country','LS','InActive',NULL),(121,'Liberia','Country','LR','InActive',NULL),(122,'Libyan Arab Jamahiriya','Country','LY','InActive',NULL),(123,'Liechtenstein','Country','LI','InActive',NULL),(124,'Lithuania','Country','LT','InActive',NULL),(125,'Luxembourg','Country','LU','InActive',NULL),(126,'Macao','Country','MO','InActive',NULL),(127,'Macedonia, Republic of','Country','MK','InActive',NULL),(128,'Madagascar','Country','MG','InActive',NULL),(129,'Malawi','Country','MW','InActive',NULL),(130,'Malaysia','Country','MY','InActive',NULL),(131,'Maldives','Country','MV','InActive',NULL),(132,'Mali','Country','ML','InActive',NULL),(133,'Malta','Country','MT','InActive',NULL),(134,'Marshall Islands','Country','MH','InActive',NULL),(135,'Martinique','Country','MQ','InActive',NULL),(136,'Mauritania','Country','MR','InActive',NULL),(137,'Mauritius','Country','MU','InActive',NULL),(138,'Mayotte','Country','YT','InActive',NULL),(139,'Mexico','Country','MX','InActive',NULL),(140,'Micronesia, Federated States of','Country','FM','InActive',NULL),(141,'Moldova','Country','MD','InActive',NULL),(142,'Monaco','Country','MC','InActive',NULL),(143,'Mongolia','Country','MN','InActive',NULL),(144,'Montserrat','Country','MS','InActive',NULL),(145,'Morocco','Country','MA','InActive',NULL),(146,'Mozambique','Country','MZ','InActive',NULL),(147,'Namibia','Country','NA','InActive',NULL),(148,'Nauru','Country','NR','InActive',NULL),(149,'Nepal','Country','NP','InActive',NULL),(150,'Netherlands Antilles','Country','AN','InActive',NULL),(151,'Netherlands','Country','NL','InActive',NULL),(152,'New Caledonia','Country','NC','InActive',NULL),(153,'New Zealand','Country','NZ','InActive',NULL),(154,'Nicaragua','Country','NI','InActive',NULL),(155,'Niger','Country','NE','InActive',NULL),(156,'Nigeria','Country','NG','InActive',NULL),(157,'Niue','Country','NU','InActive',NULL),(158,'Norfolk Island','Country','NF','InActive',NULL),(159,'Northern Mariana Islands','Country','MP','InActive',NULL),(160,'Norway','Country','NO','InActive',NULL),(161,'Oman','Country','OM','InActive',NULL),(162,'Pakistan','Country','PK','InActive',NULL),(163,'Palau','Country','PW','InActive',NULL),(164,'Palestinian Territory, Occupied','Country','PS','InActive',NULL),(165,'Panama','Country','PA','InActive',NULL),(166,'Papua New Guinea','Country','PG','InActive',NULL),(167,'Paraguay','Country','PY','InActive',NULL),(168,'Peru','Country','PE','InActive',NULL),(169,'Philippines','Country','PH','InActive',NULL),(170,'Pitcairn','Country','PN','InActive',NULL),(171,'Poland','Country','PL','InActive',NULL),(172,'Portugal','Country','PT','InActive',NULL),(173,'Puerto Rico','Country','PR','InActive',NULL),(174,'Qatar','Country','QA','InActive',NULL),(175,'Romania','Country','RO','InActive',NULL),(176,'Russian Federation','Country','RU','InActive',NULL),(177,'Rwanda','Country','RW','InActive',NULL),(178,'Reunion','Country','RE','InActive',NULL),(179,'Saint Helena','Country','SH','InActive',NULL),(180,'Saint Kitts and Nevis','Country','KN','InActive',NULL),(181,'Saint Lucia','Country','LC','InActive',NULL),(182,'Saint Pierre and Miquelon','Country','PM','InActive',NULL),(183,'Saint Vincent and the Grenadines','Country','VC','InActive',NULL),(184,'Samoa','Country','WS','InActive',NULL),(185,'San Marino','Country','SM','InActive',NULL),(186,'Saudi Arabia','Country','SA','InActive',NULL),(187,'Senegal','Country','SN','InActive',NULL),(188,'Seychelles','Country','SC','InActive',NULL),(189,'Sierra Leone','Country','SL','InActive',NULL),(190,'Singapore','Country','SG','InActive',NULL),(191,'Slovakia','Country','SK','InActive',NULL),(192,'Slovenia','Country','SI','InActive',NULL),(193,'Solomon Islands','Country','SB','InActive',NULL),(194,'Somalia','Country','SO','InActive',NULL),(195,'South Africa','Country','ZA','InActive',NULL),(196,'South Georgia and the South Sandwich Islands','Country','GS','InActive',NULL),(197,'Spain','Country','ES','InActive',NULL),(198,'Sri Lanka','Country','LK','InActive',NULL),(199,'Sudan','Country','SD','InActive',NULL),(200,'Suriname','Country','SR','InActive',NULL),(201,'Svalbard and Jan Mayen','Country','SJ','InActive',NULL),(202,'Swaziland','Country','SZ','InActive',NULL),(203,'Sweden','Country','SE','InActive',NULL),(204,'Switzerland','Country','CH','InActive',NULL),(205,'Syrian Arab Republic','Country','SY','InActive',NULL),(206,'Sao Tome and Principe','Country','ST','InActive',NULL),(207,'Taiwan','Country','TW','InActive',NULL),(208,'Tajikistan','Country','TJ','InActive',NULL),(209,'Tanzania, United Republic of','Country','TZ','InActive',NULL),(210,'Thailand','Country','TH','InActive',NULL),(211,'Bahamas','Country','BS','InActive',NULL),(212,'Gambia','Country','GM','InActive',NULL),(213,'Togo','Country','TG','InActive',NULL),(214,'Tokelau','Country','TK','InActive',NULL),(215,'Tonga','Country','TO','InActive',NULL),(216,'Trinidad and Tobago','Country','TT','InActive',NULL),(217,'Tunisia','Country','TN','InActive',NULL),(218,'Turkey','Country','TR','InActive',NULL),(219,'Turkmenistan','Country','TM','InActive',NULL),(220,'Turks and Caicos Islands','Country','TC','InActive',NULL),(221,'Tuvalu','Country','TV','InActive',NULL),(222,'Uganda','Country','UG','InActive',NULL),(223,'Ukraine','Country','UA','InActive',NULL),(224,'United Arab Emirates','Country','AE','InActive',NULL),(225,'United Kingdom','Country','GB','InActive',NULL),(226,'United States Minor Outlying Islands','Country','UM','InActive',NULL),(227,'United States','Country','US','InActive',NULL),(228,'Uruguay','Country','UY','InActive',NULL),(229,'Uzbekistan','Country','UZ','InActive',NULL),(230,'Vanuatu','Country','VU','InActive',NULL),(231,'Venezuela','Country','VE','InActive',NULL),(232,'Viet Nam','Country','VN','InActive',NULL),(233,'Virgin Islands, U.S.','Country','VI','InActive',NULL),(234,'Wallis and Futuna','Country','WF','InActive',NULL),(235,'Western Sahara','Country','EH','InActive',NULL),(236,'Yemen','Country','YE','InActive',NULL),(237,'Serbia and Montenegro','Country','CS','InActive',NULL),(238,'Zambia','Country','ZM','InActive',NULL),(239,'Zimbabwe','Country','ZW','InActive',NULL),(240,'Åland Islands','Country','AX','InActive',NULL),(241,'Serbia','Country','RS','InActive',NULL),(242,'Montenegro','Country','ME','InActive',NULL),(243,'Jersey','Country','JE','InActive',NULL),(244,'Guernsey','Country','GG','InActive',NULL),(245,'Isle of Man','Country','IM','InActive',NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `sale_invoice_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` decimal(14,6) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit`
--

LOCK TABLES `credit` WRITE;
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `document_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `integer_part` varchar(255) DEFAULT NULL,
  `fractional_part` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `postfix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1817 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (6141,NULL,'Default Currency','1',1816,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_account_entries_templates`
--

DROP TABLE IF EXISTS `custom_account_entries_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_account_entries_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` text,
  `is_favourite_menu_lister` tinyint(4) DEFAULT NULL,
  `is_merge_transaction` tinyint(4) DEFAULT NULL,
  `unique_trnasaction_template_code` varchar(255) DEFAULT NULL,
  `is_system_default` tinyint(4) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_account_entries_templates`
--

LOCK TABLES `custom_account_entries_templates` WRITE;
/*!40000 ALTER TABLE `custom_account_entries_templates` DISABLE KEYS */;
INSERT INTO `custom_account_entries_templates` VALUES (55,'Charges Deduction From Bank','Bank amount decreased due to deduction of charges.',0,NULL,'BANKCHARGES',0,NULL),(56,'Bank payment against office expenses ','Bank payment against office expenses, those are related to non-goods expenses',0,NULL,'EXPENSESBANKPAYMENT',0,NULL),(57,'Payment Return To Party (By Bank)','Bank Payment return to party/person/supplier whose ledger is maintained. You should do this if you frequently do business with this person and any you may require statement of supplier on any time.',0,NULL,'BANKRETURNTOPARTY',0,NULL),(58,'Payment Received From Party (Bank)','Payment received from party/ person/customer via Bank whose ledger is maintained. You should do this if you frequently do business with this person and you may require statement of party on any time.',0,NULL,'PARTYBANKRECEIVED',0,NULL),(59,'Payment Given To Party (Cash)','Cash payment given to party/person/supplier whose ledger is maintained. You should do this if you frequently do business with this person and any you may require statement of supplier on any time.',0,NULL,'PARTYCASHPAYMENT',0,NULL),(60,'Cash Withdraw From Bank','Cash withdrawal from bank.',0,NULL,'CASHWITHDRAWFROMBANK',0,NULL),(61,'Salary paid','Salary paid entry',0,NULL,'BULKSALARYPAYMENT',0,NULL),(62,'Salary payment (without ledger maintain)','Cash/Bank payment against salary',0,NULL,'SALARYPAYMENT',0,NULL),(63,'Reimbursement payment (without ledger maintain)','Cash/Bank payment against reimbursement',0,NULL,'REIMBURSEMENTPAYMENT',0,NULL),(64,'Payment Received From Party (Bank)','Payment received from party/ person/customer via Bank whose ledger is maintained. You should do this if you frequently do business with this person and you may require statement of party on any time.',0,NULL,'ANYPARTYBANKRECEIVED',0,NULL),(65,'Payment Received From Party (Cash)','Payment received from party/ person/customer via Cash whose ledger is maintained. You should do this if you frequently do business with this person and you may require statement of party on any time.',0,NULL,'PARTYCASHRECEIVED',0,NULL),(66,'Payment Return From Party (Bank)','Payment return recieved from party/ person/customer via Bank whose ledger is maintained. You should do this if you frequently do business with this person and you may require statement of party on any time.',0,NULL,'RETURNFROMPARTYBANK',0,NULL),(67,'Salary transferred to ledger account (with due entry)','Salary due and paid entry',0,NULL,'SALARYDUEANDPAID',0,NULL),(68,'Cash payment against any expenses(like Rent, Commission etc) ','Cash payment against any expenses, those are related to business any other expenses',0,NULL,'INDIRECTEXPENSESCASHPAYMENT',0,NULL),(69,'Cash Deposit In Bank','Cash deposited in bank.',0,NULL,'CASHDEPOSITINBANK',0,NULL),(70,'Interest On OverDraft','Interest applied on withdraw money, when withdraw limit exeeds.',0,NULL,'INTERESTONOD',0,NULL),(71,'Payment To Party (By Bank) / Returning Loan Money.','Bank Payment given to party/person/ whose ledger is maintained. You paying this money against loan.',0,NULL,'PAYMENTLOAN',0,NULL),(72,'Cash payment against office expenses ','Cash payment against office expenses, those are related to non-goods expenses',0,NULL,'EXPENSESCASHPAYMENT',0,NULL),(73,'Payment Received From Party (Cash)','Payment received from party/ person/customer via Cash whose ledger is maintained. You should do this if you frequently do business with this person and you may require statement of party on any time.',0,NULL,'ANYPARTYCASHRECEIVED',0,NULL),(74,'Capital Investment (Starting Of Business)','Investment in business by cash, cash received in business from bank or from any person ',0,NULL,'CAPITALINVESTMENT',0,NULL),(75,'Payment Given To Party (By Bank)','Bank Payment given to party/person/supplier whose ledger is maintained. You should do this if you frequently do business with this person and any you may require statement of supplier on any time.',0,NULL,'PARTYBANKPAYMENT',0,NULL),(76,'Money recieved against deduction cause of any reason from employees','Recieved money as cash or in bank against deduction',0,NULL,'DEDUCTIONRECEIVED',0,NULL),(77,'Cash payment not done for expenses(like Rent, Commission etc) , so its being due for business','Cash payment not done for expenses(like Rent, Commission etc) , so its being due for business',0,NULL,'INDIRECTEXPENSESDUE',0,NULL),(78,'Loans Or Advances Taken From Parties','Loan taken from any of the person or entity, which can be secure or unsecure',0,NULL,'TAKENLOAN',0,NULL),(79,'Fixed Asset Purchased (in cash or credit)','Asset purchased for office / factory / plant (like machinery, furniture or computers etc.)',0,NULL,'ASSETPURCHASED',0,NULL),(80,'Tax Payment Through Bank','Payable taxes paid to government via bank. ',0,NULL,'TAXPAYABLEBANKPAYMENT',0,NULL),(81,'Salary Due','Salary due \r\n',0,NULL,'SALARYDUE',0,NULL),(82,'Cash payment against due expenses ','Cash payment against outstanding expenses, those are due for business',0,NULL,'DUEEXPENSESCASHPAYMENT',0,NULL);
/*!40000 ALTER TABLE `custom_account_entries_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_account_entries_templates_transaction_row`
--

DROP TABLE IF EXISTS `custom_account_entries_templates_transaction_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_account_entries_templates_transaction_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `side` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `is_include_subgroup_ledger_account` tinyint(4) DEFAULT NULL,
  `parent_group` varchar(255) DEFAULT NULL,
  `ledger` varchar(255) DEFAULT NULL,
  `is_ledger_changable` tinyint(4) DEFAULT NULL,
  `is_allow_add_ledger` tinyint(4) DEFAULT NULL,
  `is_include_currency` tinyint(4) DEFAULT NULL,
  `template_transaction_id` int(11) DEFAULT NULL,
  `balance_sheet` varchar(255) DEFAULT NULL,
  `ledger_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_account_entries_templates_transaction_row`
--

LOCK TABLES `custom_account_entries_templates_transaction_row` WRITE;
/*!40000 ALTER TABLE `custom_account_entries_templates_transaction_row` DISABLE KEYS */;
INSERT INTO `custom_account_entries_templates_transaction_row` VALUES (256,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,70,'','','Bank Charge -1 (Charges applied for any aminity which is given by bank)','bank-charges1'),(257,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,70,'','','Bank Account (And Actual Deduct Amount)','bank'),(258,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,70,'','','Bank Charge -2 (Charges applied for any aminity which is given by bank)','bank-charges2'),(259,'DR','Other Expenses',NULL,'','',1,1,0,71,'','Other Expenses','Office Expense -1 (for ex - mobile bill, electricity bill, stationery etc.)','officeexpense1'),(260,'DR','Other Expenses',NULL,'','',1,1,0,71,'','Indirect Expenses','Office Expense -2 (for ex - mobile bill, electricity bill, stationery etc.)','officeexpense2'),(261,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,71,'','','Bank Account (And Actual Deduct Amount)','bank'),(262,'DR','Sundry Debtor',NULL,'','',1,0,1,72,'','','Party you return to','party'),(263,'CR','Bank OD,Bank Account',NULL,'','',1,1,1,72,'','','Bank Account (And Actual Amount Paid From Bank)','bank'),(264,'CR','Rebate & Discount Received',NULL,'','Rebate & Discount Received',0,0,0,72,'','','Discount Received','discount'),(265,'CR','Tax Payable',NULL,'','',1,1,0,72,'','TAX Payable','Any Tax Deducted by You - 1','tax1'),(266,'CR','Tax Payable',NULL,'','',1,1,0,72,'','TAX Payable','Any Tax Deducted by You - 2','tax2'),(267,'CR','Tax Payable',NULL,'','',1,1,0,72,'','TAX Payable','Any Tax Deducted by You - 3','tax3'),(268,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,72,'','','Any Bank Charges Applied','bank-charges'),(269,'DR','Bank Charges Expenses',NULL,'','',1,1,0,73,'','','Bank Charge -1 (& Charges applied)','bank-charges1'),(270,'DR','Bank Charges Expenses',NULL,'','',1,1,0,73,'','','Bank Charge -2 (& Charges applied)','bank-charges2'),(271,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,73,'','','Bank Account (And Actual Deduct Amount)','bank'),(272,'CR','Sundry Debtor',NULL,'','',1,0,1,74,'','','Party From which you received Payment','party'),(273,'DR','Bank OD,Bank Account',NULL,'','',1,1,1,74,'','','Bank Account (And Actual Amount Received In Bank)','bank'),(274,'DR','Rebate & Discount Allowed',NULL,'','Rebate & Discount Allowed',0,0,0,74,'','','Any Discount Given','discount'),(275,'DR','Tax Receivable',NULL,'','',1,1,0,74,'','TAX Receivable','Any Tax Deducted from Party - 1','tax1'),(276,'DR','Tax Receivable',NULL,'','',1,1,0,74,'','TAX Receivable','Any Tax Deducted from Party - 2','tax2'),(277,'DR','Tax Receivable',NULL,'','',1,1,0,74,'','TAX Receivable','Any Tax Deducted from Party - 3','tax3'),(278,'DR','Other Expenses',NULL,'','',1,1,1,74,'','','Any External Deduction on payment transfer','external_deduction'),(279,'DR','Bank Charges Expenses',NULL,'','Bank Charges',0,1,0,75,'','','Bank Charges (& Charges applied)','bank-charges'),(280,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,75,'','Bank','Bank Account (And Amount Charged In Bank)','bank'),(281,'DR','Sundry Creditor',NULL,'','',1,0,0,76,'','','Party you paid to','party'),(282,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,76,'','','Cash Account (Cash In hand) - Actual Amount Paid','cash'),(283,'CR','Rebate & Discount Received',NULL,'','Rebate & Discount Received',0,0,0,76,'','','Discount Received','discount'),(284,'CR','Tax Payable',NULL,'','',1,1,0,76,'','TAX Payable','Any Tax Deducted by You - 1','tax1'),(285,'CR','Tax Payable',NULL,'','',1,1,0,76,'','TAX Payable','Any Tax Deducted by You - 2','tax2'),(286,'CR','Tax Payable',NULL,'','',1,1,0,76,'','TAX Payable','Any Tax Deducted by You - 3','tax3'),(287,'CR','Bank OD,Bank Account',NULL,'','',1,1,1,77,'','','Bank Account (And Actual Amount Withdraw)','bank'),(288,'DR','Cash In Hand',NULL,'','Cash Account',0,0,0,77,'','','Cash Account ( And Cash increased in business)','cash'),(289,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,78,'','','Bank Charge -1 (& Charges applied)','bank-charges1'),(290,'CR','Bank OD,Bank Account',NULL,'','',1,0,0,78,'','','Bank Account (And Actual Deduct Amount)','bank'),(291,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,78,'','','Bank Charge -2 (& Charges applied)','bank-charges2'),(292,'DR','Sundry Creditor',NULL,'','',1,0,0,79,'','Employee','SalaryToEmployees','employeessalaries'),(293,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,79,'','','Bank Account (And Actual Deduct Amount)','bank'),(294,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,79,'','','Cash Account (Cash In hand) - Actual Amount Paid','cash'),(295,'DR','Salary (Indirect)',NULL,'','Salary',0,0,0,80,'','Salary','Salary','salary'),(296,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,80,'','','Cash Account (Cash In hand) - Actual Amount Paid','cash'),(297,'CR','Tax Payable',NULL,'','',1,1,0,80,'','Tax Payable','TDS cost deduction from salary(if applied)','tax'),(298,'CR','Provision For Employee Benefits',NULL,'','Employee PF',0,1,0,80,'','Provision Fund','Employee\'s Provident Fund Amount (Actual Amount Deduct)','employeebenefitaccounts-1'),(299,'CR','Provision For Employee Benefits',NULL,'','ESIC',0,1,0,80,'','Provision Fund','ESIC Amount (Actual Amount Deduct)','employeebenefitaccounts-2'),(300,'CR','Provision For Employee Benefits',NULL,'','Employer PF',0,1,0,80,'','Provision Fund','Employer\'s Provident Fund Amount (Actual Amount Deduct)','employeebenefitaccounts'),(301,'CR','Provision For Employee Benefits',NULL,'','',1,1,0,80,'','Provision Fund','Employee\'s Benefit Amount (Actual Amount Deduct)','employeebenefitaccounts-3'),(302,'CR','Bank Account',NULL,'','Your Default Bank Account',1,1,0,80,'','','Bank Account (And Actual Deduct Amount)','bank'),(303,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,81,'','','Cash Account (Cash In hand) - Actual Amount Paid','cash'),(304,'CR','Tax Payable',NULL,'','',1,1,0,81,'','Tax Payable','TDS cost deduction from salary(if applied)','tax'),(305,'CR','Bank Account',NULL,'','Your Default Bank Account',1,1,0,81,'','','Bank Account (And Actual Deduct Amount)','bank'),(306,'DR','Reimbursement To Employees',NULL,'Compensation To Employee (Indirect)','Reimbursement To Employees',1,1,0,81,'Indirect Expenses','Reimbursement(Legal Expenses)','Reimbursement To Employees','reimbursement'),(307,'CR','Sundry Creditor,Sundry Debtor',NULL,'','',1,0,1,82,'','','Party From which you received Payment','party'),(308,'DR','Bank OD,Bank Account',NULL,'','',1,1,1,82,'','','Bank Account (And Actual Amount Received In Bank)','bank'),(309,'DR','Rebate & Discount Allowed',NULL,'','Rebate & Discount Allowed',0,0,0,82,'','','Any Discount Given','discount'),(310,'DR','Tax Receivable',NULL,'','',1,1,0,82,'','TAX Receivable','Any Tax Deducted from Party - 1','tax1'),(311,'DR','Tax Receivable',NULL,'','',1,1,0,82,'','TAX Receivable','Any Tax Deducted from Party - 2','tax2'),(312,'DR','Tax Receivable',NULL,'','',1,1,0,82,'','TAX Receivable','Any Tax Deducted from Party - 3','tax3'),(313,'DR','Other Expenses',NULL,'','',1,1,1,82,'','','Any External Deduction on payment transfer','external_deduction'),(314,'DR','Bank Charges Expenses',NULL,'','Bank Charges',0,1,0,83,'','','Bank Charges (& Charges applied)','bank-charges'),(315,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,83,'','Bank','Bank Account (And Amount Charged In Bank)','bank'),(316,'CR','Sundry Debtor',NULL,'','',1,0,1,84,'','','Party From which you received Payment','party'),(317,'DR','Cash In Hand',NULL,'','Cash Account',0,0,0,84,'','','Cash Account (And Actual Amount Received In Cash)','cash'),(318,'DR','Rebate & Discount Allowed',NULL,'','Rebate & Discount Allowed',0,0,0,84,'','','Any Discount Given','discount'),(319,'DR','Tax Receivable',NULL,'','',1,1,0,84,'','TAX Receivable','Any Tax Deducted from Party - 1','tax1'),(320,'DR','Tax Receivable',NULL,'','',1,1,0,84,'','TAX Receivable','Any Tax Deducted from Party - 2','tax2'),(321,'DR','Tax Receivable',NULL,'','',1,1,0,84,'','TAX Receivable','Any Tax Deducted from Party - 3','tax3'),(322,'DR','Tax Receivable',NULL,'','',1,1,1,84,'','','Any External Deduction on payment transfer','external_deduction'),(323,'CR','Sundry Creditor',NULL,'','',1,0,1,85,'','','Party From which you return received Payment','party'),(324,'DR','Bank OD,Bank Account',NULL,'','',1,1,1,85,'','','Bank Account (And Actual Amount Received In Bank)','bank'),(325,'DR','Rebate & Discount Allowed',NULL,'','Rebate & Discount Allowed',0,0,0,85,'','','Any Discount Given','discount'),(326,'DR','Tax Receivable',NULL,'','',1,1,0,85,'','TAX Receivable','Any Tax Deducted from Party - 1','tax1'),(327,'DR','Tax Receivable',NULL,'','',1,1,0,85,'','TAX Receivable','Any Tax Deducted from Party - 2','tax2'),(328,'DR','Tax Receivable',NULL,'','',1,1,0,85,'','TAX Receivable','Any Tax Deducted from Party - 3','tax3'),(329,'DR','Other Expenses',NULL,'','',1,1,1,85,'','','Any External Deduction on payment transfer','external_deduction'),(330,'DR','Salary (Indirect)',NULL,'','Salary',0,0,0,86,'','Salary','Due salary amount','salary'),(331,'CR','Sundry Creditor',NULL,'','',1,1,0,86,'','Employee','Employee','salarytocreditor'),(332,'CR','Tax Payable',NULL,'','',1,1,0,86,'','Tax Payable','TDS cost deduction from salary(if applied)','tax'),(333,'CR','Provision For Employee Benefits',NULL,'','Employee PF',0,1,0,86,'','Provision Fund','Employee\'s Provident Fund Amount (Actual Amount Deduct)','employeebenefitaccounts-1'),(334,'CR','Provision For Employee Benefits',NULL,'','ESIC',0,1,0,86,'','Provision Fund','ESIC Amount (Actual Amount Deduct)','employeebenefitaccounts-2'),(335,'CR','Provision For Employee Benefits',NULL,'','Employer PF',0,1,0,86,'','Provision Fund','Employer\'s Provident Fund Amount (Compnay\'s Part)','employeebenefitaccounts-3'),(336,'CR','Provision For Employee Benefits',NULL,'','',1,1,0,86,'','Provision Fund','Employee\'s Other Benefit Amount (Actual Amount Deduct)','employeebenefitaccounts-4'),(337,'DR','Sundry Creditor',NULL,'','',1,1,0,87,'','Employee','SalaryToEmployee','employeesalaryaccount'),(338,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,87,'','','Bank Account (And Actual Deduct Amount)','bank'),(339,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,87,'','','Cash Account (Cash In hand) - Actual Amount Paid','cash'),(340,'DR','Other Expenses',NULL,'','',1,1,0,88,'','Indirect Expenses','Expense -1 (for ex - rent, commission etc.)','expense1'),(341,'DR','Other Expenses',NULL,'','',1,1,0,88,'','Indirect Expenses','Expense -2 (for ex - rent, commission etc.)','expense2'),(342,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,88,'','','Cash Account ( And Cash In Hand)','cash'),(343,'DR','Bank OD,Bank Account',NULL,'','',1,1,1,89,'','','Bank Account (And Actual Amount Deposited)','bank'),(344,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,89,'','','Cash Account ( And Cash decreased from business)','cash'),(345,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,90,'','','Bank Account (Same As Above Transaction)','bank'),(346,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,90,'','','Bank Charge -1 (& Charges applied)','bank-charges1'),(347,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,90,'','','Bank Charge -2 (& Charges applied)','bank-charges2'),(348,'DR','Other Expenses',NULL,'','Interest On OD',0,0,0,91,'','Expenses Type','Interest applied on od & bank amount decreased','interest-on-overdraft'),(349,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,91,'','Bank','Bank Account (particular bank account in which, amount deduct for interest on od)','bank'),(350,'DR','Loans And Advances From Related Parties (Long Term),Sundry Creditor',NULL,'','',1,0,1,92,'','','Party or Entity Name you paid to','party'),(351,'CR','Bank OD,Bank Account',NULL,'','',1,1,1,92,'','','Bank Account (And Actual Amount Paid From Bank)','bank'),(352,'DR','Bank Charges Expenses',NULL,'','',1,1,0,93,'','','Bank Charge -1 (& Charges applied)','bank-charges1'),(353,'DR','Bank Charges Expenses',NULL,'','',1,1,0,93,'','','Bank Charge -2 (& Charges applied)','bank-charges2'),(354,'CR','Bank OD,Bank Account',NULL,'','',1,1,1,93,'','','Bank Account (And Actual Deduct Amount)','bank'),(355,'DR','Other Expenses',NULL,'','',1,1,0,94,'','Other Expenses','Office Expense -1 (for ex - mobile bill, electricity bill, stationery etc.)','officeexpense1'),(356,'DR','Other Expenses',NULL,'','',1,1,0,94,'','Indirect Expenses','Office Expense -2 (for ex - mobile bill, electricity bill, stationery etc.)','officeexpense2'),(357,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,94,'','','Cash Account ( And Cash In Hand)','cash'),(358,'CR','Sundry Creditor,Sundry Debtor',NULL,'','',1,0,1,95,'','','Party From which you received Payment','party'),(359,'DR','Cash In Hand',NULL,'','Cash Account',0,0,0,95,'','','Cash Account (And Actual Amount Received In Cash)','cash'),(360,'DR','Rebate & Discount Allowed',NULL,'','Rebate & Discount Allowed',0,0,0,95,'','','Any Discount Given','discount'),(361,'DR','Tax Receivable',NULL,'','',1,1,0,95,'','TAX Receivable','Any Tax Deducted from Party - 1','tax1'),(362,'DR','Tax Receivable',NULL,'','',1,1,0,95,'','TAX Receivable','Any Tax Deducted from Party - 2','tax2'),(363,'DR','Tax Receivable',NULL,'','',1,1,0,95,'','TAX Receivable','Any Tax Deducted from Party - 3','tax3'),(364,'DR','Tax Receivable',NULL,'','',1,1,1,95,'','','Any External Deduction on payment transfer','external_deduction'),(365,'CR','Share Capital',NULL,'','Capital Account',0,0,0,96,'','Capital Account','Capital ','capital'),(366,'CR','Share Capital',NULL,'','',1,1,0,96,'','Party Name','Party Capital Account','capitalfromparty'),(367,'DR','Bank OD,Bank Account',NULL,'','',1,1,0,96,'','Bank','Bank Account (And Actual Received Amount)','bank'),(368,'DR','Cash In Hand',NULL,'','Cash Account',0,0,0,96,'','','Cash Account ( And Cash In Hand)','cash'),(369,'DR','Sundry Creditor',NULL,'','',1,0,1,97,'','','Party you paid to','party'),(370,'CR','Bank OD,Bank Account',NULL,'','',1,1,1,97,'','','Bank Account (And Actual Amount Paid From Bank)','bank'),(371,'CR','Rebate & Discount Received',NULL,'','Rebate & Discount Received',0,0,0,97,'','','Discount Received','discount'),(372,'CR','Tax Payable',NULL,'','',1,1,0,97,'','TAX Payable','Any Tax Deducted by You - 1','tax1'),(373,'CR','Tax Payable',NULL,'','',1,1,0,97,'','TAX Payable','Any Tax Deducted by You - 2','tax2'),(374,'CR','Tax Payable',NULL,'','',1,1,0,97,'','TAX Payable','Any Tax Deducted by You - 3','tax3'),(375,'DR','Bank Charges Expenses',NULL,'','Bank Charges',1,1,0,97,'','','Any Bank Charges Applied','bank-charges'),(376,'DR','Cash In Hand',NULL,'','Cash Account',0,0,0,98,'','','Cash Account (Cash In hand) - Actual Amount Paid','cash'),(377,'DR','Tax Payable',NULL,'','',1,1,0,98,'','Tax Payable','TDS cost deduction from salary(if applied)','tax'),(378,'DR','Bank Account',NULL,'','Your Default Bank Account',1,1,0,98,'','','Bank Account (And Actual Deduct Amount)','bank'),(379,'CR','Dedcution From Employees',NULL,'Other Income','Deduction From Employees',1,1,0,98,'Indirect Income','Deduction From Employees','Deduction From Employees','deduction'),(380,'CR','Other Expenses',NULL,'','',1,1,0,99,'','Indirect Expenses','Expense -1 (for ex - rent, commission etc.)','expense1'),(381,'CR','Other Expenses',NULL,'','',1,1,0,99,'','Indirect Expenses','Expense -2 (for ex - rent, commission etc.)','expense2'),(382,'DR','Deffered Payment Liabilities',NULL,'','Outstanding Expenses',0,1,0,99,'','Outstanding Expenses','Expense due & it being outstanding expenses','expensedue'),(383,'DR','Bank OD,Bank Account',NULL,'','',1,1,1,100,'','','Bank Account (And Actual Received Amount)','bank'),(384,'DR','Cash In Hand',NULL,'','Cash Account',0,0,0,100,'','','Cash Account ( And Cash In Hand)','cash'),(385,'CR','Loans And Advances From Related Parties (Long Term)',NULL,'','',1,1,0,100,'','','Party Or Entity Name','party'),(386,'DR','Plant & Equipment,Furniture & Fixtures,Computers & Printers,Vehicles,Office Equipment,Others (Tangible Assets),Land (Appreciable),Building (Depreciable)',NULL,'','',1,1,1,101,'','','Asset (like machinery, furniture, building or computers etc.)','fixedasset-1'),(387,'DR','Plant & Equipment,Furniture & Fixtures,Computers & Printers,Vehicles,Office Equipment,Others (Tangible Assets),Land (Appreciable),Building (Depreciable)',NULL,'','',1,1,1,101,'','','Asset (like machinery, furniture, building or computers etc.)','fixedasset-2'),(388,'DR','Plant & Equipment,Furniture & Fixtures,Computers & Printers,Vehicles,Office Equipment,Others (Tangible Assets),Land (Appreciable),Building (Depreciable)',NULL,'','',1,1,1,101,'','','Asset (like machinery, furniture, building or computers etc.)','fixedasset-3'),(389,'CR','Rebate & Discount Received',NULL,'','',1,1,1,101,'','','Discount recieved on purchasing of asset (like machinery, furniture or computers etc.)','discount'),(390,'CR','Cash In Hand',NULL,'','Cash Account',0,0,1,101,'','','Cash Account ( And Cash In Hand)','cash'),(391,'CR','Bank OD,Bank Account',NULL,'','',1,1,1,101,'','','Bank Account (And Actual Deduct Amount)','bank'),(392,'CR','Sundry Creditor',NULL,'','',1,1,1,101,'','','Party or Entity Name you paid to','creditor'),(393,'DR','Tax Payable',NULL,'','Tax Account',1,1,0,102,'','','Tax Name -1 (which is paid by you to government ) ','tax1'),(394,'CR','Bank OD,Bank Account',NULL,'','',1,1,0,102,'','','Bank Account, which you using to pay tax','bank'),(395,'DR','Tax Payable',NULL,'','Tax Account',1,1,0,102,'','','Tax Name -2 (which is paid by you to government )','tax 2'),(396,'DR','Tax Payable',NULL,'','Tax Account',1,1,0,102,'','','Tax Name -3 (which is paid by you to government )','tax 3'),(397,'DR','Salary (Indirect)',NULL,'','Salary',0,0,0,103,'','Salary','Due salary amount','salary'),(398,'CR','Sundry Creditor',NULL,'','SalaryProvision',1,1,0,103,'','Salary Provision','Salary Provision','salarytopay'),(399,'CR','Tax Payable',NULL,'','',1,1,0,103,'','Tax Payable','TDS cost deduction from salary(if applied)','tax'),(400,'CR','Provision For Employee Benefits',NULL,'','Employee PF',0,1,0,103,'','Provision Fund','Employee\'s Provident Fund Amount (Actual Amount Deduct)','employeebenefitaccounts-1'),(401,'CR','Provision For Employee Benefits',NULL,'','ESIC',0,1,0,103,'','Provision Fund','ESIC Amount (Actual Amount Deduct)','employeebenefitaccounts-2'),(402,'CR','Provision For Employee Benefits',NULL,'','Employer PF',0,1,0,103,'','Provision Fund','Employer\'s Provident Fund Amount (Compnay\'s Part)','employeebenefitaccounts-3'),(403,'CR','Provision For Employee Benefits',NULL,'','',1,1,0,103,'','Provision Fund','Employee\'s Other Benefit Amount (Actual Amount Deduct)','employeebenefitaccounts-4'),(404,'DR','Deffered Payment Liabilities',NULL,'','Outstanding Expenses',0,1,0,104,'','Indirect Expenses','Payment against due expenses','expenseduepayment'),(405,'CR','Cash In Hand',NULL,'','Cash Account',0,0,0,104,'','','Cash Account ( And Cash In Hand)','cash');
/*!40000 ALTER TABLE `custom_account_entries_templates_transaction_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_account_entries_templates_transactions`
--

DROP TABLE IF EXISTS `custom_account_entries_templates_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_account_entries_templates_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_account_entries_templates_transactions`
--

LOCK TABLES `custom_account_entries_templates_transactions` WRITE;
/*!40000 ALTER TABLE `custom_account_entries_templates_transactions` DISABLE KEYS */;
INSERT INTO `custom_account_entries_templates_transactions` VALUES (70,'Bank Charges Deduction ',55,'BankCharges'),(71,'Payment Paid Through Bank Against Office Expenses',56,'BankPaid'),(72,'Return Payment From Bank To Party',57,'BankPaid'),(73,'Bank Charges Deduction',57,'BankCharges'),(74,'Payment Received In Bank',58,'BankReceipt'),(75,'Bank Charges (If Any)',58,'BankCharges'),(76,'Cash Payment Paid',59,'CashPaid'),(77,'Cash Withdraw From Bank',60,'Contra'),(78,'Bank Charges (If Any)',60,'BankCharges'),(79,'Payment Through Bank Or Cash Against Salary Due',61,'SalaryPaid'),(80,'Payment Paid Against Salary',62,'SalaryPaid'),(81,'Payment Paid Against Reimbursement',63,'ReimbursementPaid'),(82,'Payment Received In Bank',64,'BankReceipt'),(83,'Bank Charges (If Any)',64,'BankCharges'),(84,'Payment Received Via Cash',65,'CashReceipt'),(85,'Payment Return From Party Received In Bank',66,'BankReceipt'),(86,'Salary Due Entry',67,'SalaryDue'),(87,'Payment Through Bank Or Cash Against Salary Due',67,'SalaryPaid'),(88,'Cash Payment Paid Against Indirect Expenses',68,'CashPaid'),(89,'Cash Deposit in Bank',69,'Contra'),(90,'Bank Charges (If Any)',69,'BankCharges'),(91,'Bank Amount Deduction For Interest On OD',70,'InterestPaid'),(92,'Payment Paid From Bank',71,'PaymentLoan'),(93,'Bank Charges Deduction',71,'BankPaid'),(94,'Cash Payment Paid Against Office Expenses',72,'CashPaid'),(95,'Payment Received Via Cash',73,'CashReceipt'),(96,'Business start(capital investment)',74,'CapitalInvestment'),(97,'Payment Paid From Bank',75,'BankPaid'),(98,'Deduction money received from employees',76,'DeductionReceived'),(99,'Expenses Being Due For Business',77,'ExpnesesDue'),(100,'Loan money recieved in cash or bank',78,'LoanReciept'),(101,'Purchasing Of Fixed Asset In Cash Or Credit',79,'Asset Purchased'),(102,'Bank Payment Against Tax Payable',80,'BankPaid'),(103,'Salary Due Entry',81,'SalaryDue'),(104,'Cash Payment(For Due Expenses)',82,'CashPaid');
/*!40000 ALTER TABLE `custom_account_entries_templates_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_form`
--

DROP TABLE IF EXISTS `custom_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `submit_button_name` varchar(255) DEFAULT NULL,
  `form_layout` varchar(255) DEFAULT NULL,
  `custom_form_layout_path` varchar(255) DEFAULT NULL,
  `recieve_email` tinyint(4) DEFAULT NULL,
  `recipient_email` varchar(255) DEFAULT NULL,
  `auto_reply` tinyint(4) DEFAULT NULL,
  `message_body` text,
  `email_subject` text,
  `emailsetting_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_form`
--

LOCK TABLES `custom_form` WRITE;
/*!40000 ALTER TABLE `custom_form` DISABLE KEYS */;
INSERT INTO `custom_form` VALUES (1,'Custom Form','Submit','empty','',0,'',0,'','',NULL,'2017-07-31 12:17:43',143988,'Custom_Form','Active');
/*!40000 ALTER TABLE `custom_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_form_field`
--

DROP TABLE IF EXISTS `custom_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_form_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_form_id` int(11) DEFAULT NULL,
  `value` text,
  `is_mandatory` tinyint(4) DEFAULT NULL,
  `hint` text,
  `placeholder` text,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auto_reply` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_form_field`
--

LOCK TABLES `custom_form_field` WRITE;
/*!40000 ALTER TABLE `custom_form_field` DISABLE KEYS */;
INSERT INTO `custom_form_field` VALUES (1,1,'',1,'','Full Name','full_name','line',0),(2,1,'',0,'','Phone Number','phone_number','line',0),(3,1,'',1,'','* Department','department','line',0),(4,1,'',1,'','* Doctor','doctor','line',0),(5,1,'',1,'','* DD/MM/YY','date','DatePicker',0),(6,1,'',1,'','* What ails you?','message','text',0);
/*!40000 ALTER TABLE `custom_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_form_submission`
--

DROP TABLE IF EXISTS `custom_form_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_form_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_form_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_form_submission`
--

LOCK TABLES `custom_form_submission` WRITE;
/*!40000 ALTER TABLE `custom_form_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_form_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `contact_id` int(11) NOT NULL,
  `billing_address` varchar(255) DEFAULT '',
  `billing_city` varchar(45) DEFAULT NULL,
  `billing_state_id` int(11) DEFAULT NULL,
  `billing_country_id` int(11) DEFAULT NULL,
  `billing_pincode` varchar(45) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT '',
  `shipping_city` varchar(45) DEFAULT NULL,
  `shipping_state_id` int(11) DEFAULT NULL,
  `shipping_country_id` int(11) DEFAULT NULL,
  `shipping_pincode` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tin_no` varchar(255) DEFAULT '',
  `pan_no` varchar(255) DEFAULT '',
  `currency_id` int(11) DEFAULT NULL,
  `same_as_billing_address` tinyint(4) DEFAULT NULL,
  `is_designer` tinyint(4) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `gstin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`),
  KEY `currency_id` (`currency_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield_association`
--

DROP TABLE IF EXISTS `customfield_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield_association` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `customfield_generic_id` int(11) DEFAULT NULL,
  `can_effect_stock` tinyint(4) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_optional` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `customfield_generic_id` (`customfield_generic_id`) USING BTREE,
  KEY `department_id` (`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield_association`
--

LOCK TABLES `customfield_association` WRITE;
/*!40000 ALTER TABLE `customfield_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfield_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield_generic`
--

DROP TABLE IF EXISTS `customfield_generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield_generic` (
  `name` varchar(255) NOT NULL,
  `display_type` varchar(255) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sequence_order` int(11) DEFAULT NULL,
  `is_filterable` tinyint(4) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `is_system` tinyint(4) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sequence_order` (`sequence_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield_generic`
--

LOCK TABLES `customfield_generic` WRITE;
/*!40000 ALTER TABLE `customfield_generic` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfield_generic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield_value`
--

DROP TABLE IF EXISTS `customfield_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `customfield_association_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `highlight_it` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemcustomassociation_id` (`customfield_association_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield_value`
--

LOCK TABLES `customfield_value` WRITE;
/*!40000 ALTER TABLE `customfield_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfield_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduction`
--

DROP TABLE IF EXISTS `deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `amount` decimal(14,6) DEFAULT NULL,
  `narration` text,
  `received_amount` decimal(14,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction`
--

LOCK TABLES `deduction` WRITE;
/*!40000 ALTER TABLE `deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `document_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `production_level` int(11) DEFAULT NULL,
  `is_system` tinyint(4) DEFAULT '0',
  `is_outsourced` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `simultaneous_no_process_allowed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (6127,'Company',1,1,0,40,NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designer_font`
--

DROP TABLE IF EXISTS `designer_font`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designer_font` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `regular_file_id` int(11) DEFAULT NULL,
  `bold_file_id` int(11) DEFAULT NULL,
  `italic_file_id` int(11) DEFAULT NULL,
  `bold_italic_file_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designer_font`
--

LOCK TABLES `designer_font` WRITE;
/*!40000 ALTER TABLE `designer_font` DISABLE KEYS */;
/*!40000 ALTER TABLE `designer_font` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designer_image_category`
--

DROP TABLE IF EXISTS `designer_image_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designer_image_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_library` tinyint(4) DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `epan_id` (`epan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designer_image_category`
--

LOCK TABLES `designer_image_category` WRITE;
/*!40000 ALTER TABLE `designer_image_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `designer_image_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designer_images`
--

DROP TABLE IF EXISTS `designer_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designer_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designer_category_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `designer_category_id` (`designer_category_id`) USING BTREE,
  KEY `epan_id` (`epan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designer_images`
--

LOCK TABLES `designer_images` WRITE;
/*!40000 ALTER TABLE `designer_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `designer_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_voucher`
--

DROP TABLE IF EXISTS `discount_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `updated_by_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `no_of_person` int(11) NOT NULL,
  `one_user_how_many_time` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `on_category_id` int(11) DEFAULT NULL,
  `on` varchar(255) DEFAULT NULL,
  `include_sub_category` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `based_on` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_voucher`
--

LOCK TABLES `discount_voucher` WRITE;
/*!40000 ALTER TABLE `discount_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_voucher_condition`
--

DROP TABLE IF EXISTS `discount_voucher_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_voucher_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discountvoucher_id` int(11) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_voucher_condition`
--

LOCK TABLES `discount_voucher_condition` WRITE;
/*!40000 ALTER TABLE `discount_voucher_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_voucher_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_voucher_used`
--

DROP TABLE IF EXISTS `discount_voucher_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_voucher_used` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qsp_master_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discountvoucher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_voucher_used`
--

LOCK TABLES `discount_voucher_used` WRITE;
/*!40000 ALTER TABLE `discount_voucher_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_voucher_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch_barcode`
--

DROP TABLE IF EXISTS `dispatch_barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispatch_barcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_used` tinyint(4) DEFAULT NULL,
  `related_document_id` int(11) DEFAULT NULL,
  `related_document_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_barcode`
--

LOCK TABLES `dispatch_barcode` WRITE;
/*!40000 ALTER TABLE `dispatch_barcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatch_barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `sub_type` varchar(45) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `search_string` text,
  PRIMARY KEY (`id`),
  KEY `fk_document_epan1_idx` (`epan_id`),
  FULLTEXT KEY `search_string` (`search_string`)
) ENGINE=InnoDB AUTO_INCREMENT=6142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (6127,0,'Department',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','Active','  Company'),(6128,0,'Post',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','Active','  CEO 10:00:00 18:00:00'),(6129,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  Default MarketingCategory All'),(6130,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  Active Affiliate MarketingCategory All'),(6131,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  InActive Affiliate MarketingCategory All'),(6132,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  Active Employee MarketingCategory All'),(6133,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  InActive Employee MarketingCategory All'),(6134,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  Active Customer MarketingCategory All'),(6135,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  InActive Customer MarketingCategory All'),(6136,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  Active Supplier MarketingCategory All'),(6137,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  InActive Supplier MarketingCategory All'),(6138,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  Active OutSourceParty MarketingCategory All'),(6139,0,'MarketingCategory',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','All','  InActive OutSourceParty MarketingCategory All'),(6140,0,'Newsletter',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','Draft','  Empty Newsletter No Content No Content Draft'),(6141,0,'Currency',NULL,NULL,'2017-07-28 14:31:45',NULL,'2017-07-28 14:31:45','Active','  Default Currency Currency Active');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_share`
--

DROP TABLE IF EXISTS `document_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `shared_by_id` int(11) NOT NULL,
  `shared_to_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `shared_type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `can_edit` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL,
  `can_share` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Folder id` (`folder_id`) USING BTREE,
  KEY `File id` (`file_id`) USING BTREE,
  KEY `department` (`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_share`
--

LOCK TABLES `document_share` WRITE;
/*!40000 ALTER TABLE `document_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailsetting`
--

DROP TABLE IF EXISTS `emailsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailsetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `created_by_id` varchar(255) NOT NULL,
  `email_transport` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `email_host` varchar(255) DEFAULT NULL,
  `email_port` varchar(244) DEFAULT NULL,
  `email_username` varchar(255) DEFAULT NULL,
  `email_password` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `email_reply_to` varchar(255) DEFAULT NULL,
  `email_reply_to_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `smtp_auto_reconnect` int(11) DEFAULT NULL,
  `email_threshold` int(11) DEFAULT NULL,
  `emails_in_BCC` int(11) DEFAULT NULL,
  `last_emailed_at` datetime DEFAULT NULL,
  `email_sent_in_this_minute` int(11) DEFAULT NULL,
  `bounce_imap_email_host` varchar(255) DEFAULT NULL,
  `bounce_imap_email_port` varchar(255) DEFAULT NULL,
  `return_path` varchar(255) DEFAULT NULL,
  `bounce_imap_email_password` varchar(255) DEFAULT NULL,
  `bounce_imap_flags` varchar(255) DEFAULT NULL,
  `is_support_email` tinyint(4) DEFAULT NULL,
  `imap_email_host` varchar(255) DEFAULT NULL,
  `imap_email_port` varchar(255) DEFAULT NULL,
  `imap_email_username` varchar(255) DEFAULT NULL,
  `imap_email_password` varchar(255) DEFAULT NULL,
  `imap_flags` varchar(255) DEFAULT NULL,
  `auto_reply` tinyint(4) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_body` longtext,
  `denied_email_subject` varchar(255) DEFAULT NULL,
  `denied_email_body` text,
  `footer` text,
  `is_imap_enabled` tinyint(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mass_mail` tinyint(4) unsigned DEFAULT NULL,
  `signature` text,
  `email_threshold_per_month` int(11) DEFAULT NULL,
  `last_email_fetched_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailsetting`
--

LOCK TABLES `emailsetting` WRITE;
/*!40000 ALTER TABLE `emailsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `contact_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `notified_till` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_date` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `contract_date` date DEFAULT NULL,
  `leaving_date` date DEFAULT NULL,
  `attandance_mode` varchar(255) DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `finacial_permit_limit` int(11) DEFAULT NULL,
  `remark` longtext,
  `graphical_report_id` int(11) DEFAULT NULL,
  `salary_payment_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_contact1_idx` (`contact_id`),
  KEY `fk_employee_post1_idx` (`post_id`),
  KEY `department_id` (`department_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (143988,6128,6127,0,60,NULL,'2017-07-28',NULL,NULL,'Web Login',NULL,NULL,NULL,NULL,NULL,'monthly');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_app_associations`
--

DROP TABLE IF EXISTS `employee_app_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_app_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `installed_app_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_app_associations`
--

LOCK TABLES `employee_app_associations` WRITE;
/*!40000 ALTER TABLE `employee_app_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_app_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attandance`
--

DROP TABLE IF EXISTS `employee_attandance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attandance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `is_holiday` tinyint(4) DEFAULT NULL,
  `working_unit_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`employee_id`,`from_date`),
  KEY `employee_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3819 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attandance`
--

LOCK TABLES `employee_attandance` WRITE;
/*!40000 ALTER TABLE `employee_attandance` DISABLE KEYS */;
INSERT INTO `employee_attandance` VALUES (3816,143988,'2017-07-28 11:52:27',NULL,1,'1'),(3817,143988,'2017-07-29 09:05:36',NULL,1,'1'),(3818,143988,'2017-07-31 04:40:38',NULL,1,'1');
/*!40000 ALTER TABLE `employee_attandance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_documents`
--

DROP TABLE IF EXISTS `employee_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `employee_document_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_document_id` (`employee_document_id`) USING BTREE,
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_documents`
--

LOCK TABLES `employee_documents` WRITE;
/*!40000 ALTER TABLE `employee_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave`
--

DROP TABLE IF EXISTS `employee_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_id` int(11) DEFAULT NULL,
  `emp_leave_allow_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave`
--

LOCK TABLES `employee_leave` WRITE;
/*!40000 ALTER TABLE `employee_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave_allow`
--

DROP TABLE IF EXISTS `employee_leave_allow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leave_allow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `leave_id` int(11) DEFAULT NULL,
  `is_yearly_carried_forward` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_unit_carried_forward` tinyint(4) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `allow_over_quota` tinyint(4) DEFAULT NULL,
  `no_of_leave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave_allow`
--

LOCK TABLES `employee_leave_allow` WRITE;
/*!40000 ALTER TABLE `employee_leave_allow` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave_allow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_movement`
--

DROP TABLE IF EXISTS `employee_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `movement_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `narration` text,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11025 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_movement`
--

LOCK TABLES `employee_movement` WRITE;
/*!40000 ALTER TABLE `employee_movement` DISABLE KEYS */;
INSERT INTO `employee_movement` VALUES (11022,143988,'2017-07-28 11:52:27',NULL,'In',NULL,NULL),(11023,143988,'2017-07-29 09:05:36',NULL,'In',NULL,NULL),(11024,143988,'2017-07-31 04:40:38',NULL,'In',NULL,NULL);
/*!40000 ALTER TABLE `employee_movement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_row`
--

DROP TABLE IF EXISTS `employee_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_abstract_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,4) DEFAULT NULL,
  `presents` int(11) DEFAULT NULL,
  `paid_leaves` int(11) DEFAULT NULL,
  `unpaid_leaves` int(11) DEFAULT NULL,
  `absents` int(11) DEFAULT NULL,
  `paiddays` int(11) DEFAULT NULL,
  `total_working_days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_row`
--

LOCK TABLES `employee_row` WRITE;
/*!40000 ALTER TABLE `employee_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary`
--

DROP TABLE IF EXISTS `employee_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `salary_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary`
--

LOCK TABLES `employee_salary` WRITE;
/*!40000 ALTER TABLE `employee_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epan`
--

DROP TABLE IF EXISTS `epan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `xepan_template_id` varchar(255) DEFAULT NULL,
  `is_published` varchar(255) DEFAULT NULL,
  `extra_info` text,
  `aliases` text,
  `epan_dbversion` varchar(255) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_epan_category_id` (`epan_category_id`),
  CONSTRAINT `fk_epan_category_id` FOREIGN KEY (`epan_category_id`) REFERENCES `epan_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epan`
--

LOCK TABLES `epan` WRITE;
/*!40000 ALTER TABLE `epan` DISABLE KEYS */;
INSERT INTO `epan` VALUES (76,2,'megakit','Trial',NULL,'2017-07-28 14:31:45','Epan',NULL,NULL,NULL,NULL,'179',NULL);
/*!40000 ALTER TABLE `epan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epan_category`
--

DROP TABLE IF EXISTS `epan_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epan_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epan_category`
--

LOCK TABLES `epan_category` WRITE;
/*!40000 ALTER TABLE `epan_category` DISABLE KEYS */;
INSERT INTO `epan_category` VALUES (2,'default');
/*!40000 ALTER TABLE `epan_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epan_config`
--

DROP TABLE IF EXISTS `epan_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epan_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `value` longtext,
  `application` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epan_config`
--

LOCK TABLES `epan_config` WRITE;
/*!40000 ALTER TABLE `epan_config` DISABLE KEYS */;
INSERT INTO `epan_config` VALUES (83,NULL,'ADMIN_LOGIN_RELATED_EMAIL','{\"597afdfb2a271\":{\"reset_subject\":\"Password Reset Request\",\"reset_body\":\"\\n<style type=\\\"text\\/css\\\">\\n  <!--\\n  \\/* CLIENT-SPECIFIC STYLES *\\/\\n  body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} \\/* Prevent WebKit and Windows mobile changing default text sizes *\\/\\n  table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} \\/* Remove spacing between tables in Outlook 2007 and up *\\/\\n  img{-ms-interpolation-mode: bicubic;} \\/* Allow smoother rendering of resized image in Internet Explorer *\\/\\n  \\/* RESET STYLES *\\/\\n  img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\\n  table{border-collapse: collapse !important;}\\n  body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\\n  \\/* iOS BLUE LINKS *\\/\\n  a[x-apple-data-detectors] {\\n  color: inherit !important;\\n  text-decoration: none !important;\\n  font-size: inherit !important;\\n  font-family: inherit !important;\\n  font-weight: inherit !important;\\n  line-height: inherit !important;\\n  }\\n  \\/* MOBILE STYLES *\\/\\n  @media screen and (max-width: 525px) {\\n  \\/* ALLOWS FOR FLUID TABLES *\\/\\n  .wrapper {\\n  width: 100% !important;\\n  max-width: 100% !important;\\n  }\\n  \\/* ADJUSTS LAYOUT OF LOGO IMAGE *\\/\\n  .logo img {\\n  margin: 0 auto !important;\\n  }\\n  \\/* USE THESE CLASSES TO HIDE CONTENT ON MOBILE *\\/\\n  .mobile-hide {\\n  display: none !important;\\n  }\\n  .img-max {\\n  max-width: 100% !important;\\n  width: 100% !important;\\n  height: auto !important;\\n  }\\n  \\/* FULL-WIDTH TABLES *\\/\\n  .responsive-table {\\n  width: 100% !important;\\n  }\\n  \\/* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE *\\/\\n  .padding {\\n  padding: 10px 5% 15px 5% !important;\\n  }\\n  .padding-meta {\\n  padding: 30px 5% 0px 5% !important;\\n  text-align: center;\\n  }\\n  .padding-copy {\\n  padding: 10px 5% 10px 5% !important;\\n  text-align: center;\\n  }\\n  .no-padding {\\n  padding: 0 !important;\\n  }\\n  .section-padding {\\n  padding: 50px 15px 50px 15px !important;\\n  }\\n  \\/* ADJUST BUTTONS ON MOBILE *\\/\\n  .mobile-button-container {\\n  margin: 0 auto;\\n  width: 100% !important;\\n  }\\n  .mobile-button {\\n  padding: 15px !important;\\n  border: 0 !important;\\n  font-size: 16px !important;\\n  display: block !important;\\n  }\\n  }\\n  \\/* ANDROID CENTER FIX *\\/\\n  div[style*=\\\"margin: 16px 0;\\\"] { margin: 0 !important; }\\n  -->\\n<\\/style>\\n<!--if gte mso 12\\nstyle(type=\'text\\/css\').\\n  .mso-right {\\n  padding-left: 20px;\\n  }\\n-->\\n<!-- HIDDEN PREHEADER TEXT-->\\n<div style=\\\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\\\"><\\/div>\\n<!-- HEADER-->\\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n  <tbody>\\n    <tr style=\\\"height: 165px;\\\">\\n      <td style=\\\"height: 165px;\\\" align=\\\"center\\\" bgcolor=\\\"#34495E\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <table style=\\\"max-width: 500px;\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"wrapper\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"padding: 15px 0;\\\" align=\\\"center\\\" valign=\\\"top\\\" class=\\\"logo\\\"><a href=\\\"#\\\" target=\\\"_blank\\\"><img caption=\\\"false\\\" alt=\\\"Logo\\\" src=\\\"blob:http:\\/\\/192.168.1.101\\/da82434c-a7ab-4271-b88d-42173fb7e58e\\\" style=\\\"display: block; font-family: Helvetica, Arial, sans-serif; color: #ffffff; font-size: 16px;\\\" border=\\\"0\\\" height=\\\"120\\\" width=\\\"180\\\"\\/><\\/a><\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 10px;\\\">\\n      <td style=\\\"padding: 70px 15px; height: 10px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\" class=\\\"section-padding\\\">\\n        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"500\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td>\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                  <tbody>\\n                    <tr>\\n                      <td>\\n                        <!-- COPY-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Password Reset Request<\\/td>\\n                            <\\/tr>\\n                            <tr>\\n                              <td style=\\\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica,Arial,sans-serif; color: #666666; text-align: left;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">{$username},<br\\/>We received a request to reset the password for your account.<br\\/>Here\'s a one-time login link for you to use to access your account and set a new password. Click on the below button to proceed.  <br\\/>This link will expire after a day and nothing will happen if it\'s not used.<br\\/>See you!<\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                    <tr>\\n                      <td align=\\\"center\\\">\\n                        <!-- BULLETPROOF BUTTON-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"padding-top: 25px;\\\" align=\\\"center\\\" class=\\\"padding\\\">\\n                                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"mobile-button-container\\\">\\n                                  <tbody>\\n                                    <tr>\\n                                      <td style=\\\"border-radius: 3px;\\\" align=\\\"center\\\" bgcolor=\\\"#256F9C\\\"><a href=\\\"{$click_here}\\\" target=\\\"_blank\\\" style=\\\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #256F9C; display: inline-block;\\\" class=\\\"mobile-button\\\">Click Here \\u2192<\\/a><\\/td>\\n                                    <\\/tr>\\n                                  <\\/tbody>\\n                                <\\/table>\\n                              <\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                  <\\/tbody>\\n                <\\/table>\\n              <\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 20px;\\\">\\n      <td style=\\\"padding: 20px 0px; height: 20px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <!-- UNSUBSCRIBE COPY-->\\n        <table style=\\\"max-width: 500px;\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color: #666666;\\\" align=\\\"center\\\">+91-9782300801,  +91-8875191258 <a href=\\\"mailto:support@epan.in|\\\">support@epan.in<\\/a> <a href=\\\"mailto:info@epan.in\\\">info@epan.in<\\/a><br\\/>A Xavoc Technocrats Pvt. Ltd. Product<\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n  <\\/tbody>\\n<\\/table>\",\"update_subject\":\"Password Update\",\"update_body\":\"\\n<style type=\\\"text\\/css\\\">\\n  <!--\\n  \\/* CLIENT-SPECIFIC STYLES *\\/\\n  body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} \\/* Prevent WebKit and Windows mobile changing default text sizes *\\/\\n  table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} \\/* Remove spacing between tables in Outlook 2007 and up *\\/\\n  img{-ms-interpolation-mode: bicubic;} \\/* Allow smoother rendering of resized image in Internet Explorer *\\/\\n  \\/* RESET STYLES *\\/\\n  img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\\n  table{border-collapse: collapse !important;}\\n  body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\\n  \\/* iOS BLUE LINKS *\\/\\n  a[x-apple-data-detectors] {\\n  color: inherit !important;\\n  text-decoration: none !important;\\n  font-size: inherit !important;\\n  font-family: inherit !important;\\n  font-weight: inherit !important;\\n  line-height: inherit !important;\\n  }\\n  \\/* MOBILE STYLES *\\/\\n  @media screen and (max-width: 525px) {\\n  \\/* ALLOWS FOR FLUID TABLES *\\/\\n  .wrapper {\\n  width: 100% !important;\\n  max-width: 100% !important;\\n  }\\n  \\/* ADJUSTS LAYOUT OF LOGO IMAGE *\\/\\n  .logo img {\\n  margin: 0 auto !important;\\n  }\\n  \\/* USE THESE CLASSES TO HIDE CONTENT ON MOBILE *\\/\\n  .mobile-hide {\\n  display: none !important;\\n  }\\n  .img-max {\\n  max-width: 100% !important;\\n  width: 100% !important;\\n  height: auto !important;\\n  }\\n  \\/* FULL-WIDTH TABLES *\\/\\n  .responsive-table {\\n  width: 100% !important;\\n  }\\n  \\/* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE *\\/\\n  .padding {\\n  padding: 10px 5% 15px 5% !important;\\n  }\\n  .padding-meta {\\n  padding: 30px 5% 0px 5% !important;\\n  text-align: center;\\n  }\\n  .padding-copy {\\n  padding: 10px 5% 10px 5% !important;\\n  text-align: center;\\n  }\\n  .no-padding {\\n  padding: 0 !important;\\n  }\\n  .section-padding {\\n  padding: 50px 15px 50px 15px !important;\\n  }\\n  \\/* ADJUST BUTTONS ON MOBILE *\\/\\n  .mobile-button-container {\\n  margin: 0 auto;\\n  width: 100% !important;\\n  }\\n  .mobile-button {\\n  padding: 15px !important;\\n  border: 0 !important;\\n  font-size: 16px !important;\\n  display: block !important;\\n  }\\n  }\\n  \\/* ANDROID CENTER FIX *\\/\\n  div[style*=\\\"margin: 16px 0;\\\"] { margin: 0 !important; }\\n  -->\\n<\\/style>\\n<!--if gte mso 12\\nstyle(type=\'text\\/css\').\\n  .mso-right {\\n  padding-left: 20px;\\n  }\\n-->\\n<!-- HIDDEN PREHEADER TEXT-->\\n<div style=\\\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\\\"><\\/div>\\n<!-- HEADER-->\\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n  <tbody>\\n    <tr style=\\\"height: 165px;\\\">\\n      <td style=\\\"height: 165px;\\\" align=\\\"center\\\" bgcolor=\\\"#34495E\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <table style=\\\"max-width: 500px;\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"wrapper\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"padding: 15px 0;\\\" align=\\\"center\\\" valign=\\\"top\\\" class=\\\"logo\\\"><a href=\\\"#\\\" target=\\\"_blank\\\"><img caption=\\\"false\\\" alt=\\\"Logo\\\" src=\\\"blob:http:\\/\\/192.168.1.101\\/da82434c-a7ab-4271-b88d-42173fb7e58e\\\" style=\\\"display: block; font-family: Helvetica, Arial, sans-serif; color: #ffffff; font-size: 16px;\\\" border=\\\"0\\\" height=\\\"120\\\" width=\\\"180\\\"\\/><\\/a><\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 10px;\\\">\\n      <td style=\\\"padding: 70px 15px; height: 10px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\" class=\\\"section-padding\\\">\\n        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"500\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td>\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                  <tbody>\\n                    <tr>\\n                      <td>\\n                        <!-- COPY-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Password Updated<\\/td>\\n                            <\\/tr>\\n                            <tr>\\n                              <td style=\\\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica,Arial,sans-serif; color: #666666; text-align: left;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Hi {$username},<br\\/>Your password has been successfully updated.<br\\/>If you are not the person who changed the password, please report it<br\\/>to superuser\\/authority and make sure to reset your password again.<br\\/><strong>Note: Don\'t share your password with anybody.<\\/strong><br\\/><br\\/>Greetings!<\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                    <tr>\\n                      <td align=\\\"center\\\">\\n                        <!-- BULLETPROOF BUTTON-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"padding-top: 25px;\\\" align=\\\"center\\\" class=\\\"padding\\\"><\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                  <\\/tbody>\\n                <\\/table>\\n              <\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 20px;\\\">\\n      <td style=\\\"padding: 20px 0px; height: 20px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <!-- UNSUBSCRIBE COPY-->\\n        <table style=\\\"max-width: 500px;\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color: #666666;\\\" align=\\\"center\\\">+91-9782300801,  +91-8875191258 <a href=\\\"mailto:support@epan.in|\\\">support@epan.in<\\/a> <a href=\\\"mailto:info@epan.in\\\">info@epan.in<\\/a><br\\/>A Xavoc Technocrats Pvt. Ltd. Product<\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n  <\\/tbody>\\n<\\/table>\"}}','communication'),(84,NULL,'FRONTEND_LOGIN_RELATED_EMAIL','{\"597afe012715e\":{\"user_registration_type\":\"self_activated\",\"registration_subject\":\"Registration mail\",\"registration_body\":\"\\n<style type=\\\"text\\/css\\\">\\n  <!--\\n  \\/* CLIENT-SPECIFIC STYLES *\\/\\n  body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} \\/* Prevent WebKit and Windows mobile changing default text sizes *\\/\\n  table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} \\/* Remove spacing between tables in Outlook 2007 and up *\\/\\n  img{-ms-interpolation-mode: bicubic;} \\/* Allow smoother rendering of resized image in Internet Explorer *\\/\\n  \\/* RESET STYLES *\\/\\n  img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\\n  table{border-collapse: collapse !important;}\\n  body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\\n  \\/* iOS BLUE LINKS *\\/\\n  a[x-apple-data-detectors] {\\n  color: inherit !important;\\n  text-decoration: none !important;\\n  font-size: inherit !important;\\n  font-family: inherit !important;\\n  font-weight: inherit !important;\\n  line-height: inherit !important;\\n  }\\n  \\/* MOBILE STYLES *\\/\\n  @media screen and (max-width: 525px) {\\n  \\/* ALLOWS FOR FLUID TABLES *\\/\\n  .wrapper {\\n  width: 100% !important;\\n  max-width: 100% !important;\\n  }\\n  \\/* ADJUSTS LAYOUT OF LOGO IMAGE *\\/\\n  .logo img {\\n  margin: 0 auto !important;\\n  }\\n  \\/* USE THESE CLASSES TO HIDE CONTENT ON MOBILE *\\/\\n  .mobile-hide {\\n  display: none !important;\\n  }\\n  .img-max {\\n  max-width: 100% !important;\\n  width: 100% !important;\\n  height: auto !important;\\n  }\\n  \\/* FULL-WIDTH TABLES *\\/\\n  .responsive-table {\\n  width: 100% !important;\\n  }\\n  \\/* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE *\\/\\n  .padding {\\n  padding: 10px 5% 15px 5% !important;\\n  }\\n  .padding-meta {\\n  padding: 30px 5% 0px 5% !important;\\n  text-align: center;\\n  }\\n  .padding-copy {\\n  padding: 10px 5% 10px 5% !important;\\n  text-align: center;\\n  }\\n  .no-padding {\\n  padding: 0 !important;\\n  }\\n  .section-padding {\\n  padding: 50px 15px 50px 15px !important;\\n  }\\n  \\/* ADJUST BUTTONS ON MOBILE *\\/\\n  .mobile-button-container {\\n  margin: 0 auto;\\n  width: 100% !important;\\n  }\\n  .mobile-button {\\n  padding: 15px !important;\\n  border: 0 !important;\\n  font-size: 16px !important;\\n  display: block !important;\\n  }\\n  }\\n  \\/* ANDROID CENTER FIX *\\/\\n  div[style*=\\\"margin: 16px 0;\\\"] { margin: 0 !important; }\\n  -->\\n<\\/style>\\n<!--if gte mso 12\\nstyle(type=\'text\\/css\').\\n  .mso-right {\\n  padding-left: 20px;\\n  }\\n-->\\n<!-- HIDDEN PREHEADER TEXT-->\\n<div style=\\\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\\\"><\\/div>\\n<!-- HEADER-->\\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n  <tbody>\\n    <tr style=\\\"height: 165px;\\\">\\n      <td style=\\\"height: 165px;\\\" align=\\\"center\\\" bgcolor=\\\"#34495E\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <table style=\\\"max-width: 500px;\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"wrapper\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"padding: 15px 0;\\\" align=\\\"center\\\" valign=\\\"top\\\" class=\\\"logo\\\"><a href=\\\"#\\\" target=\\\"_blank\\\"><img caption=\\\"false\\\" alt=\\\"xEpan\\\" src=\\\"blob:http:\\/\\/192.168.1.101\\/c55f4326-1714-47eb-9fd0-2f47ee8cf798\\\" style=\\\"display: block; font-family: Helvetica, Arial, sans-serif; color: #ffffff; font-size: 16px;\\\" border=\\\"0\\\" height=\\\"120\\\" width=\\\"180\\\"\\/><\\/a><\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 10px;\\\">\\n      <td style=\\\"padding: 70px 15px; height: 10px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\" class=\\\"section-padding\\\">\\n        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"500\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td>\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                  <tbody>\\n                    <tr>\\n                      <td>\\n                        <!-- COPY-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">It\'s Great To Have You<\\/td>\\n                            <\\/tr>\\n                            <tr>\\n                              <td style=\\\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica,Arial,sans-serif; color: #666666; text-align: left;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Dear member,<br\\/>Thank you for registering. {$email_id}! It\\u2019s great to have you in the community.<br\\/>Before you can take advantage of all the great features your account comes with, you\\u2019ll need to verify your email address. <br\\/>Click the button below to verify your email and experience the best.<\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                    <tr>\\n                      <td align=\\\"center\\\">\\n                        <!-- BULLETPROOF BUTTON-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"padding-top: 25px;\\\" align=\\\"center\\\" class=\\\"padding\\\">\\n                                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"mobile-button-container\\\">\\n                                  <tbody>\\n                                    <tr>\\n                                      <td style=\\\"border-radius: 3px;\\\" align=\\\"center\\\" bgcolor=\\\"#256F9C\\\"><a href=\\\"{$url}\\\" target=\\\"_blank\\\" style=\\\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #256F9C; display: inline-block;\\\" class=\\\"mobile-button\\\">Click Here \\u2192<\\/a><\\/td>\\n                                    <\\/tr>\\n                                  <\\/tbody>\\n                                <\\/table>\\n                              <\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                  <\\/tbody>\\n                <\\/table>\\n              <\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 20px;\\\">\\n      <td style=\\\"padding: 20px 0px; height: 20px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <!-- UNSUBSCRIBE COPY-->\\n        <table style=\\\"max-width: 500px;\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color: #666666;\\\" align=\\\"center\\\">+91-9782300801,  +91-8875191258 <a href=\\\"mailto:support@epan.in|\\\">support@epan.in<\\/a> <a href=\\\"mailto:info@epan.i\\\">info@epan.in<\\/a><br\\/>A Xavoc Technocrats Pvt. Ltd. Product<\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n  <\\/tbody>\\n<\\/table>\",\"reset_subject\":\"Reset password\",\"reset_body\":\"\\n<style type=\\\"text\\/css\\\">\\n  <!--\\n  \\/* CLIENT-SPECIFIC STYLES *\\/\\n  body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} \\/* Prevent WebKit and Windows mobile changing default text sizes *\\/\\n  table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} \\/* Remove spacing between tables in Outlook 2007 and up *\\/\\n  img{-ms-interpolation-mode: bicubic;} \\/* Allow smoother rendering of resized image in Internet Explorer *\\/\\n  \\/* RESET STYLES *\\/\\n  img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\\n  table{border-collapse: collapse !important;}\\n  body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\\n  \\/* iOS BLUE LINKS *\\/\\n  a[x-apple-data-detectors] {\\n  color: inherit !important;\\n  text-decoration: none !important;\\n  font-size: inherit !important;\\n  font-family: inherit !important;\\n  font-weight: inherit !important;\\n  line-height: inherit !important;\\n  }\\n  \\/* MOBILE STYLES *\\/\\n  @media screen and (max-width: 525px) {\\n  \\/* ALLOWS FOR FLUID TABLES *\\/\\n  .wrapper {\\n  width: 100% !important;\\n  max-width: 100% !important;\\n  }\\n  \\/* ADJUSTS LAYOUT OF LOGO IMAGE *\\/\\n  .logo img {\\n  margin: 0 auto !important;\\n  }\\n  \\/* USE THESE CLASSES TO HIDE CONTENT ON MOBILE *\\/\\n  .mobile-hide {\\n  display: none !important;\\n  }\\n  .img-max {\\n  max-width: 100% !important;\\n  width: 100% !important;\\n  height: auto !important;\\n  }\\n  \\/* FULL-WIDTH TABLES *\\/\\n  .responsive-table {\\n  width: 100% !important;\\n  }\\n  \\/* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE *\\/\\n  .padding {\\n  padding: 10px 5% 15px 5% !important;\\n  }\\n  .padding-meta {\\n  padding: 30px 5% 0px 5% !important;\\n  text-align: center;\\n  }\\n  .padding-copy {\\n  padding: 10px 5% 10px 5% !important;\\n  text-align: center;\\n  }\\n  .no-padding {\\n  padding: 0 !important;\\n  }\\n  .section-padding {\\n  padding: 50px 15px 50px 15px !important;\\n  }\\n  \\/* ADJUST BUTTONS ON MOBILE *\\/\\n  .mobile-button-container {\\n  margin: 0 auto;\\n  width: 100% !important;\\n  }\\n  .mobile-button {\\n  padding: 15px !important;\\n  border: 0 !important;\\n  font-size: 16px !important;\\n  display: block !important;\\n  }\\n  }\\n  \\/* ANDROID CENTER FIX *\\/\\n  div[style*=\\\"margin: 16px 0;\\\"] { margin: 0 !important; }\\n  -->\\n<\\/style>\\n<!--if gte mso 12\\nstyle(type=\'text\\/css\').\\n  .mso-right {\\n  padding-left: 20px;\\n  }\\n-->\\n<!-- HIDDEN PREHEADER TEXT-->\\n<div style=\\\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\\\"><\\/div>\\n<!-- HEADER-->\\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n  <tbody>\\n    <tr style=\\\"height: 165px;\\\">\\n      <td style=\\\"height: 165px;\\\" align=\\\"center\\\" bgcolor=\\\"#34495E\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <table style=\\\"max-width: 500px;\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"wrapper\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"padding: 15px 0;\\\" align=\\\"center\\\" valign=\\\"top\\\" class=\\\"logo\\\"><a href=\\\"#\\\" target=\\\"_blank\\\"><img caption=\\\"false\\\" alt=\\\"xEpan\\\" src=\\\"blob:http:\\/\\/192.168.1.101\\/da82434c-a7ab-4271-b88d-42173fb7e58e\\\" style=\\\"display: block; font-family: Helvetica, Arial, sans-serif; color: #ffffff; font-size: 16px;\\\" border=\\\"0\\\" height=\\\"120\\\" width=\\\"180\\\"\\/><\\/a><\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 10px;\\\">\\n      <td style=\\\"padding: 70px 15px; height: 10px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\" class=\\\"section-padding\\\">\\n        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"500\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td>\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                  <tbody>\\n                    <tr>\\n                      <td>\\n                        <!-- COPY-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Password Reset Request<\\/td>\\n                            <\\/tr>\\n                            <tr>\\n                              <td style=\\\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica,Arial,sans-serif; color: #666666; text-align: left;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">{$username},<br\\/>We received a request to reset the password for your account.<br\\/>Here\'s a one-time login link for you to use to access your account and set a new password. Click on the below button to proceed.  <br\\/>This link will expire after a day and nothing will happen if it\'s not used.<br\\/>See you!<\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                    <tr>\\n                      <td align=\\\"center\\\">\\n                        <!-- BULLETPROOF BUTTON-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"padding-top: 25px;\\\" align=\\\"center\\\" class=\\\"padding\\\">\\n                                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"mobile-button-container\\\">\\n                                  <tbody>\\n                                    <tr>\\n                                      <td style=\\\"border-radius: 3px;\\\" align=\\\"center\\\" bgcolor=\\\"#256F9C\\\"><a href=\\\"{$url}\\\" target=\\\"_blank\\\" style=\\\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #256F9C; display: inline-block;\\\" class=\\\"mobile-button\\\">Click Here \\u2192<\\/a><\\/td>\\n                                    <\\/tr>\\n                                  <\\/tbody>\\n                                <\\/table>\\n                              <\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                  <\\/tbody>\\n                <\\/table>\\n              <\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 20px;\\\">\\n      <td style=\\\"padding: 20px 0px; height: 20px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <!-- UNSUBSCRIBE COPY-->\\n        <table style=\\\"max-width: 500px;\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color: #666666;\\\" align=\\\"center\\\">+91-9782300801,  +91-8875191258 <a href=\\\"mailto:support@epan.in|\\\">support@epan.in<\\/a> <a href=\\\"mailto:info@epan.i\\\">info@epan.in<\\/a><br\\/>A Xavoc Technocrats Pvt. Ltd. Product<\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n  <\\/tbody>\\n<\\/table>\",\"verification_subject\":\"Account validated\",\"verification_body\":\"\\n<style type=\\\"text\\/css\\\">\\n  <!--\\n  \\/* CLIENT-SPECIFIC STYLES *\\/\\n  body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} \\/* Prevent WebKit and Windows mobile changing default text sizes *\\/\\n  table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} \\/* Remove spacing between tables in Outlook 2007 and up *\\/\\n  img{-ms-interpolation-mode: bicubic;} \\/* Allow smoother rendering of resized image in Internet Explorer *\\/\\n  \\/* RESET STYLES *\\/\\n  img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\\n  table{border-collapse: collapse !important;}\\n  body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\\n  \\/* iOS BLUE LINKS *\\/\\n  a[x-apple-data-detectors] {\\n  color: inherit !important;\\n  text-decoration: none !important;\\n  font-size: inherit !important;\\n  font-family: inherit !important;\\n  font-weight: inherit !important;\\n  line-height: inherit !important;\\n  }\\n  \\/* MOBILE STYLES *\\/\\n  @media screen and (max-width: 525px) {\\n  \\/* ALLOWS FOR FLUID TABLES *\\/\\n  .wrapper {\\n  width: 100% !important;\\n  max-width: 100% !important;\\n  }\\n  \\/* ADJUSTS LAYOUT OF LOGO IMAGE *\\/\\n  .logo img {\\n  margin: 0 auto !important;\\n  }\\n  \\/* USE THESE CLASSES TO HIDE CONTENT ON MOBILE *\\/\\n  .mobile-hide {\\n  display: none !important;\\n  }\\n  .img-max {\\n  max-width: 100% !important;\\n  width: 100% !important;\\n  height: auto !important;\\n  }\\n  \\/* FULL-WIDTH TABLES *\\/\\n  .responsive-table {\\n  width: 100% !important;\\n  }\\n  \\/* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE *\\/\\n  .padding {\\n  padding: 10px 5% 15px 5% !important;\\n  }\\n  .padding-meta {\\n  padding: 30px 5% 0px 5% !important;\\n  text-align: center;\\n  }\\n  .padding-copy {\\n  padding: 10px 5% 10px 5% !important;\\n  text-align: center;\\n  }\\n  .no-padding {\\n  padding: 0 !important;\\n  }\\n  .section-padding {\\n  padding: 50px 15px 50px 15px !important;\\n  }\\n  \\/* ADJUST BUTTONS ON MOBILE *\\/\\n  .mobile-button-container {\\n  margin: 0 auto;\\n  width: 100% !important;\\n  }\\n  .mobile-button {\\n  padding: 15px !important;\\n  border: 0 !important;\\n  font-size: 16px !important;\\n  display: block !important;\\n  }\\n  }\\n  \\/* ANDROID CENTER FIX *\\/\\n  div[style*=\\\"margin: 16px 0;\\\"] { margin: 0 !important; }\\n  -->\\n<\\/style>\\n<!--if gte mso 12\\nstyle(type=\'text\\/css\').\\n  .mso-right {\\n  padding-left: 20px;\\n  }\\n-->\\n<!-- HIDDEN PREHEADER TEXT-->\\n<div style=\\\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\\\"><\\/div>\\n<!-- HEADER-->\\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n  <tbody>\\n    <tr style=\\\"height: 165px;\\\">\\n      <td style=\\\"height: 165px;\\\" align=\\\"center\\\" bgcolor=\\\"#34495E\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <table style=\\\"max-width: 500px;\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"wrapper\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"padding: 15px 0;\\\" align=\\\"center\\\" valign=\\\"top\\\" class=\\\"logo\\\"><a href=\\\"#\\\" target=\\\"_blank\\\"><img caption=\\\"false\\\" alt=\\\"xEpan\\\" src=\\\"blob:http:\\/\\/192.168.1.101\\/da82434c-a7ab-4271-b88d-42173fb7e58e\\\" style=\\\"display: block; font-family: Helvetica, Arial, sans-serif; color: #ffffff; font-size: 16px;\\\" border=\\\"0\\\" height=\\\"120\\\" width=\\\"180\\\"\\/><\\/a><\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 10px;\\\">\\n      <td style=\\\"padding: 70px 15px; height: 10px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\" class=\\\"section-padding\\\">\\n        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"500\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td>\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                  <tbody>\\n                    <tr>\\n                      <td>\\n                        <!-- COPY-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Account Validated<\\/td>\\n                            <\\/tr>\\n                            <tr>\\n                              <td style=\\\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica,Arial,sans-serif; color: #666666; text-align: left;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">{$username},<br\\/>Your account has been successfully validated.<br\\/>Now you can enjoy the services by just logging in your account.<br\\/>Don\'t forgot to try before you buy a service ! We provide <strong>14 day free<\\/strong><strong>trial.<br\\/><\\/strong><br\\/>Greetings!<\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                    <tr>\\n                      <td align=\\\"center\\\">\\n                        <!-- BULLETPROOF BUTTON-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"padding-top: 25px;\\\" align=\\\"center\\\" class=\\\"padding\\\"><\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                  <\\/tbody>\\n                <\\/table>\\n              <\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 20px;\\\">\\n      <td style=\\\"padding: 20px 0px; height: 20px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <!-- UNSUBSCRIBE COPY-->\\n        <table style=\\\"max-width: 500px;\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color: #666666;\\\" align=\\\"center\\\">+91-9782300801,  +91-8875191258 <a href=\\\"mailto:support@epan.in|\\\">support@epan.in<\\/a> <a href=\\\"mailto:info@epan.in\\\">info@epan.in<\\/a><br\\/>A Xavoc Technocrats Pvt. Ltd. Product<\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n  <\\/tbody>\\n<\\/table>\",\"update_subject\":\"Password updated\",\"update_body\":\"\\n<style type=\\\"text\\/css\\\">\\n  <!--\\n  \\/* CLIENT-SPECIFIC STYLES *\\/\\n  body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} \\/* Prevent WebKit and Windows mobile changing default text sizes *\\/\\n  table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} \\/* Remove spacing between tables in Outlook 2007 and up *\\/\\n  img{-ms-interpolation-mode: bicubic;} \\/* Allow smoother rendering of resized image in Internet Explorer *\\/\\n  \\/* RESET STYLES *\\/\\n  img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\\n  table{border-collapse: collapse !important;}\\n  body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\\n  \\/* iOS BLUE LINKS *\\/\\n  a[x-apple-data-detectors] {\\n  color: inherit !important;\\n  text-decoration: none !important;\\n  font-size: inherit !important;\\n  font-family: inherit !important;\\n  font-weight: inherit !important;\\n  line-height: inherit !important;\\n  }\\n  \\/* MOBILE STYLES *\\/\\n  @media screen and (max-width: 525px) {\\n  \\/* ALLOWS FOR FLUID TABLES *\\/\\n  .wrapper {\\n  width: 100% !important;\\n  max-width: 100% !important;\\n  }\\n  \\/* ADJUSTS LAYOUT OF LOGO IMAGE *\\/\\n  .logo img {\\n  margin: 0 auto !important;\\n  }\\n  \\/* USE THESE CLASSES TO HIDE CONTENT ON MOBILE *\\/\\n  .mobile-hide {\\n  display: none !important;\\n  }\\n  .img-max {\\n  max-width: 100% !important;\\n  width: 100% !important;\\n  height: auto !important;\\n  }\\n  \\/* FULL-WIDTH TABLES *\\/\\n  .responsive-table {\\n  width: 100% !important;\\n  }\\n  \\/* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE *\\/\\n  .padding {\\n  padding: 10px 5% 15px 5% !important;\\n  }\\n  .padding-meta {\\n  padding: 30px 5% 0px 5% !important;\\n  text-align: center;\\n  }\\n  .padding-copy {\\n  padding: 10px 5% 10px 5% !important;\\n  text-align: center;\\n  }\\n  .no-padding {\\n  padding: 0 !important;\\n  }\\n  .section-padding {\\n  padding: 50px 15px 50px 15px !important;\\n  }\\n  \\/* ADJUST BUTTONS ON MOBILE *\\/\\n  .mobile-button-container {\\n  margin: 0 auto;\\n  width: 100% !important;\\n  }\\n  .mobile-button {\\n  padding: 15px !important;\\n  border: 0 !important;\\n  font-size: 16px !important;\\n  display: block !important;\\n  }\\n  }\\n  \\/* ANDROID CENTER FIX *\\/\\n  div[style*=\\\"margin: 16px 0;\\\"] { margin: 0 !important; }\\n  -->\\n<\\/style>\\n<!--if gte mso 12\\nstyle(type=\'text\\/css\').\\n  .mso-right {\\n  padding-left: 20px;\\n  }\\n-->\\n<!-- HIDDEN PREHEADER TEXT-->\\n<div style=\\\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\\\"><\\/div>\\n<!-- HEADER-->\\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n  <tbody>\\n    <tr style=\\\"height: 165px;\\\">\\n      <td style=\\\"height: 165px;\\\" align=\\\"center\\\" bgcolor=\\\"#34495E\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <table style=\\\"max-width: 500px;\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"wrapper\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"padding: 15px 0;\\\" align=\\\"center\\\" valign=\\\"top\\\" class=\\\"logo\\\"><a href=\\\"#\\\" target=\\\"_blank\\\"><img caption=\\\"false\\\" alt=\\\"xEpan\\\" src=\\\"blob:http:\\/\\/192.168.1.101\\/da82434c-a7ab-4271-b88d-42173fb7e58e\\\" style=\\\"display: block; font-family: Helvetica, Arial, sans-serif; color: #ffffff; font-size: 16px;\\\" border=\\\"0\\\" height=\\\"120\\\" width=\\\"180\\\"\\/><\\/a><\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 10px;\\\">\\n      <td style=\\\"padding: 70px 15px; height: 10px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\" class=\\\"section-padding\\\">\\n        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"500\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td>\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                  <tbody>\\n                    <tr>\\n                      <td>\\n                        <!-- COPY-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Password Updated<\\/td>\\n                            <\\/tr>\\n                            <tr>\\n                              <td style=\\\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica,Arial,sans-serif; color: #666666; text-align: left;\\\" align=\\\"center\\\" class=\\\"padding-copy\\\">Hi {$username},<br\\/>Your password has been successfully updated.<br\\/>If you are not the person who changed the password, please make<br\\/>sure to reset your password again.<br\\/><strong>Note: Don\'t share your password with anybody.<\\/strong><br\\/><br\\/>Greetings!<\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                    <tr>\\n                      <td align=\\\"center\\\">\\n                        <!-- BULLETPROOF BUTTON-->\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\n                          <tbody>\\n                            <tr>\\n                              <td style=\\\"padding-top: 25px;\\\" align=\\\"center\\\" class=\\\"padding\\\"><\\/td>\\n                            <\\/tr>\\n                          <\\/tbody>\\n                        <\\/table>\\n                      <\\/td>\\n                    <\\/tr>\\n                  <\\/tbody>\\n                <\\/table>\\n              <\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n      <\\/td>\\n    <\\/tr>\\n    <tr style=\\\"height: 20px;\\\">\\n      <td style=\\\"padding: 20px 0px; height: 20px;\\\" align=\\\"center\\\" bgcolor=\\\"#ffffff\\\">\\n        <!--if (gte mso 9)|(IE)\\n        table(align=\'center\', border=\'0\', cellspacing=\'0\', cellpadding=\'0\', width=\'500\')\\n          tr\\n            td(align=\'center\', valign=\'top\', width=\'500\')\\n        -->\\n        <!-- UNSUBSCRIBE COPY-->\\n        <table style=\\\"max-width: 500px;\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\" class=\\\"responsive-table\\\">\\n          <tbody>\\n            <tr>\\n              <td style=\\\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color: #666666;\\\" align=\\\"center\\\">+91-9782300801,  +91-8875191258 <a href=\\\"mailto:support@epan.in|\\\">support@epan.in<\\/a> <a href=\\\"mailto:info@epan.i\\\">info@epan.in<\\/a><br\\/>A Xavoc Technocrats Pvt. Ltd. Product<\\/td>\\n            <\\/tr>\\n          <\\/tbody>\\n        <\\/table>\\n        <!--if (gte mso 9)|(IE)-->\\n      <\\/td>\\n    <\\/tr>\\n  <\\/tbody>\\n<\\/table>\"}}','communication'),(85,NULL,'FIRM_DEFAULT_CURRENCY_ID','{\"597afe0368495\":{\"currency_id\":\"6141\"}}','accounts');
/*!40000 ALTER TABLE `epan_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `company_branch` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `document_id` int(11) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Folder id` (`folder_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestore_file`
--

DROP TABLE IF EXISTS `filestore_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestore_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filestore_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'File type',
  `filestore_volume_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Volume',
  `original_filename` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Original Name',
  `filename` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Internal Name',
  `filesize` int(11) NOT NULL DEFAULT '0' COMMENT 'File size',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Deleted file',
  PRIMARY KEY (`id`),
  KEY `fk_filestore_file_filestore_type1_idx` (`filestore_type_id`),
  KEY `fk_filestore_file_filestore_volume1_idx` (`filestore_volume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6525 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestore_file`
--

LOCK TABLES `filestore_file` WRITE;
/*!40000 ALTER TABLE `filestore_file` DISABLE KEYS */;
INSERT INTO `filestore_file` VALUES (6523,606,2,'13.jpg','0/20170728120708_0_13.jpg',170799,0),(6524,606,2,'14.jpg','0/20170728120720_0_14.jpg',103079,0);
/*!40000 ALTER TABLE `filestore_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestore_image`
--

DROP TABLE IF EXISTS `filestore_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestore_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original File',
  `thumb_file_id` int(10) unsigned DEFAULT NULL COMMENT 'Thumbnail file',
  PRIMARY KEY (`id`),
  KEY `fk_filestore_image_filestore_file1_idx` (`original_file_id`),
  KEY `fk_filestore_image_filestore_file2_idx` (`thumb_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestore_image`
--

LOCK TABLES `filestore_image` WRITE;
/*!40000 ALTER TABLE `filestore_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `filestore_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestore_type`
--

DROP TABLE IF EXISTS `filestore_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestore_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Name',
  `mime_type` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'MIME type',
  `extension` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Filename extension',
  `allow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestore_type`
--

LOCK TABLES `filestore_type` WRITE;
/*!40000 ALTER TABLE `filestore_type` DISABLE KEYS */;
INSERT INTO `filestore_type` VALUES (606,'image/jpeg','image/jpeg','',1);
/*!40000 ALTER TABLE `filestore_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestore_volume`
--

DROP TABLE IF EXISTS `filestore_volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestore_volume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Volume name',
  `dirname` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Folder name',
  `total_space` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Total space (not implemented)',
  `used_space` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Used space (not implemented)',
  `stored_files_cnt` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Approximate count of stored files',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Volume enabled?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestore_volume`
--

LOCK TABLES `filestore_volume` WRITE;
/*!40000 ALTER TABLE `filestore_volume` DISABLE KEYS */;
INSERT INTO `filestore_volume` VALUES (2,'upload','',0,0,3,1);
/*!40000 ALTER TABLE `filestore_volume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower_task_association`
--

DROP TABLE IF EXISTS `follower_task_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follower_task_association` (
  `task_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower_task_association`
--

LOCK TABLES `follower_task_association` WRITE;
/*!40000 ALTER TABLE `follower_task_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `follower_task_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freelancer_cat_customer_asso`
--

DROP TABLE IF EXISTS `freelancer_cat_customer_asso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freelancer_cat_customer_asso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `freelancer_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freelancer_cat_customer_asso`
--

LOCK TABLES `freelancer_cat_customer_asso` WRITE;
/*!40000 ALTER TABLE `freelancer_cat_customer_asso` DISABLE KEYS */;
/*!40000 ALTER TABLE `freelancer_cat_customer_asso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freelancer_category`
--

DROP TABLE IF EXISTS `freelancer_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freelancer_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freelancer_category`
--

LOCK TABLES `freelancer_category` WRITE;
/*!40000 ALTER TABLE `freelancer_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `freelancer_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphical_report`
--

DROP TABLE IF EXISTS `graphical_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graphical_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permitted_post` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `is_system` tinyint(4) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphical_report`
--

LOCK TABLES `graphical_report` WRITE;
/*!40000 ALTER TABLE `graphical_report` DISABLE KEYS */;
INSERT INTO `graphical_report` VALUES (252,'AccountsReport',NULL,NULL,1,'Accounts analytical report '),(253,'DepartmentReport',NULL,NULL,1,'Employees department Performance depending upon task status, system use, hr performance , marketing and other factors'),(254,'MarketingReport',NULL,NULL,1,'Widgets includes : lead vs score count, opportunity graph, communication chart, etc.'),(255,'EmployeeReport',NULL,NULL,1,'consist widgets like employee attendance, task, follow up and performance reports widgets'),(256,'GlobalReport',NULL,NULL,1,'Global Performance depending upon task status, system use, hr performance , marketing and other factors'),(257,'MyReport',NULL,NULL,1,'Individual Employees Performance depending upon task status, system use, hr performance , marketing and other factors'),(258,'SalesReport',NULL,NULL,1,'contains analytics of sales ');
/*!40000 ALTER TABLE `graphical_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphical_report_widget`
--

DROP TABLE IF EXISTS `graphical_report_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graphical_report_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `graphical_report_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class_path` varchar(255) DEFAULT NULL,
  `col_width` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1791 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphical_report_widget`
--

LOCK TABLES `graphical_report_widget` WRITE;
/*!40000 ALTER TABLE `graphical_report_widget` DISABLE KEYS */;
INSERT INTO `graphical_report_widget` VALUES (1735,252,'Monthly Tax Information','xepan\\accounts\\Widget_MonthlyTaxes',12,1,1),(1736,253,'Department workforce available','xepan\\hr\\Widget_DepartmentAvailableWorkforce',4,2,1),(1737,253,'Department Average Work Hour','xepan\\hr\\Widget_DepartmentAverageWorkHour',6,1,1),(1738,253,'Department Employee Attendance','xepan\\hr\\Widget_DepartmentEmployeeAttendance',6,3,1),(1739,253,'Department Late Coming','xepan\\hr\\Widget_DepartmentLateComing',6,4,1),(1740,253,'Department Mass Communication Status','xepan\\marketing\\Widget_DepartmentMassCommunication',6,5,1),(1741,253,'Department communication','xepan\\marketing\\Widget_DepartmentCommunication',6,6,1),(1742,253,'Department Sales Status','xepan\\marketing\\Widget_DepartmentSaleStatus',12,7,1),(1743,253,'Department Accountable System Use','xepan\\projects\\Widget_DepartmentAccountableSystemUse',12,1000,1),(1744,254,'Lead VS Score','xepan\\marketing\\Widget_LeadAndScore',12,6,1),(1745,254,'Return On Investment','xepan\\marketing\\Widget_ROI',4,1,1),(1746,254,'Opportunity Pipeline','xepan\\marketing\\Widget_OpportunityPipeline',4,2,1),(1747,254,'Engagement By Channel','xepan\\marketing\\Widget_EngagementByChannel',4,3,1),(1748,254,'Employee Day To Day Communication','xepan\\marketing\\Widget_DayByDayCommunication',12,5,1),(1749,254,'Leads added','xepan\\base\\Widget_EmployeeContacts',12,7,1),(1750,254,'Leads Assigned','xepan\\marketing\\Widget_LeadsAssigned',12,8,1),(1751,255,'Employee Attendance','xepan\\hr\\Widget_EmployeeMovement',6,1,1),(1752,255,'Employee Average Working Hours','xepan\\hr\\Widget_AverageWorkHour',6,2,1),(1753,255,'Staff accountable system use','xepan\\projects\\Widget_AccountableSystemUse',12,5,1),(1754,255,'Contacts Added','xepan\\base\\Widget_EmployeeContacts',6,6,1),(1755,255,'Lead Assigned','xepan\\marketing\\Widget_LeadsAssigned',6,7,1),(1756,255,'Sales Status','xepan\\marketing\\Widget_SaleStaffStatus',6,8,1),(1757,255,'Sales Communication','xepan\\marketing\\Widget_SaleStaffCommunication',6,9,1),(1758,255,'Activity','xepan\\base\\Widget_EmployeeSpecificActivities',6,10,1),(1759,255,'Company mass Communication','xepan\\marketing\\Widget_GlobalMassCommunication',6,11,1),(1760,255,'Task','xepan\\projects\\Widget_TabularTask',6,12,1),(1761,255,'Followups','xepan\\projects\\Widget_GlobalFollowUps',6,13,1),(1762,255,'Timesheet','xepan\\projects\\Widget_EmployeeTimesheet',12,14,1),(1763,256,'Employees Attendance','xepan\\hr\\Widget_EmployeeMovement',6,1,1),(1764,256,'Available Workforce','xepan\\hr\\Widget_AvailableWorkforce',6,2,1),(1765,256,'Employees average working hours','xepan\\hr\\Widget_AverageWorkHour',6,3,1),(1766,256,'Employees average late arrivals','xepan\\hr\\Widget_TotalLateComing',6,4,1),(1767,256,'Staff accountable system use','xepan\\projects\\Widget_AccountableSystemUse',12,5,1),(1768,256,'Employees Day to Day communication','xepan\\marketing\\Widget_DayByDayCommunication',6,7,1),(1769,256,'Sales Staff Status','xepan\\marketing\\Widget_SaleStaffStatus',6,8,1),(1770,256,'Sales Staff Communication','xepan\\marketing\\Widget_SaleStaffCommunication',6,9,1),(1771,256,'Companies mass communication status','xepan\\marketing\\Widget_GlobalMassCommunication',12,10,1),(1772,256,'Global Activities','xepan\\base\\Widget_GlobalActivity',12,11,1),(1773,256,'Global Followups','xepan\\projects\\Widget_GlobalFollowUps',6,12,1),(1774,256,'Overdue Tasks','xepan\\projects\\Widget_OverdueTasks',6,13,1),(1775,257,'Todays Attendance','xepan\\hr\\Widget_MyTodaysAttendance',4,2,1),(1776,257,'Pending Tickets','xepan\\crm\\Widget_PendingTickets',1,9,1),(1777,257,'Tasks To Receive','xepan\\projects\\Widget_TaskToReceive',1,6,1),(1778,257,'My Mass Comunication','xepan\\marketing\\Widget_MyMassCommunication',6,1,1),(1779,257,'My average working hours','xepan\\hr\\Widget_MyAverageWorkHour',6,2,1),(1780,257,'My Late Arrivals','xepan\\hr\\Widget_MyLateComing',5,3,1),(1781,257,'Unread mails','xepan\\communication\\Widget_UnreadMails',1,9,1),(1782,257,'My day to day communication','xepan\\marketing\\Widget_MyDayByDayCommunication',5,4,1),(1783,257,'My sales status','xepan\\marketing\\Widget_MySaleStatus',6,5,1),(1784,257,'My Communication Graph','xepan\\marketing\\Widget_MyCommunication',5,7,1),(1785,257,'My Accountable System Use','xepan\\projects\\Widget_MyAccountableSystemUse',12,10,1),(1786,257,'My Activities','xepan\\base\\Widget_MyActivity',12,11,1),(1787,257,'My Tasks','xepan\\projects\\Widget_MyTask',6,12,1),(1788,257,'My Followups','xepan\\projects\\Widget_FollowUps',6,13,1),(1789,257,'My Communications','xepan\\hr\\Widget_MyCommunication',12,14,1),(1790,258,'Monthly Invoices','xepan\\commerce\\Widget_MonthlyInvoices',6,1,1);
/*!40000 ALTER TABLE `graphical_report_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installed_application`
--

DROP TABLE IF EXISTS `installed_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installed_application` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `installed_on` datetime DEFAULT NULL,
  `valid_till` datetime DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `application_id` (`application_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installed_application`
--

LOCK TABLES `installed_application` WRITE;
/*!40000 ALTER TABLE `installed_application` DISABLE KEYS */;
INSERT INTO `installed_application` VALUES (12,76,13,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(13,76,12,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(14,76,14,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(15,76,15,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(16,76,16,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(17,76,17,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(18,76,18,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(19,76,19,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(20,76,20,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1),(21,76,21,NULL,'2017-07-28 14:31:45','2017-07-28 14:31:45',1);
/*!40000 ALTER TABLE `installed_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_transaction_association`
--

DROP TABLE IF EXISTS `invoice_transaction_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_transaction_association` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `salesinvoice_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `exchange_rate` decimal(10,0) DEFAULT NULL,
  `exchange_amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`) USING BTREE,
  KEY `saleinvoice_id` (`salesinvoice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_transaction_association`
--

LOCK TABLES `invoice_transaction_association` WRITE;
/*!40000 ALTER TABLE `invoice_transaction_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_transaction_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip2location-lite-db11`
--

DROP TABLE IF EXISTS `ip2location-lite-db11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip2location-lite-db11` (
  `ip_from` int(11) DEFAULT NULL,
  `ip_to` int(11) DEFAULT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip2location-lite-db11`
--

LOCK TABLES `ip2location-lite-db11` WRITE;
/*!40000 ALTER TABLE `ip2location-lite-db11` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip2location-lite-db11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `document_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `original_price` decimal(14,2) DEFAULT NULL,
  `sale_price` decimal(14,2) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `description` text,
  `stock_availability` tinyint(4) DEFAULT NULL,
  `show_detail` tinyint(1) DEFAULT NULL,
  `show_price` tinyint(1) DEFAULT NULL,
  `display_sequence` int(11) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `is_feature` tinyint(1) DEFAULT NULL,
  `is_mostviewed` tinyint(1) DEFAULT NULL,
  `Item_enquiry_auto_reply` tinyint(1) DEFAULT NULL,
  `is_comment_allow` tinyint(1) DEFAULT NULL,
  `comment_api` varchar(255) DEFAULT NULL,
  `add_custom_button` tinyint(1) DEFAULT NULL,
  `custom_button_url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `tags` text,
  `is_designable` tinyint(1) DEFAULT NULL,
  `designs` longtext CHARACTER SET utf8,
  `is_party_publish` tinyint(1) DEFAULT NULL,
  `minimum_order_qty` int(11) DEFAULT NULL,
  `maximum_order_qty` int(11) DEFAULT NULL,
  `qty_unit_id` int(11) DEFAULT NULL,
  `is_attachment_allow` tinyint(1) DEFAULT NULL,
  `is_saleable` tinyint(1) DEFAULT NULL,
  `is_downloadable` tinyint(1) DEFAULT NULL,
  `is_rentable` tinyint(1) DEFAULT NULL,
  `is_enquiry_allow` tinyint(1) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT NULL,
  `negative_qty_allowed` varchar(255) DEFAULT NULL,
  `is_visible_sold` tinyint(1) DEFAULT NULL,
  `enquiry_send_to_admin` tinyint(1) DEFAULT NULL,
  `watermark_position` varchar(255) DEFAULT NULL,
  `watermark_opacity` varchar(255) DEFAULT NULL,
  `qty_from_set_only` tinyint(1) DEFAULT NULL,
  `custom_button_label` varchar(255) DEFAULT NULL,
  `is_servicable` tinyint(1) DEFAULT NULL,
  `is_purchasable` tinyint(1) DEFAULT NULL,
  `maintain_inventory` tinyint(1) DEFAULT NULL,
  `website_display` tinyint(1) DEFAULT NULL,
  `allow_negative_stock` tinyint(1) DEFAULT NULL,
  `is_productionable` tinyint(1) DEFAULT NULL,
  `warranty_days` int(11) DEFAULT NULL,
  `terms_and_conditions` text,
  `watermark_text` varchar(255) DEFAULT NULL,
  `duplicate_from_item_id` varchar(255) DEFAULT NULL,
  `is_allowuploadable` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designer_id` int(11) DEFAULT NULL,
  `is_dispatchable` tinyint(1) DEFAULT NULL,
  `item_specific_upload_hint` text,
  `upload_file_label` text,
  `to_customer_id` int(11) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `quantity_group` varchar(255) DEFAULT NULL,
  `upload_file_group` varchar(255) DEFAULT NULL,
  `is_renewable` tinyint(4) DEFAULT NULL,
  `remind_to` varchar(255) DEFAULT NULL,
  `renewable_value` int(11) DEFAULT NULL,
  `renewable_unit` varchar(255) DEFAULT NULL,
  `is_teller_made_item` tinyint(4) DEFAULT NULL,
  `minimum_stock_limit` int(11) DEFAULT NULL,
  `is_serializable` tinyint(4) DEFAULT NULL,
  `nominal_id` int(11) DEFAULT NULL,
  `is_package` int(11) DEFAULT NULL,
  `hsn_sac` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `duplicate_from_item_id` (`duplicate_from_item_id`) USING BTREE,
  KEY `to_customer_id` (`to_customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_department_association`
--

DROP TABLE IF EXISTS `item_department_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_department_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `can_redefine_qty` tinyint(4) NOT NULL,
  `can_redefine_item` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`) USING BTREE,
  KEY `item_id` (`item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_department_association`
--

LOCK TABLES `item_department_association` WRITE;
/*!40000 ALTER TABLE `item_department_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_department_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_department_consumption`
--

DROP TABLE IF EXISTS `item_department_consumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_department_consumption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `composition_item_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `custom_fields` longtext,
  `item_department_association_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `composition_item_id` (`composition_item_id`) USING BTREE,
  KEY `item_department_association_id` (`item_department_association_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_department_consumption`
--

LOCK TABLES `item_department_consumption` WRITE;
/*!40000 ALTER TABLE `item_department_consumption` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_department_consumption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_department_consumptionconstraint`
--

DROP TABLE IF EXISTS `item_department_consumptionconstraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_department_consumptionconstraint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_department_consumption_id` int(11) NOT NULL,
  `item_customfield_asso_id` int(11) NOT NULL,
  `item_customfield_value_id` int(11) NOT NULL,
  `item_customfield_id` int(11) NOT NULL,
  `item_customfield_name` varchar(255) NOT NULL,
  `item_customfield_value_name` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_department_consumptionconstraint`
--

LOCK TABLES `item_department_consumptionconstraint` WRITE;
/*!40000 ALTER TABLE `item_department_consumptionconstraint` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_department_consumptionconstraint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_image`
--

DROP TABLE IF EXISTS `item_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_image` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `customfield_value_id` int(11) DEFAULT NULL,
  `title` text,
  `alt_text` text,
  `auto_generated` tinyint(4) DEFAULT NULL,
  `sequence_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`) USING BTREE,
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `custom_field_value_id` (`customfield_value_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_image`
--

LOCK TABLES `item_image` WRITE;
/*!40000 ALTER TABLE `item_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_serial`
--

DROP TABLE IF EXISTS `item_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_serial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `is_return` tinyint(4) DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `purchase_invoice_id` int(11) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `sale_invoice_id` int(11) DEFAULT NULL,
  `dispatch_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `is_available` tinyint(4) DEFAULT NULL,
  `narration` text,
  `qsp_detail_id` int(11) DEFAULT NULL,
  `purchase_order_detail_id` int(11) DEFAULT NULL,
  `purchase_invoice_detail_id` int(11) DEFAULT NULL,
  `sale_order_detail_id` int(11) DEFAULT NULL,
  `sale_invoice_detail_id` int(11) DEFAULT NULL,
  `transaction_row_id` int(11) DEFAULT NULL,
  `dispatch_row_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_serial`
--

LOCK TABLES `item_serial` WRITE;
/*!40000 ALTER TABLE `item_serial` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_serial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_template_design`
--

DROP TABLE IF EXISTS `item_template_design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_template_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `last_modified` date DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `designs` longtext,
  `contact_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `contact_id` (`contact_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_template_design`
--

LOCK TABLES `item_template_design` WRITE;
/*!40000 ALTER TABLE `item_template_design` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_template_design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobcard`
--

DROP TABLE IF EXISTS `jobcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobcard` (
  `document_id` int(11) DEFAULT NULL,
  `outsourceparty_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `department_id` int(11) NOT NULL,
  `due_date` date DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `parent_jobcard_id` int(11) DEFAULT NULL,
  `assign_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `outsource_party_id` (`outsourceparty_id`) USING BTREE,
  KEY `department_id` (`department_id`) USING BTREE,
  KEY `oreder_item_id` (`order_item_id`) USING BTREE,
  KEY `parent_jobcard_id` (`parent_jobcard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobcard`
--

LOCK TABLES `jobcard` WRITE;
/*!40000 ALTER TABLE `jobcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobcard_detail`
--

DROP TABLE IF EXISTS `jobcard_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobcard_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` decimal(10,4) DEFAULT NULL,
  `parent_detail_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `jobcard_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_detail_id` (`parent_detail_id`) USING BTREE,
  KEY `jobcard_id` (`jobcard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobcard_detail`
--

LOCK TABLES `jobcard_detail` WRITE;
/*!40000 ALTER TABLE `jobcard_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobcard_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landingresponse`
--

DROP TABLE IF EXISTS `landingresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landingresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `opportunity_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `emailsetting_id` int(11) DEFAULT NULL,
  `social_user_id` int(11) DEFAULT NULL,
  `referrersite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`) USING BTREE,
  KEY `lead_id` (`contact_id`) USING BTREE,
  KEY `opportunity_id` (`opportunity_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landingresponse`
--

LOCK TABLES `landingresponse` WRITE;
/*!40000 ALTER TABLE `landingresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `landingresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead` (
  `contact_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_lead_contact1_idx` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead`
--

LOCK TABLES `lead` WRITE;
/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_category_association`
--

DROP TABLE IF EXISTS `lead_category_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_category_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` int(11) NOT NULL,
  `marketing_category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_id_3` (`lead_id`,`marketing_category_id`),
  KEY `lead_id` (`lead_id`),
  KEY `marketing_category_id` (`marketing_category_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_category_association`
--

LOCK TABLES `lead_category_association` WRITE;
/*!40000 ALTER TABLE `lead_category_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_category_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_category_association_1`
--

DROP TABLE IF EXISTS `lead_category_association_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_category_association_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` int(11) NOT NULL,
  `marketing_category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`) USING BTREE,
  KEY `marketing_category_id` (`marketing_category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_category_association_1`
--

LOCK TABLES `lead_category_association_1` WRITE;
/*!40000 ALTER TABLE `lead_category_association_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_category_association_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_template`
--

DROP TABLE IF EXISTS `leave_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_template`
--

LOCK TABLES `leave_template` WRITE;
/*!40000 ALTER TABLE `leave_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_template_detail`
--

DROP TABLE IF EXISTS `leave_template_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_template_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_template_id` int(11) DEFAULT NULL,
  `leave_id` int(11) DEFAULT NULL,
  `is_yearly_carried_forward` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_unit_carried_forward` tinyint(4) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `allow_over_quota` tinyint(4) DEFAULT NULL,
  `no_of_leave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_template_detail`
--

LOCK TABLES `leave_template_detail` WRITE;
/*!40000 ALTER TABLE `leave_template_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_template_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_yearly_carried_forward` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_unit_carried_forward` tinyint(4) DEFAULT NULL,
  `no_of_leave` decimal(10,0) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `allow_over_quota` tinyint(4) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger`
--

DROP TABLE IF EXISTS `ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ledger_type` varchar(255) DEFAULT NULL,
  `LedgerDisplayName` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `OpeningBalanceDr` double DEFAULT NULL,
  `OpeningBalanceCr` double DEFAULT NULL,
  `affectsBalanceSheet` tinyint(4) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `related_id` (`related_id`) USING BTREE,
  FULLTEXT KEY `search_string` (`name`,`ledger_type`,`LedgerDisplayName`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger`
--

LOCK TABLES `ledger` WRITE;
/*!40000 ALTER TABLE `ledger` DISABLE KEYS */;
INSERT INTO `ledger` VALUES (386,NULL,244,'Miscellaneous Expenses','Expenses','Miscellaneous Expenses',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(387,NULL,232,'Sales Account','Sales','Sales Account',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(388,NULL,229,'Purchase Account','Purchase','Purchase Account',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(389,NULL,252,'Round Account','Income','Round Account',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(390,NULL,175,'Tax Account','Tax','Tax Name',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(391,NULL,237,'Rebate & Discount Allowed','Discount','Discount Allowed',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(392,NULL,248,'Rebate & Discount Received','Discount','Discount Received',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(393,NULL,245,'Shipping Account','Expenses','Shipping Account',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(394,NULL,246,'Exchange Rate Different Loss','Expenses','Exchange Loss',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(395,NULL,253,'Exchange Rate Different Gain','Income','Exchange Gain',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(396,NULL,247,'Bank Charges','Bank Charges','Bank Charges',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(397,NULL,222,'Cash Account','Cash Account','Cash Account',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(398,NULL,220,'Your Default Bank Account','Bank','Your Default Bank Account',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(399,NULL,254,'Profit & Loss (Opening)','Profit & Loss (Opening)','Profit & Loss (Opening)',1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(400,NULL,239,'Salary','Salary',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(401,NULL,152,'Employee PF','Provision Fund',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(402,NULL,152,'ESIC','Provision Fund',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(403,NULL,152,'Employer PF','Provision Fund',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(404,NULL,255,'Reimbursement To Employees','Reimbursement(Legal Expenses)',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(405,NULL,243,'Interest On OD','Expenses Type',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(406,NULL,128,'Capital Account','Capital Account',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(407,NULL,256,'Deduction From Employees','Deduction From Employees',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(408,NULL,145,'Outstanding Expenses','Outstanding Expenses',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL),(409,NULL,176,'SalaryProvision','Salary Provision',NULL,1,0,0,1,'2017-07-28','2017-07-28',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodgement`
--

DROP TABLE IF EXISTS `lodgement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lodgement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,0) DEFAULT NULL,
  `currency` decimal(10,0) DEFAULT NULL,
  `exchange_rate` decimal(10,0) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `account_transaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_transaction_id` (`account_transaction_id`) USING BTREE,
  KEY `salesinvoice_id` (`invoice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodgement`
--

LOCK TABLES `lodgement` WRITE;
/*!40000 ALTER TABLE `lodgement` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodgement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingcampaign_socialconfig`
--

DROP TABLE IF EXISTS `marketingcampaign_socialconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketingcampaign_socialconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_app` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `appId` text,
  `secret` text,
  `post_in_groups` tinyint(1) DEFAULT NULL,
  `filter_repeated_posts` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcampaign_socialconfig`
--

LOCK TABLES `marketingcampaign_socialconfig` WRITE;
/*!40000 ALTER TABLE `marketingcampaign_socialconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketingcampaign_socialconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingcampaign_socialpostings`
--

DROP TABLE IF EXISTS `marketingcampaign_socialpostings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketingcampaign_socialpostings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `post_type` varchar(255) DEFAULT NULL,
  `postid_returned` varchar(255) DEFAULT NULL,
  `posted_on` datetime DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `likes` varchar(255) DEFAULT NULL,
  `share` varchar(255) DEFAULT NULL,
  `is_monitoring` tinyint(1) DEFAULT NULL,
  `force_monitor` tinyint(1) DEFAULT NULL,
  `return_data` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_post_id` (`post_id`),
  KEY `fk_campaign_id` (`campaign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcampaign_socialpostings`
--

LOCK TABLES `marketingcampaign_socialpostings` WRITE;
/*!40000 ALTER TABLE `marketingcampaign_socialpostings` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketingcampaign_socialpostings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingcampaign_socialpostings_activities`
--

DROP TABLE IF EXISTS `marketingcampaign_socialpostings_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketingcampaign_socialpostings_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posting_id` int(11) DEFAULT NULL,
  `activityid_returned` varchar(255) DEFAULT NULL,
  `activity_type` varchar(255) DEFAULT NULL,
  `activity_on` datetime DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `activity_by` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `action_allowed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_posting_id` (`posting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcampaign_socialpostings_activities`
--

LOCK TABLES `marketingcampaign_socialpostings_activities` WRITE;
/*!40000 ALTER TABLE `marketingcampaign_socialpostings_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketingcampaign_socialpostings_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingcampaign_socialusers`
--

DROP TABLE IF EXISTS `marketingcampaign_socialusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketingcampaign_socialusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `userid_returned` varchar(255) DEFAULT NULL,
  `access_token` text,
  `access_token_secret` text,
  `access_token_expiry` datetime DEFAULT NULL,
  `is_access_token_valid` tinyint(1) DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  `config_id` int(11) DEFAULT NULL,
  `extra` longtext,
  `post_on_pages` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `post_on_timeline` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_epan_id` (`epan_id`),
  KEY `fk_config_id` (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcampaign_socialusers`
--

LOCK TABLES `marketingcampaign_socialusers` WRITE;
/*!40000 ALTER TABLE `marketingcampaign_socialusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketingcampaign_socialusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingcategory`
--

DROP TABLE IF EXISTS `marketingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketingcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=626 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcategory`
--

LOCK TABLES `marketingcategory` WRITE;
/*!40000 ALTER TABLE `marketingcategory` DISABLE KEYS */;
INSERT INTO `marketingcategory` VALUES (615,'Default',6129,1),(616,'Active Affiliate',6130,1),(617,'InActive Affiliate',6131,1),(618,'Active Employee',6132,1),(619,'InActive Employee',6133,1),(620,'Active Customer',6134,1),(621,'InActive Customer',6135,1),(622,'Active Supplier',6136,1),(623,'InActive Supplier',6137,1),(624,'Active OutSourceParty',6138,1),(625,'InActive OutSourceParty',6139,1);
/*!40000 ALTER TABLE `marketingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingcategory_1`
--

DROP TABLE IF EXISTS `marketingcategory_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketingcategory_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcategory_1`
--

LOCK TABLES `marketingcategory_1` WRITE;
/*!40000 ALTER TABLE `marketingcategory_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketingcategory_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `official_holiday`
--

DROP TABLE IF EXISTS `official_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `official_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `official_holiday`
--

LOCK TABLES `official_holiday` WRITE;
/*!40000 ALTER TABLE `official_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `official_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity` (
  `document_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `lead_id` int(11) NOT NULL,
  `description` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assign_to_id` int(11) DEFAULT NULL,
  `fund` decimal(14,0) NOT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `closing_date` datetime NOT NULL,
  `narration` text,
  `previous_status` varchar(255) NOT NULL,
  `probability_percentage` decimal(14,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `lead_id` (`lead_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity`
--

LOCK TABLES `opportunity` WRITE;
/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_departmental_status`
--

DROP TABLE IF EXISTS `order_item_departmental_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item_departmental_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qsp_detail_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_open` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qsp_detail_id` (`qsp_detail_id`) USING BTREE,
  KEY `department_id` (`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_departmental_status`
--

LOCK TABLES `order_item_departmental_status` WRITE;
/*!40000 ALTER TABLE `order_item_departmental_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item_departmental_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outsource_party`
--

DROP TABLE IF EXISTS `outsource_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outsource_party` (
  `contact_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `pan_it_no` varchar(255) NOT NULL,
  `tin_no` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `account_no` int(11) NOT NULL,
  `os_country` varchar(135) NOT NULL,
  `time` datetime NOT NULL,
  `os_address` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `os_city` varchar(255) NOT NULL,
  `os_state` varchar(255) DEFAULT NULL,
  `os_pincode` varchar(255) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `department_id` (`department_id`) USING BTREE,
  KEY `currency_id` (`currency_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outsource_party`
--

LOCK TABLES `outsource_party` WRITE;
/*!40000 ALTER TABLE `outsource_party` DISABLE KEYS */;
/*!40000 ALTER TABLE `outsource_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateway`
--

DROP TABLE IF EXISTS `payment_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `default_parameters` text,
  `parameters` text,
  `processing` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `gateway_image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gateway_image_id` (`gateway_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateway`
--

LOCK TABLES `payment_gateway` WRITE;
/*!40000 ALTER TABLE `payment_gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_system`
--

DROP TABLE IF EXISTS `point_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) DEFAULT NULL,
  `rule_option_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `score` decimal(10,0) DEFAULT NULL,
  `landing_campaign_id` int(11) DEFAULT NULL,
  `landing_content_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `landing_campaign_id` (`landing_campaign_id`) USING BTREE,
  KEY `landing_content_id` (`landing_content_id`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_system`
--

LOCK TABLES `point_system` WRITE;
/*!40000 ALTER TABLE `point_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `point_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `document_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_post_id` int(11) DEFAULT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `salary_template_id` int(11) DEFAULT NULL,
  `leave_template_id` int(11) DEFAULT NULL,
  `permission_level` varchar(255) DEFAULT NULL,
  `finacial_permit_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_department1_idx` (`department_id`),
  KEY `parent_post_id` (`parent_post_id`) USING BTREE,
  KEY `document_id` (`document_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (6128,'CEO',6127,34,NULL,'10:00:00','18:00:00',NULL,NULL,'Individual',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_email_association`
--

DROP TABLE IF EXISTS `post_email_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_email_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `emailsetting_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`) USING BTREE,
  KEY `email_settings_id` (`emailsetting_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_email_association`
--

LOCK TABLES `post_email_association` WRITE;
/*!40000 ALTER TABLE `post_email_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_email_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_id` (`created_by_id`) USING BTREE,
  FULLTEXT KEY `quick_search` (`name`,`description`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcomment`
--

DROP TABLE IF EXISTS `projectcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `comment` text,
  `employee_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `on_action` int(11) DEFAULT NULL,
  `is_seen_by_creator` tinyint(4) DEFAULT NULL,
  `is_seen_by_assignee` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcomment`
--

LOCK TABLES `projectcomment` WRITE;
/*!40000 ALTER TABLE `projectcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publish_schedule`
--

DROP TABLE IF EXISTS `publish_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publish_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `is_posted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publish_schedule`
--

LOCK TABLES `publish_schedule` WRITE;
/*!40000 ALTER TABLE `publish_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `publish_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qsp_detail`
--

DROP TABLE IF EXISTS `qsp_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qsp_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qsp_master_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `price` decimal(14,4) NOT NULL,
  `quantity` decimal(14,2) NOT NULL,
  `tax_percentage` decimal(14,4) NOT NULL,
  `narration` text,
  `extra_info` text,
  `shipping_charge` float DEFAULT NULL,
  `taxation_id` int(11) DEFAULT NULL,
  `sale_amount` decimal(14,4) DEFAULT NULL,
  `original_amount` decimal(14,4) DEFAULT NULL,
  `shipping_duration` text,
  `express_shipping_charge` decimal(14,4) DEFAULT NULL,
  `express_shipping_duration` text,
  `item_template_design_id` int(11) DEFAULT NULL,
  `qty_unit_id` int(11) DEFAULT NULL,
  `discount` double(8,4) DEFAULT NULL,
  `recurring_qsp_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qsp_master_id` (`qsp_master_id`),
  KEY `item_id` (`item_id`),
  KEY `taxation_id` (`taxation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qsp_detail`
--

LOCK TABLES `qsp_detail` WRITE;
/*!40000 ALTER TABLE `qsp_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qsp_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qsp_detail_attachment`
--

DROP TABLE IF EXISTS `qsp_detail_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qsp_detail_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `qsp_detail_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qsp_detail_attachment`
--

LOCK TABLES `qsp_detail_attachment` WRITE;
/*!40000 ALTER TABLE `qsp_detail_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `qsp_detail_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qsp_master`
--

DROP TABLE IF EXISTS `qsp_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qsp_master` (
  `document_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `document_no` varchar(45) NOT NULL DEFAULT '',
  `billing_address` text,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state_id` int(11) NOT NULL,
  `billing_country_id` int(11) NOT NULL,
  `billing_pincode` varchar(255) DEFAULT NULL,
  `is_shipping_inclusive_tax` tinyint(4) DEFAULT NULL,
  `is_express_shipping` tinyint(4) DEFAULT NULL,
  `shipping_address` text,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state_id` int(11) DEFAULT NULL,
  `shipping_country_id` int(11) DEFAULT NULL,
  `shipping_pincode` varchar(255) DEFAULT NULL,
  `currency_id` varchar(255) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL,
  `transaction_response_data` text,
  `narration` text,
  `priority_id` int(11) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `exchange_rate` decimal(14,6) DEFAULT NULL,
  `tnc_id` int(11) DEFAULT NULL,
  `tnc_text` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymentgateway_id` int(11) DEFAULT NULL,
  `related_qsp_master_id` int(11) DEFAULT NULL,
  `nominal_id` int(11) DEFAULT NULL,
  `outsource_party_id` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `round_amount` decimal(14,2) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document` (`document_id`),
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `priority_id` (`priority_id`) USING BTREE,
  KEY `tnc_id` (`tnc_id`) USING BTREE,
  KEY `payment_gateway_id` (`paymentgateway_id`) USING BTREE,
  KEY `related_qsp_master_id` (`related_qsp_master_id`) USING BTREE,
  KEY `nominal_id` (`nominal_id`) USING BTREE,
  CONSTRAINT `document` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qsp_master`
--

LOCK TABLES `qsp_master` WRITE;
/*!40000 ALTER TABLE `qsp_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `qsp_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qsp_sales_person`
--

DROP TABLE IF EXISTS `qsp_sales_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qsp_sales_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `qsp_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qsp_sales_person`
--

LOCK TABLES `qsp_sales_person` WRITE;
/*!40000 ALTER TABLE `qsp_sales_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `qsp_sales_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qualificaton_level` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantity_condition`
--

DROP TABLE IF EXISTS `quantity_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantity_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity_set_id` int(11) NOT NULL,
  `customfield_value_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qty_set_id` (`quantity_set_id`) USING BTREE,
  KEY `customfield_value_id` (`customfield_value_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantity_condition`
--

LOCK TABLES `quantity_condition` WRITE;
/*!40000 ALTER TABLE `quantity_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `quantity_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantity_set`
--

DROP TABLE IF EXISTS `quantity_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantity_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` float NOT NULL,
  `price` double DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantity_set`
--

LOCK TABLES `quantity_set` WRITE;
/*!40000 ALTER TABLE `quantity_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `quantity_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reimbursement`
--

DROP TABLE IF EXISTS `reimbursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reimbursement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reimbursement`
--

LOCK TABLES `reimbursement` WRITE;
/*!40000 ALTER TABLE `reimbursement` DISABLE KEYS */;
/*!40000 ALTER TABLE `reimbursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reimbursement_detail`
--

DROP TABLE IF EXISTS `reimbursement_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reimbursement_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(14,6) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  `narration` text,
  `paid_amount` decimal(14,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reimbursement_detail`
--

LOCK TABLES `reimbursement_detail` WRITE;
/*!40000 ALTER TABLE `reimbursement_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `reimbursement_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_executor`
--

DROP TABLE IF EXISTS `report_executor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_executor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `widget` varchar(255) DEFAULT NULL,
  `starting_from_date` date DEFAULT NULL,
  `financial_month_start` varchar(255) DEFAULT NULL,
  `time_span` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `data_range` varchar(255) DEFAULT NULL,
  `data_from_date` date DEFAULT NULL,
  `data_to_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_executor`
--

LOCK TABLES `report_executor` WRITE;
/*!40000 ALTER TABLE `report_executor` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_executor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_function`
--

DROP TABLE IF EXISTS `report_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `group_id` text,
  `head_id` text,
  `ledger_id` text,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `list_of` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_function`
--

LOCK TABLES `report_function` WRITE;
/*!40000 ALTER TABLE `report_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule-options`
--

DROP TABLE IF EXISTS `rule-options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule-options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule-options`
--

LOCK TABLES `rule-options` WRITE;
/*!40000 ALTER TABLE `rule-options` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule-options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `add_deduction` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_reimbursement` tinyint(1) DEFAULT NULL,
  `is_deduction` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_abstract`
--

DROP TABLE IF EXISTS `salary_abstract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_abstract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_id` int(11) NOT NULL,
  `updated_by_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_abstract`
--

LOCK TABLES `salary_abstract` WRITE;
/*!40000 ALTER TABLE `salary_abstract` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_abstract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_detail`
--

DROP TABLE IF EXISTS `salary_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_id` int(11) NOT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `employee_row_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_detail`
--

LOCK TABLES `salary_detail` WRITE;
/*!40000 ALTER TABLE `salary_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_ledger_association`
--

DROP TABLE IF EXISTS `salary_ledger_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_ledger_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_ledger_association`
--

LOCK TABLES `salary_ledger_association` WRITE;
/*!40000 ALTER TABLE `salary_ledger_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_ledger_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_template`
--

DROP TABLE IF EXISTS `salary_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_template`
--

LOCK TABLES `salary_template` WRITE;
/*!40000 ALTER TABLE `salary_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_template_details`
--

DROP TABLE IF EXISTS `salary_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_template_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_template_id` int(11) DEFAULT NULL,
  `salary_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_template_details`
--

LOCK TABLES `salary_template_details` WRITE;
/*!40000 ALTER TABLE `salary_template_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `day` varchar(255) NOT NULL,
  `document_id` int(11) NOT NULL,
  `client_event_id` varchar(255) NOT NULL,
  `posted_on` datetime DEFAULT NULL,
  `last_communicated_lead_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`) USING BTREE,
  KEY `document_id` (`document_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_association`
--

DROP TABLE IF EXISTS `shipping_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `shipping_rule_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_association`
--

LOCK TABLES `shipping_association` WRITE;
/*!40000 ALTER TABLE `shipping_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_rule`
--

DROP TABLE IF EXISTS `shipping_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `based_on` varchar(255) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_rule`
--

LOCK TABLES `shipping_rule` WRITE;
/*!40000 ALTER TABLE `shipping_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_rule_row`
--

DROP TABLE IF EXISTS `shipping_rule_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_rule_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `shipping_charge` decimal(10,0) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `express_shipping_charge` decimal(10,0) DEFAULT NULL,
  `shipping_duration` text,
  `express_shipping_duration` text,
  `shipping_duration_days` tinyint(4) DEFAULT NULL,
  `express_shipping_duration_days` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_rule_row`
--

LOCK TABLES `shipping_rule_row` WRITE;
/*!40000 ALTER TABLE `shipping_rule_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_rule_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialuser`
--

DROP TABLE IF EXISTS `socialuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `configuration` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialuser`
--

LOCK TABLES `socialuser` WRITE;
/*!40000 ALTER TABLE `socialuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3715 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Alabama','State','AL',227,NULL,'Active'),(2,'Alaska','State','AK',227,NULL,'Active'),(3,'Arizona','State','AZ',227,NULL,'Active'),(4,'Arkansas','State','AR',227,NULL,'Active'),(5,'California','State','CA',227,NULL,'Active'),(6,'Colorado','State','CO',227,NULL,'Active'),(7,'Connecticut','State','CT',227,NULL,'Active'),(8,'Delaware','State','DE',227,NULL,'Active'),(9,'Florida','State','FL',227,NULL,'Active'),(10,'Georgia','State','GA',227,NULL,'Active'),(11,'Hawaii','State','HI',227,NULL,'Active'),(12,'Idaho','State','ID',227,NULL,'Active'),(13,'Illinois','State','IL',227,NULL,'Active'),(14,'Indiana','State','IN',227,NULL,'Active'),(15,'Iowa','State','IA',227,NULL,'Active'),(16,'Kansas','State','KS',227,NULL,'Active'),(17,'Kentucky','State','KY',227,NULL,'Active'),(18,'Louisiana','State','LA',227,NULL,'Active'),(19,'Maine','State','ME',227,NULL,'Active'),(20,'Maryland','State','MD',227,NULL,'Active'),(21,'Massachusetts','State','MA',227,NULL,'Active'),(22,'Michigan','State','MI',227,NULL,'Active'),(23,'Minnesota','State','MN',227,NULL,'Active'),(24,'Mississippi','State','MS',227,NULL,'Active'),(25,'Missouri','State','MO',227,NULL,'Active'),(26,'Montana','State','MT',227,NULL,'Active'),(27,'Nebraska','State','NE',227,NULL,'Active'),(28,'Nevada','State','NV',227,NULL,'Active'),(29,'New Hampshire','State','NH',227,NULL,'Active'),(30,'New Jersey','State','NJ',227,NULL,'Active'),(31,'New Mexico','State','NM',227,NULL,'Active'),(32,'New York','State','NY',227,NULL,'Active'),(33,'North Carolina','State','NC',227,NULL,'Active'),(34,'North Dakota','State','ND',227,NULL,'Active'),(35,'Ohio','State','OH',227,NULL,'Active'),(36,'Oklahoma','State','OK',227,NULL,'Active'),(37,'Oregon','State','OR',227,NULL,'Active'),(38,'Pennsylvania','State','PA',227,NULL,'Active'),(39,'Rhode Island','State','RI',227,NULL,'Active'),(40,'South Carolina','State','SC',227,NULL,'Active'),(41,'South Dakota','State','SD',227,NULL,'Active'),(42,'Tennessee','State','TN',227,NULL,'Active'),(43,'Texas','State','TX',227,NULL,'Active'),(44,'Utah','State','UT',227,NULL,'Active'),(45,'Vermont','State','VT',227,NULL,'Active'),(46,'Virginia','State','VA',227,NULL,'Active'),(47,'Washington','State','WA',227,NULL,'Active'),(48,'West Virginia','State','WV',227,NULL,'Active'),(49,'Wisconsin','State','WI',227,NULL,'Active'),(50,'Wyoming','State','WY',227,NULL,'Active'),(51,'District of Columbia','State','DC',227,NULL,'Active'),(52,'American Samoa','State','AS',227,NULL,'Active'),(53,'Guam','State','GU',227,NULL,'Active'),(54,'Northern Mariana Islands','State','MP',227,NULL,'Active'),(55,'Puerto Rico','State','PR',227,NULL,'Active'),(56,'Virgin Islands','State','VI',227,NULL,'Active'),(57,'United States Minor Outlying Islands','State','UM',227,NULL,'Active'),(58,'Armed Forces Europe','State','AE',227,NULL,'Active'),(59,'Armed Forces Americas','State','AA',227,NULL,'Active'),(60,'Armed Forces Pacific','State','AP',227,NULL,'Active'),(61,'Alberta','State','AB',39,NULL,'Active'),(62,'British Columbia','State','BC',39,NULL,'Active'),(63,'Manitoba','State','MB',39,NULL,'Active'),(64,'New Brunswick','State','NB',39,NULL,'Active'),(65,'Newfoundland and Labrador','State','NL',39,NULL,'Active'),(66,'Northwest Territories','State','NT',39,NULL,'Active'),(67,'Nova Scotia','State','NS',39,NULL,'Active'),(68,'Nunavut','State','NU',39,NULL,'Active'),(69,'Ontario','State','ON',39,NULL,'Active'),(70,'Prince Edward Island','State','PE',39,NULL,'Active'),(71,'Quebec','State','QC',39,NULL,'Active'),(72,'Saskatchewan','State','SK',39,NULL,'Active'),(73,'Yukon Territory','State','YT',39,NULL,'Active'),(74,'Maharashtra','State','MM',100,NULL,'Active'),(75,'Karnataka','State','KA',100,NULL,'Active'),(76,'Andhra Pradesh','State','AP',100,NULL,'Active'),(77,'Arunachal Pradesh','State','AR',100,NULL,'Active'),(78,'Assam','State','AS',100,NULL,'Active'),(79,'Bihar','State','BR',100,NULL,'Active'),(80,'Chhattisgarh','State','CH',100,NULL,'Active'),(81,'Goa','State','GA',100,NULL,'Active'),(82,'Gujarat','State','GJ',100,NULL,'Active'),(83,'Haryana','State','HR',100,NULL,'Active'),(84,'Himachal Pradesh','State','HP',100,NULL,'Active'),(85,'Jammu and Kashmir','State','JK',100,NULL,'Active'),(86,'Jharkhand','State','JH',100,NULL,'Active'),(87,'Kerala','State','KL',100,NULL,'Active'),(88,'Madhya Pradesh','State','MP',100,NULL,'Active'),(89,'Manipur','State','MN',100,NULL,'Active'),(90,'Meghalaya','State','ML',100,NULL,'Active'),(91,'Mizoram','State','MZ',100,NULL,'Active'),(92,'Nagaland','State','NL',100,NULL,'Active'),(93,'Orissa','State','OR',100,NULL,'Active'),(94,'Punjab','State','PB',100,NULL,'Active'),(95,'Rajasthan','State','RJ',100,NULL,'Active'),(96,'Sikkim','State','SK',100,NULL,'Active'),(97,'Tamil Nadu','State','TN',100,NULL,'Active'),(98,'Tripura','State','TR',100,NULL,'Active'),(99,'Uttaranchal','State','UL',100,NULL,'Active'),(100,'Uttar Pradesh','State','UP',100,NULL,'Active'),(101,'West Bengal','State','WB',100,NULL,'Active'),(102,'Andaman and Nicobar Islands','State','AN',100,NULL,'Active'),(103,'Dadra and Nagar Haveli','State','DN',100,NULL,'Active'),(104,'Daman and Diu','State','DD',100,NULL,'Active'),(105,'Delhi','State','DL',100,NULL,'Active'),(106,'Lakshadweep','State','LD',100,NULL,'Active'),(107,'Pondicherry','State','PY',100,NULL,'Active'),(108,'mazowieckie','State','MZ',171,NULL,'Active'),(109,'pomorskie','State','PM',171,NULL,'Active'),(110,'dolno?l?skie','State','DS',171,NULL,'Active'),(111,'kujawsko-pomorskie','State','KP',171,NULL,'Active'),(112,'lubelskie','State','LU',171,NULL,'Active'),(113,'lubuskie','State','LB',171,NULL,'Active'),(114,'?ódzkie','State','LD',171,NULL,'Active'),(115,'ma?opolskie','State','MA',171,NULL,'Active'),(116,'opolskie','State','OP',171,NULL,'Active'),(117,'podkarpackie','State','PK',171,NULL,'Active'),(118,'podlaskie','State','PD',171,NULL,'Active'),(119,'?l?skie','State','SL',171,NULL,'Active'),(120,'?wi?tokrzyskie','State','SK',171,NULL,'Active'),(121,'warmi?sko-mazurskie','State','WN',171,NULL,'Active'),(122,'wielkopolskie','State','WP',171,NULL,'Active'),(123,'zachodniopomorskie','State','ZP',171,NULL,'Active'),(124,'Abu Zaby','State','AZ',224,NULL,'Active'),(125,'\'Ajman','State','AJ',224,NULL,'Active'),(126,'Al Fujayrah','State','FU',224,NULL,'Active'),(127,'Ash Shariqah','State','SH',224,NULL,'Active'),(128,'Dubayy','State','DU',224,NULL,'Active'),(129,'Ra\'s al Khaymah','State','RK',224,NULL,'Active'),(130,'Dac Lac','State','33',232,NULL,'Active'),(131,'Umm al Qaywayn','State','UQ',224,NULL,'Active'),(132,'Badakhshan','State','BDS',1,NULL,'Active'),(133,'Badghis','State','BDG',1,NULL,'Active'),(134,'Baghlan','State','BGL',1,NULL,'Active'),(135,'Balkh','State','BAL',1,NULL,'Active'),(136,'Bamian','State','BAM',1,NULL,'Active'),(137,'Farah','State','FRA',1,NULL,'Active'),(138,'Faryab','State','FYB',1,NULL,'Active'),(139,'Ghazni','State','GHA',1,NULL,'Active'),(140,'Ghowr','State','GHO',1,NULL,'Active'),(141,'Helmand','State','HEL',1,NULL,'Active'),(142,'Herat','State','HER',1,NULL,'Active'),(143,'Jowzjan','State','JOW',1,NULL,'Active'),(144,'Kabul','State','KAB',1,NULL,'Active'),(145,'Kandahar','State','KAN',1,NULL,'Active'),(146,'Kapisa','State','KAP',1,NULL,'Active'),(147,'Khowst','State','KHO',1,NULL,'Active'),(148,'Konar','State','KNR',1,NULL,'Active'),(149,'Kondoz','State','KDZ',1,NULL,'Active'),(150,'Laghman','State','LAG',1,NULL,'Active'),(151,'Lowgar','State','LOW',1,NULL,'Active'),(152,'Nangrahar','State','NAN',1,NULL,'Active'),(153,'Nimruz','State','NIM',1,NULL,'Active'),(154,'Nurestan','State','NUR',1,NULL,'Active'),(155,'Oruzgan','State','ORU',1,NULL,'Active'),(156,'Paktia','State','PIA',1,NULL,'Active'),(157,'Paktika','State','PKA',1,NULL,'Active'),(158,'Parwan','State','PAR',1,NULL,'Active'),(159,'Samangan','State','SAM',1,NULL,'Active'),(160,'Sar-e Pol','State','SAR',1,NULL,'Active'),(161,'Takhar','State','TAK',1,NULL,'Active'),(162,'Wardak','State','WAR',1,NULL,'Active'),(163,'Zabol','State','ZAB',1,NULL,'Active'),(164,'Berat','State','BR',2,NULL,'Active'),(165,'Bulqizë','State','BU',2,NULL,'Active'),(166,'Delvinë','State','DL',2,NULL,'Active'),(167,'Devoll','State','DV',2,NULL,'Active'),(168,'Dibër','State','DI',2,NULL,'Active'),(169,'Durrsës','State','DR',2,NULL,'Active'),(170,'Elbasan','State','EL',2,NULL,'Active'),(171,'Fier','State','FR',2,NULL,'Active'),(172,'Gramsh','State','GR',2,NULL,'Active'),(173,'Gjirokastër','State','GJ',2,NULL,'Active'),(174,'Has','State','HA',2,NULL,'Active'),(175,'Kavajë','State','KA',2,NULL,'Active'),(176,'Kolonjë','State','ER',2,NULL,'Active'),(177,'Korcë','State','KO',2,NULL,'Active'),(178,'Krujë','State','KR',2,NULL,'Active'),(179,'Kuçovë','State','KC',2,NULL,'Active'),(180,'Kukës','State','KU',2,NULL,'Active'),(181,'Kurbin','State','KB',2,NULL,'Active'),(182,'Lezhë','State','LE',2,NULL,'Active'),(183,'Librazhd','State','LB',2,NULL,'Active'),(184,'Lushnjë','State','LU',2,NULL,'Active'),(185,'Malësi e Madhe','State','MM',2,NULL,'Active'),(186,'Mallakastër','State','MK',2,NULL,'Active'),(187,'Mat','State','MT',2,NULL,'Active'),(188,'Mirditë','State','MR',2,NULL,'Active'),(189,'Peqin','State','PQ',2,NULL,'Active'),(190,'Përmet','State','PR',2,NULL,'Active'),(191,'Pogradec','State','PG',2,NULL,'Active'),(192,'Pukë','State','PU',2,NULL,'Active'),(193,'Sarandë','State','SR',2,NULL,'Active'),(194,'Skrapar','State','SK',2,NULL,'Active'),(195,'Shkodër','State','SH',2,NULL,'Active'),(196,'Tepelenë','State','TE',2,NULL,'Active'),(197,'Tiranë','State','TR',2,NULL,'Active'),(198,'Tropojë','State','TP',2,NULL,'Active'),(199,'Vlorë','State','VL',2,NULL,'Active'),(200,'Erevan','State','ER',11,NULL,'Active'),(201,'Aragacotn','State','AG',11,NULL,'Active'),(202,'Ararat','State','AR',11,NULL,'Active'),(203,'Armavir','State','AV',11,NULL,'Active'),(204,'Gegarkunik\'','State','GR',11,NULL,'Active'),(205,'Kotayk\'','State','KT',11,NULL,'Active'),(206,'Lory','State','LO',11,NULL,'Active'),(207,'Sirak','State','SH',11,NULL,'Active'),(208,'Syunik\'','State','SU',11,NULL,'Active'),(209,'Tavus','State','TV',11,NULL,'Active'),(210,'Vayoc Jor','State','VD',11,NULL,'Active'),(211,'Bengo','State','BGO',6,NULL,'Active'),(212,'Benguela','State','BGU',6,NULL,'Active'),(213,'Bie','State','BIE',6,NULL,'Active'),(214,'Cabinda','State','CAB',6,NULL,'Active'),(215,'Cuando-Cubango','State','CCU',6,NULL,'Active'),(216,'Cuanza Norte','State','CNO',6,NULL,'Active'),(217,'Cuanza Sul','State','CUS',6,NULL,'Active'),(218,'Cunene','State','CNN',6,NULL,'Active'),(219,'Huambo','State','HUA',6,NULL,'Active'),(220,'Huila','State','HUI',6,NULL,'Active'),(221,'Luanda','State','LUA',6,NULL,'Active'),(222,'Lunda Norte','State','LNO',6,NULL,'Active'),(223,'Lunda Sul','State','LSU',6,NULL,'Active'),(224,'Malange','State','MAL',6,NULL,'Active'),(225,'Moxico','State','MOX',6,NULL,'Active'),(226,'Namibe','State','NAM',6,NULL,'Active'),(227,'Uige','State','UIG',6,NULL,'Active'),(228,'Zaire','State','ZAI',6,NULL,'Active'),(229,'Capital federal','State','C',10,NULL,'Active'),(230,'Buenos Aires','State','B',10,NULL,'Active'),(231,'Catamarca','State','K',10,NULL,'Active'),(232,'Cordoba','State','X',10,NULL,'Active'),(233,'Corrientes','State','W',10,NULL,'Active'),(234,'Chaco','State','H',10,NULL,'Active'),(235,'Chubut','State','U',10,NULL,'Active'),(236,'Entre Rios','State','E',10,NULL,'Active'),(237,'Formosa','State','P',10,NULL,'Active'),(238,'Jujuy','State','Y',10,NULL,'Active'),(239,'La Pampa','State','L',10,NULL,'Active'),(240,'Mendoza','State','M',10,NULL,'Active'),(241,'Misiones','State','N',10,NULL,'Active'),(242,'Neuquen','State','Q',10,NULL,'Active'),(243,'Rio Negro','State','R',10,NULL,'Active'),(244,'Salta','State','A',10,NULL,'Active'),(245,'San Juan','State','J',10,NULL,'Active'),(246,'San Luis','State','D',10,NULL,'Active'),(247,'Santa Cruz','State','Z',10,NULL,'Active'),(248,'Santa Fe','State','S',10,NULL,'Active'),(249,'Santiago del Estero','State','G',10,NULL,'Active'),(250,'Tierra del Fuego','State','V',10,NULL,'Active'),(251,'Tucuman','State','T',10,NULL,'Active'),(252,'Burgenland','State','1',14,NULL,'Active'),(253,'Kärnten','State','2',14,NULL,'Active'),(254,'Niederosterreich','State','3',14,NULL,'Active'),(255,'Oberosterreich','State','4',14,NULL,'Active'),(256,'Salzburg','State','5',14,NULL,'Active'),(257,'Steiermark','State','6',14,NULL,'Active'),(258,'Tirol','State','7',14,NULL,'Active'),(259,'Vorarlberg','State','8',14,NULL,'Active'),(260,'Wien','State','9',14,NULL,'Active'),(261,'Australian Antarctic Territory','State','AAT',8,NULL,'Active'),(262,'Australian Capital Territory','State','ACT',13,NULL,'Active'),(263,'Northern Territory','State','NT',13,NULL,'Active'),(264,'New South Wales','State','NSW',13,NULL,'Active'),(265,'Queensland','State','QLD',13,NULL,'Active'),(266,'South Australia','State','SA',13,NULL,'Active'),(267,'Tasmania','State','TAS',13,NULL,'Active'),(268,'Victoria','State','VIC',13,NULL,'Active'),(269,'Western Australia','State','WA',13,NULL,'Active'),(270,'Naxcivan','State','NX',15,NULL,'Active'),(271,'Ali Bayramli','State','AB',15,NULL,'Active'),(272,'Baki','State','BA',15,NULL,'Active'),(273,'Ganca','State','GA',15,NULL,'Active'),(274,'Lankaran','State','LA',15,NULL,'Active'),(275,'Mingacevir','State','MI',15,NULL,'Active'),(276,'Naftalan','State','NA',15,NULL,'Active'),(277,'Saki','State','SA',15,NULL,'Active'),(278,'Sumqayit','State','SM',15,NULL,'Active'),(279,'Susa','State','SS',15,NULL,'Active'),(280,'Xankandi','State','XA',15,NULL,'Active'),(281,'Yevlax','State','YE',15,NULL,'Active'),(282,'Abseron','State','ABS',15,NULL,'Active'),(283,'Agcabadi','State','AGC',15,NULL,'Active'),(284,'Agdam','State','AGM',15,NULL,'Active'),(285,'Agdas','State','AGS',15,NULL,'Active'),(286,'Agstafa','State','AGA',15,NULL,'Active'),(287,'Agsu','State','AGU',15,NULL,'Active'),(288,'Astara','State','AST',15,NULL,'Active'),(289,'Babak','State','BAB',15,NULL,'Active'),(290,'Balakan','State','BAL',15,NULL,'Active'),(291,'Barda','State','BAR',15,NULL,'Active'),(292,'Beylagan','State','BEY',15,NULL,'Active'),(293,'Bilasuvar','State','BIL',15,NULL,'Active'),(294,'Cabrayll','State','CAB',15,NULL,'Active'),(295,'Calilabad','State','CAL',15,NULL,'Active'),(296,'Culfa','State','CUL',15,NULL,'Active'),(297,'Daskasan','State','DAS',15,NULL,'Active'),(298,'Davaci','State','DAV',15,NULL,'Active'),(299,'Fuzuli','State','FUZ',15,NULL,'Active'),(300,'Gadabay','State','GAD',15,NULL,'Active'),(301,'Goranboy','State','GOR',15,NULL,'Active'),(302,'Goycay','State','GOY',15,NULL,'Active'),(303,'Haciqabul','State','HAC',15,NULL,'Active'),(304,'Imisli','State','IMI',15,NULL,'Active'),(305,'Ismayilli','State','ISM',15,NULL,'Active'),(306,'Kalbacar','State','KAL',15,NULL,'Active'),(307,'Kurdamir','State','KUR',15,NULL,'Active'),(308,'Lacin','State','LAC',15,NULL,'Active'),(309,'Lerik','State','LER',15,NULL,'Active'),(310,'Masalli','State','MAS',15,NULL,'Active'),(311,'Neftcala','State','NEF',15,NULL,'Active'),(312,'Oguz','State','OGU',15,NULL,'Active'),(313,'Ordubad','State','ORD',15,NULL,'Active'),(314,'Qabala','State','QAB',15,NULL,'Active'),(315,'Qax','State','QAX',15,NULL,'Active'),(316,'Qazax','State','QAZ',15,NULL,'Active'),(317,'Qobustan','State','QOB',15,NULL,'Active'),(318,'Quba','State','QBA',15,NULL,'Active'),(319,'Qubadli','State','QBI',15,NULL,'Active'),(320,'Qusar','State','QUS',15,NULL,'Active'),(321,'Saatli','State','SAT',15,NULL,'Active'),(322,'Sabirabad','State','SAB',15,NULL,'Active'),(323,'Sadarak','State','SAD',15,NULL,'Active'),(324,'Sahbuz','State','SAH',15,NULL,'Active'),(325,'Salyan','State','SAL',15,NULL,'Active'),(326,'Samaxi','State','SMI',15,NULL,'Active'),(327,'Samkir','State','SKR',15,NULL,'Active'),(328,'Samux','State','SMX',15,NULL,'Active'),(329,'Sarur','State','SAR',15,NULL,'Active'),(330,'Siyazan','State','SIY',15,NULL,'Active'),(331,'Tartar','State','TAR',15,NULL,'Active'),(332,'Tovuz','State','TOV',15,NULL,'Active'),(333,'Ucar','State','UCA',15,NULL,'Active'),(334,'Xacmaz','State','XAC',15,NULL,'Active'),(335,'Xanlar','State','XAN',15,NULL,'Active'),(336,'Xizi','State','XIZ',15,NULL,'Active'),(337,'Xocali','State','XCI',15,NULL,'Active'),(338,'Xocavand','State','XVD',15,NULL,'Active'),(339,'Yardimli','State','YAR',15,NULL,'Active'),(340,'Zangilan','State','ZAN',15,NULL,'Active'),(341,'Zaqatala','State','ZAQ',15,NULL,'Active'),(342,'Zardab','State','ZAR',15,NULL,'Active'),(343,'Federacija Bosna i Hercegovina','State','BIH',26,NULL,'Active'),(344,'Republika Srpska','State','SRP',26,NULL,'Active'),(345,'Bagerhat zila','State','05',17,NULL,'Active'),(346,'Bandarban zila','State','01',17,NULL,'Active'),(347,'Barguna zila','State','02',17,NULL,'Active'),(348,'Barisal zila','State','06',17,NULL,'Active'),(349,'Bhola zila','State','07',17,NULL,'Active'),(350,'Bogra zila','State','03',17,NULL,'Active'),(351,'Brahmanbaria zila','State','04',17,NULL,'Active'),(352,'Chandpur zila','State','09',17,NULL,'Active'),(353,'Chittagong zila','State','10',17,NULL,'Active'),(354,'Chuadanga zila','State','12',17,NULL,'Active'),(355,'Comilla zila','State','08',17,NULL,'Active'),(356,'Cox\'s Bazar zila','State','11',17,NULL,'Active'),(357,'Dhaka zila','State','13',17,NULL,'Active'),(358,'Dinajpur zila','State','14',17,NULL,'Active'),(359,'Faridpur zila','State','15',17,NULL,'Active'),(360,'Feni zila','State','16',17,NULL,'Active'),(361,'Gaibandha zila','State','19',17,NULL,'Active'),(362,'Gazipur zila','State','18',17,NULL,'Active'),(363,'Gopalganj zila','State','17',17,NULL,'Active'),(364,'Habiganj zila','State','20',17,NULL,'Active'),(365,'Jaipurhat zila','State','24',17,NULL,'Active'),(366,'Jamalpur zila','State','21',17,NULL,'Active'),(367,'Jessore zila','State','22',17,NULL,'Active'),(368,'Jhalakati zila','State','25',17,NULL,'Active'),(369,'Jhenaidah zila','State','23',17,NULL,'Active'),(370,'Khagrachari zila','State','29',17,NULL,'Active'),(371,'Khulna zila','State','27',17,NULL,'Active'),(372,'Kishorganj zila','State','26',17,NULL,'Active'),(373,'Kurigram zila','State','28',17,NULL,'Active'),(374,'Kushtia zila','State','30',17,NULL,'Active'),(375,'Lakshmipur zila','State','31',17,NULL,'Active'),(376,'Lalmonirhat zila','State','32',17,NULL,'Active'),(377,'Madaripur zila','State','36',17,NULL,'Active'),(378,'Magura zila','State','37',17,NULL,'Active'),(379,'Manikganj zila','State','33',17,NULL,'Active'),(380,'Meherpur zila','State','39',17,NULL,'Active'),(381,'Moulvibazar zila','State','38',17,NULL,'Active'),(382,'Munshiganj zila','State','35',17,NULL,'Active'),(383,'Mymensingh zila','State','34',17,NULL,'Active'),(384,'Naogaon zila','State','48',17,NULL,'Active'),(385,'Narail zila','State','43',17,NULL,'Active'),(386,'Narayanganj zila','State','40',17,NULL,'Active'),(387,'Narsingdi zila','State','42',17,NULL,'Active'),(388,'Natore zila','State','44',17,NULL,'Active'),(389,'Nawabganj zila','State','45',17,NULL,'Active'),(390,'Netrakona zila','State','41',17,NULL,'Active'),(391,'Nilphamari zila','State','46',17,NULL,'Active'),(392,'Noakhali zila','State','47',17,NULL,'Active'),(393,'Pabna zila','State','49',17,NULL,'Active'),(394,'Panchagarh zila','State','52',17,NULL,'Active'),(395,'Patuakhali zila','State','51',17,NULL,'Active'),(396,'Pirojpur zila','State','50',17,NULL,'Active'),(397,'Rajbari zila','State','53',17,NULL,'Active'),(398,'Rajshahi zila','State','54',17,NULL,'Active'),(399,'Rangamati zila','State','56',17,NULL,'Active'),(400,'Rangpur zila','State','55',17,NULL,'Active'),(401,'Satkhira zila','State','58',17,NULL,'Active'),(402,'Shariatpur zila','State','62',17,NULL,'Active'),(403,'Sherpur zila','State','57',17,NULL,'Active'),(404,'Sirajganj zila','State','59',17,NULL,'Active'),(405,'Sunamganj zila','State','61',17,NULL,'Active'),(406,'Sylhet zila','State','60',17,NULL,'Active'),(407,'Tangail zila','State','63',17,NULL,'Active'),(408,'Thakurgaon zila','State','64',17,NULL,'Active'),(409,'Antwerpen','State','VAN',20,NULL,'Active'),(410,'Brabant Wallon','State','WBR',20,NULL,'Active'),(411,'Hainaut','State','WHT',20,NULL,'Active'),(412,'Liege','State','WLG',20,NULL,'Active'),(413,'Limburg','State','VLI',20,NULL,'Active'),(414,'Luxembourg','State','WLX',20,NULL,'Active'),(415,'Namur','State','WNA',20,NULL,'Active'),(416,'Oost-Vlaanderen','State','VOV',20,NULL,'Active'),(417,'Vlaams-Brabant','State','VBR',20,NULL,'Active'),(418,'West-Vlaanderen','State','VWV',20,NULL,'Active'),(419,'Bale','State','BAL',34,NULL,'Active'),(420,'Bam','State','BAM',34,NULL,'Active'),(421,'Banwa','State','BAN',34,NULL,'Active'),(422,'Bazega','State','BAZ',34,NULL,'Active'),(423,'Bougouriba','State','BGR',34,NULL,'Active'),(424,'Boulgou','State','BLG',34,NULL,'Active'),(425,'Boulkiemde','State','BLK',34,NULL,'Active'),(426,'Comoe','State','COM',34,NULL,'Active'),(427,'Ganzourgou','State','GAN',34,NULL,'Active'),(428,'Gnagna','State','GNA',34,NULL,'Active'),(429,'Gourma','State','GOU',34,NULL,'Active'),(430,'Houet','State','HOU',34,NULL,'Active'),(431,'Ioba','State','IOB',34,NULL,'Active'),(432,'Kadiogo','State','KAD',34,NULL,'Active'),(433,'Kenedougou','State','KEN',34,NULL,'Active'),(434,'Komondjari','State','KMD',34,NULL,'Active'),(435,'Kompienga','State','KMP',34,NULL,'Active'),(436,'Kossi','State','KOS',34,NULL,'Active'),(437,'Koulpulogo','State','KOP',34,NULL,'Active'),(438,'Kouritenga','State','KOT',34,NULL,'Active'),(439,'Kourweogo','State','KOW',34,NULL,'Active'),(440,'Leraba','State','LER',34,NULL,'Active'),(441,'Loroum','State','LOR',34,NULL,'Active'),(442,'Mouhoun','State','MOU',34,NULL,'Active'),(443,'Nahouri','State','NAO',34,NULL,'Active'),(444,'Namentenga','State','NAM',34,NULL,'Active'),(445,'Nayala','State','NAY',34,NULL,'Active'),(446,'Noumbiel','State','NOU',34,NULL,'Active'),(447,'Oubritenga','State','OUB',34,NULL,'Active'),(448,'Oudalan','State','OUD',34,NULL,'Active'),(449,'Passore','State','PAS',34,NULL,'Active'),(450,'Poni','State','PON',34,NULL,'Active'),(451,'Sanguie','State','SNG',34,NULL,'Active'),(452,'Sanmatenga','State','SMT',34,NULL,'Active'),(453,'Seno','State','SEN',34,NULL,'Active'),(454,'Siasili','State','SIS',34,NULL,'Active'),(455,'Soum','State','SOM',34,NULL,'Active'),(456,'Sourou','State','SOR',34,NULL,'Active'),(457,'Tapoa','State','TAP',34,NULL,'Active'),(458,'Tui','State','TUI',34,NULL,'Active'),(459,'Yagha','State','YAG',34,NULL,'Active'),(460,'Yatenga','State','YAT',34,NULL,'Active'),(461,'Ziro','State','ZIR',34,NULL,'Active'),(462,'Zondoma','State','ZON',34,NULL,'Active'),(463,'Zoundweogo','State','ZOU',34,NULL,'Active'),(464,'Blagoevgrad','State','01',33,NULL,'Active'),(465,'Burgas','State','02',33,NULL,'Active'),(466,'Dobric','State','08',33,NULL,'Active'),(467,'Gabrovo','State','07',33,NULL,'Active'),(468,'Haskovo','State','26',33,NULL,'Active'),(469,'Jambol','State','28',33,NULL,'Active'),(470,'Kardzali','State','09',33,NULL,'Active'),(471,'Kjstendil','State','10',33,NULL,'Active'),(472,'Lovec','State','11',33,NULL,'Active'),(473,'Montana','State','12',33,NULL,'Active'),(474,'Pazardzik','State','13',33,NULL,'Active'),(475,'Pernik','State','14',33,NULL,'Active'),(476,'Pleven','State','15',33,NULL,'Active'),(477,'Plovdiv','State','16',33,NULL,'Active'),(478,'Razgrad','State','17',33,NULL,'Active'),(479,'Ruse','State','18',33,NULL,'Active'),(480,'Silistra','State','19',33,NULL,'Active'),(481,'Sliven','State','20',33,NULL,'Active'),(482,'Smoljan','State','21',33,NULL,'Active'),(483,'Sofia','State','23',33,NULL,'Active'),(484,'Stara Zagora','State','24',33,NULL,'Active'),(485,'Sumen','State','27',33,NULL,'Active'),(486,'Targoviste','State','25',33,NULL,'Active'),(487,'Varna','State','03',33,NULL,'Active'),(488,'Veliko Tarnovo','State','04',33,NULL,'Active'),(489,'Vidin','State','05',33,NULL,'Active'),(490,'Vraca','State','06',33,NULL,'Active'),(491,'Al Hadd','State','01',16,NULL,'Active'),(492,'Al Manamah','State','03',16,NULL,'Active'),(493,'Al Mintaqah al Gharbiyah','State','10',16,NULL,'Active'),(494,'Al Mintagah al Wusta','State','07',16,NULL,'Active'),(495,'Al Mintaqah ash Shamaliyah','State','05',16,NULL,'Active'),(496,'Al Muharraq','State','02',16,NULL,'Active'),(497,'Ar Rifa','State','09',16,NULL,'Active'),(498,'Jidd Hafs','State','04',16,NULL,'Active'),(499,'Madluat Jamad','State','12',16,NULL,'Active'),(500,'Madluat Isa','State','08',16,NULL,'Active'),(501,'Mintaqat Juzur tawar','State','11',16,NULL,'Active'),(502,'Sitrah','State','06',16,NULL,'Active'),(503,'Bubanza','State','BB',36,NULL,'Active'),(504,'Bujumbura','State','BJ',36,NULL,'Active'),(505,'Bururi','State','BR',36,NULL,'Active'),(506,'Cankuzo','State','CA',36,NULL,'Active'),(507,'Cibitoke','State','CI',36,NULL,'Active'),(508,'Gitega','State','GI',36,NULL,'Active'),(509,'Karuzi','State','KR',36,NULL,'Active'),(510,'Kayanza','State','KY',36,NULL,'Active'),(511,'Makamba','State','MA',36,NULL,'Active'),(512,'Muramvya','State','MU',36,NULL,'Active'),(513,'Mwaro','State','MW',36,NULL,'Active'),(514,'Ngozi','State','NG',36,NULL,'Active'),(515,'Rutana','State','RT',36,NULL,'Active'),(516,'Ruyigi','State','RY',36,NULL,'Active'),(517,'Alibori','State','AL',22,NULL,'Active'),(518,'Atakora','State','AK',22,NULL,'Active'),(519,'Atlantique','State','AQ',22,NULL,'Active'),(520,'Borgou','State','BO',22,NULL,'Active'),(521,'Collines','State','CO',22,NULL,'Active'),(522,'Donga','State','DO',22,NULL,'Active'),(523,'Kouffo','State','KO',22,NULL,'Active'),(524,'Littoral','State','LI',22,NULL,'Active'),(525,'Mono','State','MO',22,NULL,'Active'),(526,'Oueme','State','OU',22,NULL,'Active'),(527,'Plateau','State','PL',22,NULL,'Active'),(528,'Zou','State','ZO',22,NULL,'Active'),(529,'Belait','State','BE',32,NULL,'Active'),(530,'Brunei-Muara','State','BM',32,NULL,'Active'),(531,'Temburong','State','TE',32,NULL,'Active'),(532,'Tutong','State','TU',32,NULL,'Active'),(533,'Cochabamba','State','C',25,NULL,'Active'),(534,'Chuquisaca','State','H',25,NULL,'Active'),(535,'El Beni','State','B',25,NULL,'Active'),(536,'La Paz','State','L',25,NULL,'Active'),(537,'Oruro','State','O',25,NULL,'Active'),(538,'Pando','State','N',25,NULL,'Active'),(539,'Potosi','State','P',25,NULL,'Active'),(540,'Tarija','State','T',25,NULL,'Active'),(541,'Acre','State','AC',29,NULL,'Active'),(542,'Alagoas','State','AL',29,NULL,'Active'),(543,'Amazonas','State','AM',29,NULL,'Active'),(544,'Amapa','State','AP',29,NULL,'Active'),(545,'Baia','State','BA',29,NULL,'Active'),(546,'Ceara','State','CE',29,NULL,'Active'),(547,'Distrito Federal','State','DF',29,NULL,'Active'),(548,'Espirito Santo','State','ES',29,NULL,'Active'),(549,'Fernando de Noronha','State','FN',29,NULL,'Active'),(550,'Goias','State','GO',29,NULL,'Active'),(551,'Maranhao','State','MA',29,NULL,'Active'),(552,'Minas Gerais','State','MG',29,NULL,'Active'),(553,'Mato Grosso do Sul','State','MS',29,NULL,'Active'),(554,'Mato Grosso','State','MT',29,NULL,'Active'),(555,'Para','State','PA',29,NULL,'Active'),(556,'Paraiba','State','PB',29,NULL,'Active'),(557,'Pernambuco','State','PE',29,NULL,'Active'),(558,'Piaui','State','PI',29,NULL,'Active'),(559,'Parana','State','PR',29,NULL,'Active'),(560,'Rio de Janeiro','State','RJ',29,NULL,'Active'),(561,'Rio Grande do Norte','State','RN',29,NULL,'Active'),(562,'Rondonia','State','RO',29,NULL,'Active'),(563,'Roraima','State','RR',29,NULL,'Active'),(564,'Rio Grande do Sul','State','RS',29,NULL,'Active'),(565,'Santa Catarina','State','SC',29,NULL,'Active'),(566,'Sergipe','State','SE',29,NULL,'Active'),(567,'Sao Paulo','State','SP',29,NULL,'Active'),(568,'Tocatins','State','TO',29,NULL,'Active'),(569,'Acklins and Crooked Islands','State','AC',211,NULL,'Active'),(570,'Bimini','State','BI',211,NULL,'Active'),(571,'Cat Island','State','CI',211,NULL,'Active'),(572,'Exuma','State','EX',211,NULL,'Active'),(573,'Freeport','State','FP',211,NULL,'Active'),(574,'Fresh Creek','State','FC',211,NULL,'Active'),(575,'Governor\'s Harbour','State','GH',211,NULL,'Active'),(576,'Green Turtle Cay','State','GT',211,NULL,'Active'),(577,'Harbour Island','State','HI',211,NULL,'Active'),(578,'High Rock','State','HR',211,NULL,'Active'),(579,'Inagua','State','IN',211,NULL,'Active'),(580,'Kemps Bay','State','KB',211,NULL,'Active'),(581,'Long Island','State','LI',211,NULL,'Active'),(582,'Marsh Harbour','State','MH',211,NULL,'Active'),(583,'Mayaguana','State','MG',211,NULL,'Active'),(584,'New Providence','State','NP',211,NULL,'Active'),(585,'Nicholls Town and Berry Islands','State','NB',211,NULL,'Active'),(586,'Ragged Island','State','RI',211,NULL,'Active'),(587,'Rock Sound','State','RS',211,NULL,'Active'),(588,'Sandy Point','State','SP',211,NULL,'Active'),(589,'San Salvador and Rum Cay','State','SR',211,NULL,'Active'),(590,'Bumthang','State','33',24,NULL,'Active'),(591,'Chhukha','State','12',24,NULL,'Active'),(592,'Dagana','State','22',24,NULL,'Active'),(593,'Gasa','State','GA',24,NULL,'Active'),(594,'Ha','State','13',24,NULL,'Active'),(595,'Lhuentse','State','44',24,NULL,'Active'),(596,'Monggar','State','42',24,NULL,'Active'),(597,'Paro','State','11',24,NULL,'Active'),(598,'Pemagatshel','State','43',24,NULL,'Active'),(599,'Punakha','State','23',24,NULL,'Active'),(600,'Samdrup Jongkha','State','45',24,NULL,'Active'),(601,'Samtee','State','14',24,NULL,'Active'),(602,'Sarpang','State','31',24,NULL,'Active'),(603,'Thimphu','State','15',24,NULL,'Active'),(604,'Trashigang','State','41',24,NULL,'Active'),(605,'Trashi Yangtse','State','TY',24,NULL,'Active'),(606,'Trongsa','State','32',24,NULL,'Active'),(607,'Tsirang','State','21',24,NULL,'Active'),(608,'Wangdue Phodrang','State','24',24,NULL,'Active'),(609,'Zhemgang','State','34',24,NULL,'Active'),(610,'Central','State','CE',27,NULL,'Active'),(611,'Ghanzi','State','GH',27,NULL,'Active'),(612,'Kgalagadi','State','KG',27,NULL,'Active'),(613,'Kgatleng','State','KL',27,NULL,'Active'),(614,'Kweneng','State','KW',27,NULL,'Active'),(615,'Ngamiland','State','NG',27,NULL,'Active'),(616,'North-East','State','NE',27,NULL,'Active'),(617,'North-West','State','NW',27,NULL,'Active'),(618,'South-East','State','SE',27,NULL,'Active'),(619,'Southern','State','SO',27,NULL,'Active'),(620,'Brèsckaja voblasc\'','State','BR',19,NULL,'Active'),(621,'Homel\'skaja voblasc\'','State','HO',19,NULL,'Active'),(622,'Hrodzenskaja voblasc\'','State','HR',19,NULL,'Active'),(623,'Mahilëuskaja voblasc\'','State','MA',19,NULL,'Active'),(624,'Minskaja voblasc\'','State','MI',19,NULL,'Active'),(625,'Vicebskaja voblasc\'','State','VI',19,NULL,'Active'),(626,'Belize','State','BZ',21,NULL,'Active'),(627,'Cayo','State','CY',21,NULL,'Active'),(628,'Corozal','State','CZL',21,NULL,'Active'),(629,'Orange Walk','State','OW',21,NULL,'Active'),(630,'Stann Creek','State','SC',21,NULL,'Active'),(631,'Toledo','State','TOL',21,NULL,'Active'),(632,'Kinshasa','State','KN',50,NULL,'Active'),(633,'Bandundu','State','BN',50,NULL,'Active'),(634,'Bas-Congo','State','BC',50,NULL,'Active'),(635,'Equateur','State','EQ',50,NULL,'Active'),(636,'Haut-Congo','State','HC',50,NULL,'Active'),(637,'Kasai-Occidental','State','KW',50,NULL,'Active'),(638,'Kasai-Oriental','State','KE',50,NULL,'Active'),(639,'Katanga','State','KA',50,NULL,'Active'),(640,'Maniema','State','MA',50,NULL,'Active'),(641,'Nord-Kivu','State','NK',50,NULL,'Active'),(642,'Orientale','State','OR',50,NULL,'Active'),(643,'Sud-Kivu','State','SK',50,NULL,'Active'),(644,'Bangui','State','BGF',42,NULL,'Active'),(645,'Bamingui-Bangoran','State','BB',42,NULL,'Active'),(646,'Basse-Kotto','State','BK',42,NULL,'Active'),(647,'Haute-Kotto','State','HK',42,NULL,'Active'),(648,'Haut-Mbomou','State','HM',42,NULL,'Active'),(649,'Kemo','State','KG',42,NULL,'Active'),(650,'Lobaye','State','LB',42,NULL,'Active'),(651,'Mambere-Kadei','State','HS',42,NULL,'Active'),(652,'Mbomou','State','MB',42,NULL,'Active'),(653,'Nana-Grebizi','State','KB',42,NULL,'Active'),(654,'Nana-Mambere','State','NM',42,NULL,'Active'),(655,'Ombella-Mpoko','State','MP',42,NULL,'Active'),(656,'Ouaka','State','UK',42,NULL,'Active'),(657,'Ouham','State','AC',42,NULL,'Active'),(658,'Ouham-Pende','State','OP',42,NULL,'Active'),(659,'Sangha-Mbaere','State','SE',42,NULL,'Active'),(660,'Vakaga','State','VR',42,NULL,'Active'),(661,'Brazzaville','State','BZV',51,NULL,'Active'),(662,'Bouenza','State','11',51,NULL,'Active'),(663,'Cuvette','State','8',51,NULL,'Active'),(664,'Cuvette-Ouest','State','15',51,NULL,'Active'),(665,'Kouilou','State','5',51,NULL,'Active'),(666,'Lekoumou','State','2',51,NULL,'Active'),(667,'Likouala','State','7',51,NULL,'Active'),(668,'Niari','State','9',51,NULL,'Active'),(669,'Plateaux','State','14',51,NULL,'Active'),(670,'Pool','State','12',51,NULL,'Active'),(671,'Sangha','State','13',51,NULL,'Active'),(672,'Aargau','State','AG',204,NULL,'Active'),(673,'Appenzell Innerrhoden','State','AI',204,NULL,'Active'),(674,'Appenzell Ausserrhoden','State','AR',204,NULL,'Active'),(675,'Bern','State','BE',204,NULL,'Active'),(676,'Basel-Landschaft','State','BL',204,NULL,'Active'),(677,'Basel-Stadt','State','BS',204,NULL,'Active'),(678,'Fribourg','State','FR',204,NULL,'Active'),(679,'Geneva','State','GE',204,NULL,'Active'),(680,'Glarus','State','GL',204,NULL,'Active'),(681,'Graubunden','State','GR',204,NULL,'Active'),(682,'Jura','State','JU',204,NULL,'Active'),(683,'Luzern','State','LU',204,NULL,'Active'),(684,'Neuchatel','State','NE',204,NULL,'Active'),(685,'Nidwalden','State','NW',204,NULL,'Active'),(686,'Obwalden','State','OW',204,NULL,'Active'),(687,'Sankt Gallen','State','SG',204,NULL,'Active'),(688,'Schaffhausen','State','SH',204,NULL,'Active'),(689,'Solothurn','State','SO',204,NULL,'Active'),(690,'Schwyz','State','SZ',204,NULL,'Active'),(691,'Thurgau','State','TG',204,NULL,'Active'),(692,'Ticino','State','TI',204,NULL,'Active'),(693,'Uri','State','UR',204,NULL,'Active'),(694,'Vaud','State','VD',204,NULL,'Active'),(695,'Valais','State','VS',204,NULL,'Active'),(696,'Zug','State','ZG',204,NULL,'Active'),(697,'Zurich','State','ZH',204,NULL,'Active'),(698,'18 Montagnes','State','06',54,NULL,'Active'),(699,'Agnebi','State','16',54,NULL,'Active'),(700,'Bas-Sassandra','State','09',54,NULL,'Active'),(701,'Denguele','State','10',54,NULL,'Active'),(702,'Haut-Sassandra','State','02',54,NULL,'Active'),(703,'Lacs','State','07',54,NULL,'Active'),(704,'Lagunes','State','01',54,NULL,'Active'),(705,'Marahoue','State','12',54,NULL,'Active'),(706,'Moyen-Comoe','State','05',54,NULL,'Active'),(707,'Nzi-Comoe','State','11',54,NULL,'Active'),(708,'Savanes','State','03',54,NULL,'Active'),(709,'Sud-Bandama','State','15',54,NULL,'Active'),(710,'Sud-Comoe','State','13',54,NULL,'Active'),(711,'Vallee du Bandama','State','04',54,NULL,'Active'),(712,'Worodouqou','State','14',54,NULL,'Active'),(713,'Zanzan','State','08',54,NULL,'Active'),(714,'Aisen del General Carlos Ibanez del Campo','State','AI',44,NULL,'Active'),(715,'Antofagasta','State','AN',44,NULL,'Active'),(716,'Araucania','State','AR',44,NULL,'Active'),(717,'Atacama','State','AT',44,NULL,'Active'),(718,'Bio-Bio','State','BI',44,NULL,'Active'),(719,'Coquimbo','State','CO',44,NULL,'Active'),(720,'Libertador General Bernardo O\'Higgins','State','LI',44,NULL,'Active'),(721,'Los Lagos','State','LL',44,NULL,'Active'),(722,'Magallanes','State','MA',44,NULL,'Active'),(723,'Maule','State','ML',44,NULL,'Active'),(724,'Region Metropolitana de Santiago','State','RM',44,NULL,'Active'),(725,'Tarapaca','State','TA',44,NULL,'Active'),(726,'Valparaiso','State','VS',44,NULL,'Active'),(727,'Adamaoua','State','AD',38,NULL,'Active'),(728,'Centre','State','CE',38,NULL,'Active'),(729,'East','State','ES',38,NULL,'Active'),(730,'Far North','State','EN',38,NULL,'Active'),(731,'North','State','NO',38,NULL,'Active'),(732,'South','State','SW',38,NULL,'Active'),(733,'South-West','State','SW',38,NULL,'Active'),(734,'West','State','OU',38,NULL,'Active'),(735,'Beijing','State','11',45,NULL,'Active'),(736,'Chongqing','State','50',45,NULL,'Active'),(737,'Shanghai','State','31',45,NULL,'Active'),(738,'Tianjin','State','12',45,NULL,'Active'),(739,'Anhui','State','34',45,NULL,'Active'),(740,'Fujian','State','35',45,NULL,'Active'),(741,'Gansu','State','62',45,NULL,'Active'),(742,'Guangdong','State','44',45,NULL,'Active'),(743,'Guizhou','State','52',45,NULL,'Active'),(744,'Hainan','State','46',45,NULL,'Active'),(745,'Hebei','State','13',45,NULL,'Active'),(746,'Heilongjiang','State','23',45,NULL,'Active'),(747,'Henan','State','41',45,NULL,'Active'),(748,'Hubei','State','42',45,NULL,'Active'),(749,'Hunan','State','43',45,NULL,'Active'),(750,'Jiangsu','State','32',45,NULL,'Active'),(751,'Jiangxi','State','36',45,NULL,'Active'),(752,'Jilin','State','22',45,NULL,'Active'),(753,'Liaoning','State','21',45,NULL,'Active'),(754,'Qinghai','State','63',45,NULL,'Active'),(755,'Shaanxi','State','61',45,NULL,'Active'),(756,'Shandong','State','37',45,NULL,'Active'),(757,'Shanxi','State','14',45,NULL,'Active'),(758,'Sichuan','State','51',45,NULL,'Active'),(759,'Taiwan','State','71',45,NULL,'Active'),(760,'Yunnan','State','53',45,NULL,'Active'),(761,'Zhejiang','State','33',45,NULL,'Active'),(762,'Guangxi','State','45',45,NULL,'Active'),(763,'Neia Mongol (mn)','State','15',45,NULL,'Active'),(764,'Xinjiang','State','65',45,NULL,'Active'),(765,'Xizang','State','54',45,NULL,'Active'),(766,'Hong Kong','State','91',45,NULL,'Active'),(767,'Macau','State','92',45,NULL,'Active'),(768,'Distrito Capital de Bogotá','State','DC',48,NULL,'Active'),(769,'Amazonea','State','AMA',48,NULL,'Active'),(770,'Antioquia','State','ANT',48,NULL,'Active'),(771,'Arauca','State','ARA',48,NULL,'Active'),(772,'Atlántico','State','ATL',48,NULL,'Active'),(773,'Bolívar','State','BOL',48,NULL,'Active'),(774,'Boyacá','State','BOY',48,NULL,'Active'),(775,'Caldea','State','CAL',48,NULL,'Active'),(776,'Caquetá','State','CAQ',48,NULL,'Active'),(777,'Casanare','State','CAS',48,NULL,'Active'),(778,'Cauca','State','CAU',48,NULL,'Active'),(779,'Cesar','State','CES',48,NULL,'Active'),(780,'Córdoba','State','COR',48,NULL,'Active'),(781,'Cundinamarca','State','CUN',48,NULL,'Active'),(782,'Chocó','State','CHO',48,NULL,'Active'),(783,'Guainía','State','GUA',48,NULL,'Active'),(784,'Guaviare','State','GUV',48,NULL,'Active'),(785,'La Guajira','State','LAG',48,NULL,'Active'),(786,'Magdalena','State','MAG',48,NULL,'Active'),(787,'Meta','State','MET',48,NULL,'Active'),(788,'Nariño','State','NAR',48,NULL,'Active'),(789,'Norte de Santander','State','NSA',48,NULL,'Active'),(790,'Putumayo','State','PUT',48,NULL,'Active'),(791,'Quindio','State','QUI',48,NULL,'Active'),(792,'Risaralda','State','RIS',48,NULL,'Active'),(793,'San Andrés, Providencia y Santa Catalina','State','SAP',48,NULL,'Active'),(794,'Santander','State','SAN',48,NULL,'Active'),(795,'Sucre','State','SUC',48,NULL,'Active'),(796,'Tolima','State','TOL',48,NULL,'Active'),(797,'Valle del Cauca','State','VAC',48,NULL,'Active'),(798,'Vaupés','State','VAU',48,NULL,'Active'),(799,'Vichada','State','VID',48,NULL,'Active'),(800,'Alajuela','State','A',53,NULL,'Active'),(801,'Cartago','State','C',53,NULL,'Active'),(802,'Guanacaste','State','G',53,NULL,'Active'),(803,'Heredia','State','H',53,NULL,'Active'),(804,'Limon','State','L',53,NULL,'Active'),(805,'Puntarenas','State','P',53,NULL,'Active'),(806,'San Jose','State','SJ',53,NULL,'Active'),(807,'Camagey','State','09',56,NULL,'Active'),(808,'Ciego de `vila','State','08',56,NULL,'Active'),(809,'Cienfuegos','State','06',56,NULL,'Active'),(810,'Ciudad de La Habana','State','03',56,NULL,'Active'),(811,'Granma','State','12',56,NULL,'Active'),(812,'Guantanamo','State','14',56,NULL,'Active'),(813,'Holquin','State','11',56,NULL,'Active'),(814,'La Habana','State','02',56,NULL,'Active'),(815,'Las Tunas','State','10',56,NULL,'Active'),(816,'Matanzas','State','04',56,NULL,'Active'),(817,'Pinar del Rio','State','01',56,NULL,'Active'),(818,'Sancti Spiritus','State','07',56,NULL,'Active'),(819,'Santiago de Cuba','State','13',56,NULL,'Active'),(820,'Villa Clara','State','05',56,NULL,'Active'),(821,'Isla de la Juventud','State','99',56,NULL,'Active'),(822,'Pinar del Roo','State','PR',56,NULL,'Active'),(823,'Ciego de Avila','State','CA',56,NULL,'Active'),(824,'Camagoey','State','CG',56,NULL,'Active'),(825,'Holgun','State','HO',56,NULL,'Active'),(826,'Sancti Spritus','State','SS',56,NULL,'Active'),(827,'Municipio Especial Isla de la Juventud','State','IJ',56,NULL,'Active'),(828,'Boa Vista','State','BV',40,NULL,'Active'),(829,'Brava','State','BR',40,NULL,'Active'),(830,'Calheta de Sao Miguel','State','CS',40,NULL,'Active'),(831,'Fogo','State','FO',40,NULL,'Active'),(832,'Maio','State','MA',40,NULL,'Active'),(833,'Mosteiros','State','MO',40,NULL,'Active'),(834,'Paul','State','PA',40,NULL,'Active'),(835,'Porto Novo','State','PN',40,NULL,'Active'),(836,'Praia','State','PR',40,NULL,'Active'),(837,'Ribeira Grande','State','RG',40,NULL,'Active'),(838,'Sal','State','SL',40,NULL,'Active'),(839,'Sao Domingos','State','SD',40,NULL,'Active'),(840,'Sao Filipe','State','SF',40,NULL,'Active'),(841,'Sao Nicolau','State','SN',40,NULL,'Active'),(842,'Sao Vicente','State','SV',40,NULL,'Active'),(843,'Tarrafal','State','TA',40,NULL,'Active'),(844,'Ammochostos Magusa','State','04',57,NULL,'Active'),(845,'Keryneia','State','06',57,NULL,'Active'),(846,'Larnaka','State','03',57,NULL,'Active'),(847,'Lefkosia','State','01',57,NULL,'Active'),(848,'Lemesos','State','02',57,NULL,'Active'),(849,'Pafos','State','05',57,NULL,'Active'),(850,'Jiho?eský kraj','State','JC',58,NULL,'Active'),(851,'Jihomoravský kraj','State','JM',58,NULL,'Active'),(852,'Karlovarský kraj','State','KA',58,NULL,'Active'),(853,'Královéhradecký kraj','State','KR',58,NULL,'Active'),(854,'Liberecký kraj','State','LI',58,NULL,'Active'),(855,'Moravskoslezský kraj','State','MO',58,NULL,'Active'),(856,'Olomoucký kraj','State','OL',58,NULL,'Active'),(857,'Pardubický kraj','State','PA',58,NULL,'Active'),(858,'Plze?ský kraj','State','PL',58,NULL,'Active'),(859,'Praha, hlavní m?sto','State','PR',58,NULL,'Active'),(860,'St?edo?eský kraj','State','ST',58,NULL,'Active'),(861,'Ústecký kraj','State','US',58,NULL,'Active'),(862,'Vyso?ina','State','VY',58,NULL,'Active'),(863,'Zlínský kraj','State','ZL',58,NULL,'Active'),(864,'Baden-Wuerttemberg','State','BW',81,NULL,'Active'),(865,'Bayern','State','BY',81,NULL,'Active'),(866,'Bremen','State','HB',81,NULL,'Active'),(867,'Hamburg','State','HH',81,NULL,'Active'),(868,'Hessen','State','HE',81,NULL,'Active'),(869,'Niedersachsen','State','NI',81,NULL,'Active'),(870,'Nordrhein-Westfalen','State','NW',81,NULL,'Active'),(871,'Rheinland-Pfalz','State','RP',81,NULL,'Active'),(872,'Saarland','State','SL',81,NULL,'Active'),(873,'Schleswig-Holstein','State','SH',81,NULL,'Active'),(874,'Berlin','State','BR',81,NULL,'Active'),(875,'Brandenburg','State','BB',81,NULL,'Active'),(876,'Mecklenburg-Vorpommern','State','MV',81,NULL,'Active'),(877,'Sachsen','State','SN',81,NULL,'Active'),(878,'Sachsen-Anhalt','State','ST',81,NULL,'Active'),(879,'Thueringen','State','TH',81,NULL,'Active'),(880,'Ali Sabiah','State','AS',60,NULL,'Active'),(881,'Dikhil','State','DI',60,NULL,'Active'),(882,'Djibouti','State','DJ',60,NULL,'Active'),(883,'Obock','State','OB',60,NULL,'Active'),(884,'Tadjoura','State','TA',60,NULL,'Active'),(885,'Frederiksberg','State','147',59,NULL,'Active'),(886,'Copenhagen City','State','101',59,NULL,'Active'),(887,'Copenhagen','State','015',59,NULL,'Active'),(888,'Frederiksborg','State','020',59,NULL,'Active'),(889,'Roskilde','State','025',59,NULL,'Active'),(890,'Vestsjælland','State','030',59,NULL,'Active'),(891,'Storstrøm','State','035',59,NULL,'Active'),(892,'Bornholm','State','040',59,NULL,'Active'),(893,'Fyn','State','042',59,NULL,'Active'),(894,'South Jutland','State','050',59,NULL,'Active'),(895,'Ribe','State','055',59,NULL,'Active'),(896,'Vejle','State','060',59,NULL,'Active'),(897,'Ringkjøbing','State','065',59,NULL,'Active'),(898,'Århus','State','070',59,NULL,'Active'),(899,'Viborg','State','076',59,NULL,'Active'),(900,'North Jutland','State','080',59,NULL,'Active'),(901,'Distrito Nacional (Santo Domingo)','State','01',62,NULL,'Active'),(902,'Azua','State','02',62,NULL,'Active'),(903,'Bahoruco','State','03',62,NULL,'Active'),(904,'Barahona','State','04',62,NULL,'Active'),(905,'Dajabón','State','05',62,NULL,'Active'),(906,'Duarte','State','06',62,NULL,'Active'),(907,'El Seybo [El Seibo]','State','08',62,NULL,'Active'),(908,'Espaillat','State','09',62,NULL,'Active'),(909,'Hato Mayor','State','30',62,NULL,'Active'),(910,'Independencia','State','10',62,NULL,'Active'),(911,'La Altagracia','State','11',62,NULL,'Active'),(912,'La Estrelleta [Elias Pina]','State','07',62,NULL,'Active'),(913,'La Romana','State','12',62,NULL,'Active'),(914,'La Vega','State','13',62,NULL,'Active'),(915,'Maroia Trinidad Sánchez','State','14',62,NULL,'Active'),(916,'Monseñor Nouel','State','28',62,NULL,'Active'),(917,'Monte Cristi','State','15',62,NULL,'Active'),(918,'Monte Plata','State','29',62,NULL,'Active'),(919,'Pedernales','State','16',62,NULL,'Active'),(920,'Peravia','State','17',62,NULL,'Active'),(921,'Puerto Plata','State','18',62,NULL,'Active'),(922,'Salcedo','State','19',62,NULL,'Active'),(923,'Samaná','State','20',62,NULL,'Active'),(924,'San Cristóbal','State','21',62,NULL,'Active'),(925,'San Pedro de Macorís','State','23',62,NULL,'Active'),(926,'Sánchez Ramírez','State','24',62,NULL,'Active'),(927,'Santiago','State','25',62,NULL,'Active'),(928,'Santiago Rodríguez','State','26',62,NULL,'Active'),(929,'Valverde','State','27',62,NULL,'Active'),(930,'Adrar','State','01',3,NULL,'Active'),(931,'Ain Defla','State','44',3,NULL,'Active'),(932,'Ain Tmouchent','State','46',3,NULL,'Active'),(933,'Alger','State','16',3,NULL,'Active'),(934,'Annaba','State','23',3,NULL,'Active'),(935,'Batna','State','05',3,NULL,'Active'),(936,'Bechar','State','08',3,NULL,'Active'),(937,'Bejaia','State','06',3,NULL,'Active'),(938,'Biskra','State','07',3,NULL,'Active'),(939,'Blida','State','09',3,NULL,'Active'),(940,'Bordj Bou Arreridj','State','34',3,NULL,'Active'),(941,'Bouira','State','10',3,NULL,'Active'),(942,'Boumerdes','State','35',3,NULL,'Active'),(943,'Chlef','State','02',3,NULL,'Active'),(944,'Constantine','State','25',3,NULL,'Active'),(945,'Djelfa','State','17',3,NULL,'Active'),(946,'El Bayadh','State','32',3,NULL,'Active'),(947,'El Oued','State','39',3,NULL,'Active'),(948,'El Tarf','State','36',3,NULL,'Active'),(949,'Ghardaia','State','47',3,NULL,'Active'),(950,'Guelma','State','24',3,NULL,'Active'),(951,'Illizi','State','33',3,NULL,'Active'),(952,'Jijel','State','18',3,NULL,'Active'),(953,'Khenchela','State','40',3,NULL,'Active'),(954,'Laghouat','State','03',3,NULL,'Active'),(955,'Mascara','State','29',3,NULL,'Active'),(956,'Medea','State','26',3,NULL,'Active'),(957,'Mila','State','43',3,NULL,'Active'),(958,'Mostaganem','State','27',3,NULL,'Active'),(959,'Msila','State','28',3,NULL,'Active'),(960,'Naama','State','45',3,NULL,'Active'),(961,'Oran','State','31',3,NULL,'Active'),(962,'Ouargla','State','30',3,NULL,'Active'),(963,'Oum el Bouaghi','State','04',3,NULL,'Active'),(964,'Relizane','State','48',3,NULL,'Active'),(965,'Saida','State','20',3,NULL,'Active'),(966,'Setif','State','19',3,NULL,'Active'),(967,'Sidi Bel Abbes','State','22',3,NULL,'Active'),(968,'Skikda','State','21',3,NULL,'Active'),(969,'Souk Ahras','State','41',3,NULL,'Active'),(970,'Tamanghasset','State','11',3,NULL,'Active'),(971,'Tebessa','State','12',3,NULL,'Active'),(972,'Tiaret','State','14',3,NULL,'Active'),(973,'Tindouf','State','37',3,NULL,'Active'),(974,'Tipaza','State','42',3,NULL,'Active'),(975,'Tissemsilt','State','38',3,NULL,'Active'),(976,'Tizi Ouzou','State','15',3,NULL,'Active'),(977,'Tlemcen','State','13',3,NULL,'Active'),(978,'Azuay','State','A',64,NULL,'Active'),(979,'Bolivar','State','B',64,NULL,'Active'),(980,'Canar','State','F',64,NULL,'Active'),(981,'Carchi','State','C',64,NULL,'Active'),(982,'Cotopaxi','State','X',64,NULL,'Active'),(983,'Chimborazo','State','H',64,NULL,'Active'),(984,'El Oro','State','O',64,NULL,'Active'),(985,'Esmeraldas','State','E',64,NULL,'Active'),(986,'Galapagos','State','W',64,NULL,'Active'),(987,'Guayas','State','G',64,NULL,'Active'),(988,'Imbabura','State','I',64,NULL,'Active'),(989,'Loja','State','L',64,NULL,'Active'),(990,'Los Rios','State','R',64,NULL,'Active'),(991,'Manabi','State','M',64,NULL,'Active'),(992,'Morona-Santiago','State','S',64,NULL,'Active'),(993,'Napo','State','N',64,NULL,'Active'),(994,'Orellana','State','D',64,NULL,'Active'),(995,'Pastaza','State','Y',64,NULL,'Active'),(996,'Pichincha','State','P',64,NULL,'Active'),(997,'Sucumbios','State','U',64,NULL,'Active'),(998,'Tungurahua','State','T',64,NULL,'Active'),(999,'Zamora-Chinchipe','State','Z',64,NULL,'Active'),(1000,'Harjumsa','State','37',69,NULL,'Active'),(1001,'Hitumea','State','39',69,NULL,'Active'),(1002,'Ida-Virumsa','State','44',69,NULL,'Active'),(1003,'Jogevamsa','State','49',69,NULL,'Active'),(1004,'Jarvamsa','State','51',69,NULL,'Active'),(1005,'Lasnemsa','State','57',69,NULL,'Active'),(1006,'Laane-Virumaa','State','59',69,NULL,'Active'),(1007,'Polvamea','State','65',69,NULL,'Active'),(1008,'Parnumsa','State','67',69,NULL,'Active'),(1009,'Raplamsa','State','70',69,NULL,'Active'),(1010,'Saaremsa','State','74',69,NULL,'Active'),(1011,'Tartumsa','State','7B',69,NULL,'Active'),(1012,'Valgamaa','State','82',69,NULL,'Active'),(1013,'Viljandimsa','State','84',69,NULL,'Active'),(1014,'Vorumaa','State','86',69,NULL,'Active'),(1015,'Ad Daqahllyah','State','DK',65,NULL,'Active'),(1016,'Al Bahr al Ahmar','State','BA',65,NULL,'Active'),(1017,'Al Buhayrah','State','BH',65,NULL,'Active'),(1018,'Al Fayym','State','FYM',65,NULL,'Active'),(1019,'Al Gharbiyah','State','GH',65,NULL,'Active'),(1020,'Al Iskandarlyah','State','ALX',65,NULL,'Active'),(1021,'Al Isma illyah','State','IS',65,NULL,'Active'),(1022,'Al Jizah','State','GZ',65,NULL,'Active'),(1023,'Al Minuflyah','State','MNF',65,NULL,'Active'),(1024,'Al Minya','State','MN',65,NULL,'Active'),(1025,'Al Qahirah','State','C',65,NULL,'Active'),(1026,'Al Qalyublyah','State','KB',65,NULL,'Active'),(1027,'Al Wadi al Jadid','State','WAD',65,NULL,'Active'),(1028,'Ash Sharqiyah','State','SHR',65,NULL,'Active'),(1029,'As Suways','State','SUZ',65,NULL,'Active'),(1030,'Aswan','State','ASN',65,NULL,'Active'),(1031,'Asyut','State','AST',65,NULL,'Active'),(1032,'Bani Suwayf','State','BNS',65,NULL,'Active'),(1033,'Bur Sa\'id','State','PTS',65,NULL,'Active'),(1034,'Dumyat','State','DT',65,NULL,'Active'),(1035,'Janub Sina\'','State','JS',65,NULL,'Active'),(1036,'Kafr ash Shaykh','State','KFS',65,NULL,'Active'),(1037,'Matruh','State','MT',65,NULL,'Active'),(1038,'Qina','State','KN',65,NULL,'Active'),(1039,'Shamal Sina\'','State','SIN',65,NULL,'Active'),(1040,'Suhaj','State','SHG',65,NULL,'Active'),(1041,'Anseba','State','AN',68,NULL,'Active'),(1042,'Debub','State','DU',68,NULL,'Active'),(1043,'Debubawi Keyih Bahri [Debub-Keih-Bahri]','State','DK',68,NULL,'Active'),(1044,'Gash-Barka','State','GB',68,NULL,'Active'),(1045,'Maakel [Maekel]','State','MA',68,NULL,'Active'),(1046,'Semenawi Keyih Bahri [Semien-Keih-Bahri]','State','SK',68,NULL,'Active'),(1047,'Álava','State','VI',197,NULL,'Active'),(1048,'Albacete','State','AB',197,NULL,'Active'),(1049,'Alicante','State','A',197,NULL,'Active'),(1050,'Almería','State','AL',197,NULL,'Active'),(1051,'Asturias','State','O',197,NULL,'Active'),(1052,'Ávila','State','AV',197,NULL,'Active'),(1053,'Badajoz','State','BA',197,NULL,'Active'),(1054,'Baleares','State','PM',197,NULL,'Active'),(1055,'Barcelona','State','B',197,NULL,'Active'),(1056,'Burgos','State','BU',197,NULL,'Active'),(1057,'Cáceres','State','CC',197,NULL,'Active'),(1058,'Cádiz','State','CA',197,NULL,'Active'),(1059,'Cantabria','State','S',197,NULL,'Active'),(1060,'Castellón','State','CS',197,NULL,'Active'),(1061,'Ciudad Real','State','CR',197,NULL,'Active'),(1062,'Cuenca','State','CU',197,NULL,'Active'),(1063,'Girona [Gerona]','State','GE',197,NULL,'Active'),(1064,'Granada','State','GR',197,NULL,'Active'),(1065,'Guadalajara','State','GU',197,NULL,'Active'),(1066,'Guipúzcoa','State','SS',197,NULL,'Active'),(1067,'Huelva','State','H',197,NULL,'Active'),(1068,'Huesca','State','HU',197,NULL,'Active'),(1069,'Jaén','State','J',197,NULL,'Active'),(1070,'La Coruña','State','C',197,NULL,'Active'),(1071,'La Rioja','State','LO',197,NULL,'Active'),(1072,'Las Palmas','State','GC',197,NULL,'Active'),(1073,'León','State','LE',197,NULL,'Active'),(1074,'Lleida [Lérida]','State','L',197,NULL,'Active'),(1075,'Lugo','State','LU',197,NULL,'Active'),(1076,'Madrid','State','M',197,NULL,'Active'),(1077,'Málaga','State','MA',197,NULL,'Active'),(1078,'Murcia','State','MU',197,NULL,'Active'),(1079,'Navarra','State','NA',197,NULL,'Active'),(1080,'Ourense','State','OR',197,NULL,'Active'),(1081,'Palencia','State','P',197,NULL,'Active'),(1082,'Pontevedra','State','PO',197,NULL,'Active'),(1083,'Salamanca','State','SA',197,NULL,'Active'),(1084,'Santa Cruz de Tenerife','State','TF',197,NULL,'Active'),(1085,'Segovia','State','SG',197,NULL,'Active'),(1086,'Sevilla','State','SE',197,NULL,'Active'),(1087,'Soria','State','SO',197,NULL,'Active'),(1088,'Tarragona','State','T',197,NULL,'Active'),(1089,'Teruel','State','TE',197,NULL,'Active'),(1090,'Valencia','State','V',197,NULL,'Active'),(1091,'Valladolid','State','VA',197,NULL,'Active'),(1092,'Vizcaya','State','BI',197,NULL,'Active'),(1093,'Zamora','State','ZA',197,NULL,'Active'),(1094,'Zaragoza','State','Z',197,NULL,'Active'),(1095,'Ceuta','State','CE',197,NULL,'Active'),(1096,'Melilla','State','ML',197,NULL,'Active'),(1097,'Addis Ababa','State','AA',70,NULL,'Active'),(1098,'Dire Dawa','State','DD',70,NULL,'Active'),(1099,'Afar','State','AF',70,NULL,'Active'),(1100,'Amara','State','AM',70,NULL,'Active'),(1101,'Benshangul-Gumaz','State','BE',70,NULL,'Active'),(1102,'Gambela Peoples','State','GA',70,NULL,'Active'),(1103,'Harari People','State','HA',70,NULL,'Active'),(1104,'Oromia','State','OR',70,NULL,'Active'),(1105,'Somali','State','SO',70,NULL,'Active'),(1106,'Southern Nations, Nationalities and Peoples','State','SN',70,NULL,'Active'),(1107,'Tigrai','State','TI',70,NULL,'Active'),(1108,'Eastern','State','E',73,NULL,'Active'),(1109,'Northern','State','N',73,NULL,'Active'),(1110,'Western','State','W',73,NULL,'Active'),(1111,'Rotuma','State','R',73,NULL,'Active'),(1112,'Chuuk','State','TRK',140,NULL,'Active'),(1113,'Kosrae','State','KSA',140,NULL,'Active'),(1114,'Pohnpei','State','PNI',140,NULL,'Active'),(1115,'Yap','State','YAP',140,NULL,'Active'),(1116,'Ain','State','01',75,NULL,'Active'),(1117,'Aisne','State','02',75,NULL,'Active'),(1118,'Allier','State','03',75,NULL,'Active'),(1119,'Alpes-de-Haute-Provence','State','04',75,NULL,'Active'),(1120,'Alpes-Maritimes','State','06',75,NULL,'Active'),(1121,'Ardèche','State','07',75,NULL,'Active'),(1122,'Ardennes','State','08',75,NULL,'Active'),(1123,'Ariège','State','09',75,NULL,'Active'),(1124,'Aube','State','10',75,NULL,'Active'),(1125,'Aude','State','11',75,NULL,'Active'),(1126,'Aveyron','State','12',75,NULL,'Active'),(1127,'Bas-Rhin','State','67',75,NULL,'Active'),(1128,'Bouches-du-Rhône','State','13',75,NULL,'Active'),(1129,'Calvados','State','14',75,NULL,'Active'),(1130,'Cantal','State','15',75,NULL,'Active'),(1131,'Charente','State','16',75,NULL,'Active'),(1132,'Charente-Maritime','State','17',75,NULL,'Active'),(1133,'Cher','State','18',75,NULL,'Active'),(1134,'Corrèze','State','19',75,NULL,'Active'),(1135,'Corse-du-Sud','State','20A',75,NULL,'Active'),(1136,'Côte-d\'Or','State','21',75,NULL,'Active'),(1137,'Côtes-d\'Armor','State','22',75,NULL,'Active'),(1138,'Creuse','State','23',75,NULL,'Active'),(1139,'Deux-Sèvres','State','79',75,NULL,'Active'),(1140,'Dordogne','State','24',75,NULL,'Active'),(1141,'Doubs','State','25',75,NULL,'Active'),(1142,'Drôme','State','26',75,NULL,'Active'),(1143,'Essonne','State','91',75,NULL,'Active'),(1144,'Eure','State','27',75,NULL,'Active'),(1145,'Eure-et-Loir','State','28',75,NULL,'Active'),(1146,'Finistère','State','29',75,NULL,'Active'),(1147,'Gard','State','30',75,NULL,'Active'),(1148,'Gers','State','32',75,NULL,'Active'),(1149,'Gironde','State','33',75,NULL,'Active'),(1150,'Haut-Rhin','State','68',75,NULL,'Active'),(1151,'Haute-Corse','State','20B',75,NULL,'Active'),(1152,'Haute-Garonne','State','31',75,NULL,'Active'),(1153,'Haute-Loire','State','43',75,NULL,'Active'),(1154,'Haute-Saône','State','70',75,NULL,'Active'),(1155,'Haute-Savoie','State','74',75,NULL,'Active'),(1156,'Haute-Vienne','State','87',75,NULL,'Active'),(1157,'Hautes-Alpes','State','05',75,NULL,'Active'),(1158,'Hautes-Pyrénées','State','65',75,NULL,'Active'),(1159,'Hauts-de-Seine','State','92',75,NULL,'Active'),(1160,'Hérault','State','34',75,NULL,'Active'),(1161,'Indre','State','36',75,NULL,'Active'),(1162,'Ille-et-Vilaine','State','35',75,NULL,'Active'),(1163,'Indre-et-Loire','State','37',75,NULL,'Active'),(1164,'Isère','State','38',75,NULL,'Active'),(1165,'Landes','State','40',75,NULL,'Active'),(1166,'Loir-et-Cher','State','41',75,NULL,'Active'),(1167,'Loire','State','42',75,NULL,'Active'),(1168,'Loire-Atlantique','State','44',75,NULL,'Active'),(1169,'Loiret','State','45',75,NULL,'Active'),(1170,'Lot','State','46',75,NULL,'Active'),(1171,'Lot-et-Garonne','State','47',75,NULL,'Active'),(1172,'Lozère','State','48',75,NULL,'Active'),(1173,'Maine-et-Loire','State','49',75,NULL,'Active'),(1174,'Manche','State','50',75,NULL,'Active'),(1175,'Marne','State','51',75,NULL,'Active'),(1176,'Mayenne','State','53',75,NULL,'Active'),(1177,'Meurthe-et-Moselle','State','54',75,NULL,'Active'),(1178,'Meuse','State','55',75,NULL,'Active'),(1179,'Morbihan','State','56',75,NULL,'Active'),(1180,'Moselle','State','57',75,NULL,'Active'),(1181,'Nièvre','State','58',75,NULL,'Active'),(1182,'Nord','State','59',75,NULL,'Active'),(1183,'Oise','State','60',75,NULL,'Active'),(1184,'Orne','State','61',75,NULL,'Active'),(1185,'Paris','State','75',75,NULL,'Active'),(1186,'Pas-de-Calais','State','62',75,NULL,'Active'),(1187,'Puy-de-Dôme','State','63',75,NULL,'Active'),(1188,'Pyrénées-Atlantiques','State','64',75,NULL,'Active'),(1189,'Pyrénées-Orientales','State','66',75,NULL,'Active'),(1190,'Rhône','State','69',75,NULL,'Active'),(1191,'Saône-et-Loire','State','71',75,NULL,'Active'),(1192,'Sarthe','State','72',75,NULL,'Active'),(1193,'Savoie','State','73',75,NULL,'Active'),(1194,'Seine-et-Marne','State','77',75,NULL,'Active'),(1195,'Seine-Maritime','State','76',75,NULL,'Active'),(1196,'Seine-Saint-Denis','State','93',75,NULL,'Active'),(1197,'Somme','State','80',75,NULL,'Active'),(1198,'Tarn','State','81',75,NULL,'Active'),(1199,'Tarn-et-Garonne','State','82',75,NULL,'Active'),(1200,'Val d\'Oise','State','95',75,NULL,'Active'),(1201,'Territoire de Belfort','State','90',75,NULL,'Active'),(1202,'Val-de-Marne','State','94',75,NULL,'Active'),(1203,'Var','State','83',75,NULL,'Active'),(1204,'Vaucluse','State','84',75,NULL,'Active'),(1205,'Vendée','State','85',75,NULL,'Active'),(1206,'Vienne','State','86',75,NULL,'Active'),(1207,'Vosges','State','88',75,NULL,'Active'),(1208,'Yonne','State','89',75,NULL,'Active'),(1209,'Yvelines','State','78',75,NULL,'Active'),(1210,'Aberdeen City','State','ABE',225,NULL,'Active'),(1211,'Aberdeenshire','State','ABD',225,NULL,'Active'),(1212,'Angus','State','ANS',225,NULL,'Active'),(1213,'Co Antrim','State','ANT',225,NULL,'Active'),(1214,'Argyll and Bute','State','AGB',225,NULL,'Active'),(1215,'Co Armagh','State','ARM',225,NULL,'Active'),(1216,'Bedfordshire','State','BDF',225,NULL,'Active'),(1217,'Gwent','State','BGW',225,NULL,'Active'),(1218,'Bristol, City of','State','BST',225,NULL,'Active'),(1219,'Buckinghamshire','State','BKM',225,NULL,'Active'),(1220,'Cambridgeshire','State','CAM',225,NULL,'Active'),(1221,'Cheshire','State','CHS',225,NULL,'Active'),(1222,'Clackmannanshire','State','CLK',225,NULL,'Active'),(1223,'Cornwall','State','CON',225,NULL,'Active'),(1224,'Cumbria','State','CMA',225,NULL,'Active'),(1225,'Derbyshire','State','DBY',225,NULL,'Active'),(1226,'Co Londonderry','State','DRY',225,NULL,'Active'),(1227,'Devon','State','DEV',225,NULL,'Active'),(1228,'Dorset','State','DOR',225,NULL,'Active'),(1229,'Co Down','State','DOW',225,NULL,'Active'),(1230,'Dumfries and Galloway','State','DGY',225,NULL,'Active'),(1231,'Dundee City','State','DND',225,NULL,'Active'),(1232,'County Durham','State','DUR',225,NULL,'Active'),(1233,'East Ayrshire','State','EAY',225,NULL,'Active'),(1234,'East Dunbartonshire','State','EDU',225,NULL,'Active'),(1235,'East Lothian','State','ELN',225,NULL,'Active'),(1236,'East Renfrewshire','State','ERW',225,NULL,'Active'),(1237,'East Riding of Yorkshire','State','ERY',225,NULL,'Active'),(1238,'East Sussex','State','ESX',225,NULL,'Active'),(1239,'Edinburgh, City of','State','EDH',225,NULL,'Active'),(1240,'Na h-Eileanan Siar','State','ELS',225,NULL,'Active'),(1241,'Essex','State','ESS',225,NULL,'Active'),(1242,'Falkirk','State','FAL',225,NULL,'Active'),(1243,'Co Fermanagh','State','FER',225,NULL,'Active'),(1244,'Fife','State','FIF',225,NULL,'Active'),(1245,'Glasgow City','State','GLG',225,NULL,'Active'),(1246,'Gloucestershire','State','GLS',225,NULL,'Active'),(1247,'Gwynedd','State','GWN',225,NULL,'Active'),(1248,'Hampshire','State','HAM',225,NULL,'Active'),(1249,'Herefordshire','State','HEF',225,NULL,'Active'),(1250,'Hertfordshire','State','HRT',225,NULL,'Active'),(1251,'Highland','State','HED',225,NULL,'Active'),(1252,'Inverclyde','State','IVC',225,NULL,'Active'),(1253,'Isle of Wight','State','IOW',225,NULL,'Active'),(1254,'Kent','State','KEN',225,NULL,'Active'),(1255,'Lancashire','State','LAN',225,NULL,'Active'),(1256,'Leicestershire','State','LEC',225,NULL,'Active'),(1257,'Midlothian','State','MLN',225,NULL,'Active'),(1258,'Moray','State','MRY',225,NULL,'Active'),(1259,'Norfolk','State','NFK',225,NULL,'Active'),(1260,'North Ayrshire','State','NAY',225,NULL,'Active'),(1261,'North Lanarkshire','State','NLK',225,NULL,'Active'),(1262,'North Yorkshire','State','NYK',225,NULL,'Active'),(1263,'Northamptonshire','State','NTH',225,NULL,'Active'),(1264,'Northumberland','State','NBL',225,NULL,'Active'),(1265,'Nottinghamshire','State','NTT',225,NULL,'Active'),(1266,'Oldham','State','OLD',225,NULL,'Active'),(1267,'Omagh','State','OMH',225,NULL,'Active'),(1268,'Orkney Islands','State','ORR',225,NULL,'Active'),(1269,'Oxfordshire','State','OXF',225,NULL,'Active'),(1270,'Perth and Kinross','State','PKN',225,NULL,'Active'),(1271,'Powys','State','POW',225,NULL,'Active'),(1272,'Renfrewshire','State','RFW',225,NULL,'Active'),(1273,'Rutland','State','RUT',225,NULL,'Active'),(1274,'Scottish Borders','State','SCB',225,NULL,'Active'),(1275,'Shetland Islands','State','ZET',225,NULL,'Active'),(1276,'Shropshire','State','SHR',225,NULL,'Active'),(1277,'Somerset','State','SOM',225,NULL,'Active'),(1278,'South Ayrshire','State','SAY',225,NULL,'Active'),(1279,'South Gloucestershire','State','SGC',225,NULL,'Active'),(1280,'South Lanarkshire','State','SLK',225,NULL,'Active'),(1281,'Staffordshire','State','STS',225,NULL,'Active'),(1282,'Stirling','State','STG',225,NULL,'Active'),(1283,'Suffolk','State','SFK',225,NULL,'Active'),(1284,'Surrey','State','SRY',225,NULL,'Active'),(1285,'Mid Glamorgan','State','VGL',225,NULL,'Active'),(1286,'Warwickshire','State','WAR',225,NULL,'Active'),(1287,'West Dunbartonshire','State','WDU',225,NULL,'Active'),(1288,'West Lothian','State','WLN',225,NULL,'Active'),(1289,'West Sussex','State','WSX',225,NULL,'Active'),(1290,'Wiltshire','State','WIL',225,NULL,'Active'),(1291,'Worcestershire','State','WOR',225,NULL,'Active'),(1292,'Ashanti','State','AH',82,NULL,'Active'),(1293,'Brong-Ahafo','State','BA',82,NULL,'Active'),(1294,'Greater Accra','State','AA',82,NULL,'Active'),(1295,'Upper East','State','UE',82,NULL,'Active'),(1296,'Upper West','State','UW',82,NULL,'Active'),(1297,'Volta','State','TV',82,NULL,'Active'),(1298,'Banjul','State','B',212,NULL,'Active'),(1299,'Lower River','State','L',212,NULL,'Active'),(1300,'MacCarthy Island','State','M',212,NULL,'Active'),(1301,'North Bank','State','N',212,NULL,'Active'),(1302,'Upper River','State','U',212,NULL,'Active'),(1303,'Beyla','State','BE',90,NULL,'Active'),(1304,'Boffa','State','BF',90,NULL,'Active'),(1305,'Boke','State','BK',90,NULL,'Active'),(1306,'Coyah','State','CO',90,NULL,'Active'),(1307,'Dabola','State','DB',90,NULL,'Active'),(1308,'Dalaba','State','DL',90,NULL,'Active'),(1309,'Dinguiraye','State','DI',90,NULL,'Active'),(1310,'Dubreka','State','DU',90,NULL,'Active'),(1311,'Faranah','State','FA',90,NULL,'Active'),(1312,'Forecariah','State','FO',90,NULL,'Active'),(1313,'Fria','State','FR',90,NULL,'Active'),(1314,'Gaoual','State','GA',90,NULL,'Active'),(1315,'Guekedou','State','GU',90,NULL,'Active'),(1316,'Kankan','State','KA',90,NULL,'Active'),(1317,'Kerouane','State','KE',90,NULL,'Active'),(1318,'Kindia','State','KD',90,NULL,'Active'),(1319,'Kissidougou','State','KS',90,NULL,'Active'),(1320,'Koubia','State','KB',90,NULL,'Active'),(1321,'Koundara','State','KN',90,NULL,'Active'),(1322,'Kouroussa','State','KO',90,NULL,'Active'),(1323,'Labe','State','LA',90,NULL,'Active'),(1324,'Lelouma','State','LE',90,NULL,'Active'),(1325,'Lola','State','LO',90,NULL,'Active'),(1326,'Macenta','State','MC',90,NULL,'Active'),(1327,'Mali','State','ML',90,NULL,'Active'),(1328,'Mamou','State','MM',90,NULL,'Active'),(1329,'Mandiana','State','MD',90,NULL,'Active'),(1330,'Nzerekore','State','NZ',90,NULL,'Active'),(1331,'Pita','State','PI',90,NULL,'Active'),(1332,'Siguiri','State','SI',90,NULL,'Active'),(1333,'Telimele','State','TE',90,NULL,'Active'),(1334,'Tougue','State','TO',90,NULL,'Active'),(1335,'Yomou','State','YO',90,NULL,'Active'),(1336,'Region Continental','State','C',67,NULL,'Active'),(1337,'Region Insular','State','I',67,NULL,'Active'),(1338,'Annobon','State','AN',67,NULL,'Active'),(1339,'Bioko Norte','State','BN',67,NULL,'Active'),(1340,'Bioko Sur','State','BS',67,NULL,'Active'),(1341,'Centro Sur','State','CS',67,NULL,'Active'),(1342,'Kie-Ntem','State','KN',67,NULL,'Active'),(1343,'Litoral','State','LI',67,NULL,'Active'),(1344,'Wele-Nzas','State','WN',67,NULL,'Active'),(1345,'Achaïa','State','13',84,NULL,'Active'),(1346,'Aitolia-Akarnania','State','01',84,NULL,'Active'),(1347,'Argolis','State','11',84,NULL,'Active'),(1348,'Arkadia','State','12',84,NULL,'Active'),(1349,'Arta','State','31',84,NULL,'Active'),(1350,'Attiki','State','A1',84,NULL,'Active'),(1351,'Chalkidiki','State','64',84,NULL,'Active'),(1352,'Chania','State','94',84,NULL,'Active'),(1353,'Chios','State','85',84,NULL,'Active'),(1354,'Dodekanisos','State','81',84,NULL,'Active'),(1355,'Drama','State','52',84,NULL,'Active'),(1356,'Evros','State','71',84,NULL,'Active'),(1357,'Evrytania','State','05',84,NULL,'Active'),(1358,'Evvoia','State','04',84,NULL,'Active'),(1359,'Florina','State','63',84,NULL,'Active'),(1360,'Fokis','State','07',84,NULL,'Active'),(1361,'Fthiotis','State','06',84,NULL,'Active'),(1362,'Grevena','State','51',84,NULL,'Active'),(1363,'Ileia','State','14',84,NULL,'Active'),(1364,'Imathia','State','53',84,NULL,'Active'),(1365,'Ioannina','State','33',84,NULL,'Active'),(1366,'Irakleion','State','91',84,NULL,'Active'),(1367,'Karditsa','State','41',84,NULL,'Active'),(1368,'Kastoria','State','56',84,NULL,'Active'),(1369,'Kavalla','State','55',84,NULL,'Active'),(1370,'Kefallinia','State','23',84,NULL,'Active'),(1371,'Kerkyra','State','22',84,NULL,'Active'),(1372,'Kilkis','State','57',84,NULL,'Active'),(1373,'Korinthia','State','15',84,NULL,'Active'),(1374,'Kozani','State','58',84,NULL,'Active'),(1375,'Kyklades','State','82',84,NULL,'Active'),(1376,'Lakonia','State','16',84,NULL,'Active'),(1377,'Larisa','State','42',84,NULL,'Active'),(1378,'Lasithion','State','92',84,NULL,'Active'),(1379,'Lefkas','State','24',84,NULL,'Active'),(1380,'Lesvos','State','83',84,NULL,'Active'),(1381,'Magnisia','State','43',84,NULL,'Active'),(1382,'Messinia','State','17',84,NULL,'Active'),(1383,'Pella','State','59',84,NULL,'Active'),(1384,'Preveza','State','34',84,NULL,'Active'),(1385,'Rethymnon','State','93',84,NULL,'Active'),(1386,'Rodopi','State','73',84,NULL,'Active'),(1387,'Samos','State','84',84,NULL,'Active'),(1388,'Serrai','State','62',84,NULL,'Active'),(1389,'Thesprotia','State','32',84,NULL,'Active'),(1390,'Thessaloniki','State','54',84,NULL,'Active'),(1391,'Trikala','State','44',84,NULL,'Active'),(1392,'Voiotia','State','03',84,NULL,'Active'),(1393,'Xanthi','State','72',84,NULL,'Active'),(1394,'Zakynthos','State','21',84,NULL,'Active'),(1395,'Agio Oros','State','69',84,NULL,'Active'),(1396,'Alta Verapez','State','AV',89,NULL,'Active'),(1397,'Baja Verapez','State','BV',89,NULL,'Active'),(1398,'Chimaltenango','State','CM',89,NULL,'Active'),(1399,'Chiquimula','State','CQ',89,NULL,'Active'),(1400,'El Progreso','State','PR',89,NULL,'Active'),(1401,'Escuintla','State','ES',89,NULL,'Active'),(1402,'Guatemala','State','GU',89,NULL,'Active'),(1403,'Huehuetenango','State','HU',89,NULL,'Active'),(1404,'Izabal','State','IZ',89,NULL,'Active'),(1405,'Jalapa','State','JA',89,NULL,'Active'),(1406,'Jutiapa','State','JU',89,NULL,'Active'),(1407,'Peten','State','PE',89,NULL,'Active'),(1408,'Quetzaltenango','State','QZ',89,NULL,'Active'),(1409,'Quiche','State','QC',89,NULL,'Active'),(1410,'Reta.thuleu','State','RE',89,NULL,'Active'),(1411,'Sacatepequez','State','SA',89,NULL,'Active'),(1412,'San Marcos','State','SM',89,NULL,'Active'),(1413,'Santa Rosa','State','SR',89,NULL,'Active'),(1414,'Solol6','State','SO',89,NULL,'Active'),(1415,'Suchitepequez','State','SU',89,NULL,'Active'),(1416,'Totonicapan','State','TO',89,NULL,'Active'),(1417,'Zacapa','State','ZA',89,NULL,'Active'),(1418,'Bissau','State','BS',91,NULL,'Active'),(1419,'Bafata','State','BA',91,NULL,'Active'),(1420,'Biombo','State','BM',91,NULL,'Active'),(1421,'Bolama','State','BL',91,NULL,'Active'),(1422,'Cacheu','State','CA',91,NULL,'Active'),(1423,'Gabu','State','GA',91,NULL,'Active'),(1424,'Oio','State','OI',91,NULL,'Active'),(1425,'Quloara','State','QU',91,NULL,'Active'),(1426,'Tombali S','State','TO',91,NULL,'Active'),(1427,'Barima-Waini','State','BA',92,NULL,'Active'),(1428,'Cuyuni-Mazaruni','State','CU',92,NULL,'Active'),(1429,'Demerara-Mahaica','State','DE',92,NULL,'Active'),(1430,'East Berbice-Corentyne','State','EB',92,NULL,'Active'),(1431,'Essequibo Islands-West Demerara','State','ES',92,NULL,'Active'),(1432,'Mahaica-Berbice','State','MA',92,NULL,'Active'),(1433,'Pomeroon-Supenaam','State','PM',92,NULL,'Active'),(1434,'Potaro-Siparuni','State','PT',92,NULL,'Active'),(1435,'Upper Demerara-Berbice','State','UD',92,NULL,'Active'),(1436,'Upper Takutu-Upper Essequibo','State','UT',92,NULL,'Active'),(1437,'Atlantida','State','AT',96,NULL,'Active'),(1438,'Colon','State','CL',96,NULL,'Active'),(1439,'Comayagua','State','CM',96,NULL,'Active'),(1440,'Copan','State','CP',96,NULL,'Active'),(1441,'Cortes','State','CR',96,NULL,'Active'),(1442,'Choluteca','State','CH',96,NULL,'Active'),(1443,'El Paraiso','State','EP',96,NULL,'Active'),(1444,'Francisco Morazan','State','FM',96,NULL,'Active'),(1445,'Gracias a Dios','State','GD',96,NULL,'Active'),(1446,'Intibuca','State','IN',96,NULL,'Active'),(1447,'Islas de la Bahia','State','IB',96,NULL,'Active'),(1448,'Lempira','State','LE',96,NULL,'Active'),(1449,'Ocotepeque','State','OC',96,NULL,'Active'),(1450,'Olancho','State','OL',96,NULL,'Active'),(1451,'Santa Barbara','State','SB',96,NULL,'Active'),(1452,'Valle','State','VA',96,NULL,'Active'),(1453,'Yoro','State','YO',96,NULL,'Active'),(1454,'Bjelovarsko-bilogorska zupanija','State','07',55,NULL,'Active'),(1455,'Brodsko-posavska zupanija','State','12',55,NULL,'Active'),(1456,'Dubrovacko-neretvanska zupanija','State','19',55,NULL,'Active'),(1457,'Istarska zupanija','State','18',55,NULL,'Active'),(1458,'Karlovacka zupanija','State','04',55,NULL,'Active'),(1459,'Koprivnickco-krizevacka zupanija','State','06',55,NULL,'Active'),(1460,'Krapinako-zagorska zupanija','State','02',55,NULL,'Active'),(1461,'Licko-senjska zupanija','State','09',55,NULL,'Active'),(1462,'Medimurska zupanija','State','20',55,NULL,'Active'),(1463,'Osjecko-baranjska zupanija','State','14',55,NULL,'Active'),(1464,'Pozesko-slavonska zupanija','State','11',55,NULL,'Active'),(1465,'Primorsko-goranska zupanija','State','08',55,NULL,'Active'),(1466,'Sisacko-moelavacka Iupanija','State','03',55,NULL,'Active'),(1467,'Splitako-dalmatinska zupanija','State','17',55,NULL,'Active'),(1468,'Sibenako-kninska zupanija','State','15',55,NULL,'Active'),(1469,'Varaidinska zupanija','State','05',55,NULL,'Active'),(1470,'VirovitiEko-podravska zupanija','State','10',55,NULL,'Active'),(1471,'VuRovarako-srijemska zupanija','State','16',55,NULL,'Active'),(1472,'Zadaraka','State','13',55,NULL,'Active'),(1473,'Zagrebacka zupanija','State','01',55,NULL,'Active'),(1474,'Grande-Anse','State','GA',93,NULL,'Active'),(1475,'Nord-Est','State','NE',93,NULL,'Active'),(1476,'Nord-Ouest','State','NO',93,NULL,'Active'),(1477,'Ouest','State','OU',93,NULL,'Active'),(1478,'Sud','State','SD',93,NULL,'Active'),(1479,'Sud-Est','State','SE',93,NULL,'Active'),(1480,'Budapest','State','BU',98,NULL,'Active'),(1481,'Bács-Kiskun','State','BK',98,NULL,'Active'),(1482,'Baranya','State','BA',98,NULL,'Active'),(1483,'Békés','State','BE',98,NULL,'Active'),(1484,'Borsod-Abaúj-Zemplén','State','BZ',98,NULL,'Active'),(1485,'Csongrád','State','CS',98,NULL,'Active'),(1486,'Fejér','State','FE',98,NULL,'Active'),(1487,'Gy?r-Moson-Sopron','State','GS',98,NULL,'Active'),(1488,'Hajdu-Bihar','State','HB',98,NULL,'Active'),(1489,'Heves','State','HE',98,NULL,'Active'),(1490,'Jász-Nagykun-Szolnok','State','JN',98,NULL,'Active'),(1491,'Komárom-Esztergom','State','KE',98,NULL,'Active'),(1492,'Nográd','State','NO',98,NULL,'Active'),(1493,'Pest','State','PE',98,NULL,'Active'),(1494,'Somogy','State','SO',98,NULL,'Active'),(1495,'Szabolcs-Szatmár-Bereg','State','SZ',98,NULL,'Active'),(1496,'Tolna','State','TO',98,NULL,'Active'),(1497,'Vas','State','VA',98,NULL,'Active'),(1498,'Veszprém','State','VE',98,NULL,'Active'),(1499,'Zala','State','ZA',98,NULL,'Active'),(1500,'Békéscsaba','State','BC',98,NULL,'Active'),(1501,'Debrecen','State','DE',98,NULL,'Active'),(1502,'Dunaújváros','State','DU',98,NULL,'Active'),(1503,'Eger','State','EG',98,NULL,'Active'),(1504,'Gy?r','State','GY',98,NULL,'Active'),(1505,'Hódmez?vásárhely','State','HV',98,NULL,'Active'),(1506,'Kaposvár','State','KV',98,NULL,'Active'),(1507,'Kecskemét','State','KM',98,NULL,'Active'),(1508,'Miskolc','State','MI',98,NULL,'Active'),(1509,'Nagykanizsa','State','NK',98,NULL,'Active'),(1510,'Nyiregyháza','State','NY',98,NULL,'Active'),(1511,'Pécs','State','PS',98,NULL,'Active'),(1512,'Salgótarján','State','ST',98,NULL,'Active'),(1513,'Sopron','State','SN',98,NULL,'Active'),(1514,'Szeged','State','SD',98,NULL,'Active'),(1515,'Székesfehérvár','State','SF',98,NULL,'Active'),(1516,'Szekszárd','State','SS',98,NULL,'Active'),(1517,'Szolnok','State','SK',98,NULL,'Active'),(1518,'Szombathely','State','SH',98,NULL,'Active'),(1519,'Tatabánya','State','TB',98,NULL,'Active'),(1520,'Zalaegerszeg','State','ZE',98,NULL,'Active'),(1521,'Bali','State','BA',101,NULL,'Active'),(1522,'Bangka Belitung','State','BB',101,NULL,'Active'),(1523,'Banten','State','BT',101,NULL,'Active'),(1524,'Bengkulu','State','BE',101,NULL,'Active'),(1525,'Gorontalo','State','GO',101,NULL,'Active'),(1526,'Irian Jaya','State','IJ',101,NULL,'Active'),(1527,'Jambi','State','JA',101,NULL,'Active'),(1528,'Jawa Barat','State','JB',101,NULL,'Active'),(1529,'Jawa Tengah','State','JT',101,NULL,'Active'),(1530,'Jawa Timur','State','JI',101,NULL,'Active'),(1531,'Kalimantan Barat','State','KB',101,NULL,'Active'),(1532,'Kalimantan Timur','State','KT',101,NULL,'Active'),(1533,'Kalimantan Selatan','State','KS',101,NULL,'Active'),(1534,'Kepulauan Riau','State','KR',101,NULL,'Active'),(1535,'Lampung','State','LA',101,NULL,'Active'),(1536,'Maluku','State','MA',101,NULL,'Active'),(1537,'Maluku Utara','State','MU',101,NULL,'Active'),(1538,'Nusa Tenggara Barat','State','NB',101,NULL,'Active'),(1539,'Nusa Tenggara Timur','State','NT',101,NULL,'Active'),(1540,'Papua','State','PA',101,NULL,'Active'),(1541,'Riau','State','RI',101,NULL,'Active'),(1542,'Sulawesi Selatan','State','SN',101,NULL,'Active'),(1543,'Sulawesi Tengah','State','ST',101,NULL,'Active'),(1544,'Sulawesi Tenggara','State','SG',101,NULL,'Active'),(1545,'Sulawesi Utara','State','SA',101,NULL,'Active'),(1546,'Sumatra Barat','State','SB',101,NULL,'Active'),(1547,'Sumatra Selatan','State','SS',101,NULL,'Active'),(1548,'Sumatera Utara','State','SU',101,NULL,'Active'),(1549,'Jakarta Raya','State','JK',101,NULL,'Active'),(1550,'Aceh','State','AC',101,NULL,'Active'),(1551,'Yogyakarta','State','YO',101,NULL,'Active'),(1552,'Cork','State','C',104,NULL,'Active'),(1553,'Clare','State','CE',104,NULL,'Active'),(1554,'Cavan','State','CN',104,NULL,'Active'),(1555,'Carlow','State','CW',104,NULL,'Active'),(1556,'Dublin','State','D',104,NULL,'Active'),(1557,'Donegal','State','DL',104,NULL,'Active'),(1558,'Galway','State','G',104,NULL,'Active'),(1559,'Kildare','State','KE',104,NULL,'Active'),(1560,'Kilkenny','State','KK',104,NULL,'Active'),(1561,'Kerry','State','KY',104,NULL,'Active'),(1562,'Longford','State','LD',104,NULL,'Active'),(1563,'Louth','State','LH',104,NULL,'Active'),(1564,'Limerick','State','LK',104,NULL,'Active'),(1565,'Leitrim','State','LM',104,NULL,'Active'),(1566,'Laois','State','LS',104,NULL,'Active'),(1567,'Meath','State','MH',104,NULL,'Active'),(1568,'Monaghan','State','MN',104,NULL,'Active'),(1569,'Mayo','State','MO',104,NULL,'Active'),(1570,'Offaly','State','OY',104,NULL,'Active'),(1571,'Roscommon','State','RN',104,NULL,'Active'),(1572,'Sligo','State','SO',104,NULL,'Active'),(1573,'Tipperary','State','TA',104,NULL,'Active'),(1574,'Waterford','State','WD',104,NULL,'Active'),(1575,'Westmeath','State','WH',104,NULL,'Active'),(1576,'Wicklow','State','WW',104,NULL,'Active'),(1577,'Wexford','State','WX',104,NULL,'Active'),(1578,'HaDarom','State','D',105,NULL,'Active'),(1579,'HaMerkaz','State','M',105,NULL,'Active'),(1580,'HaZafon','State','Z',105,NULL,'Active'),(1581,'Haifa','State','HA',105,NULL,'Active'),(1582,'Tel-Aviv','State','TA',105,NULL,'Active'),(1583,'Jerusalem','State','JM',105,NULL,'Active'),(1584,'Al Anbar','State','AN',103,NULL,'Active'),(1585,'Al Ba,rah','State','BA',103,NULL,'Active'),(1586,'Al Muthanna','State','MU',103,NULL,'Active'),(1587,'Al Qadisiyah','State','QA',103,NULL,'Active'),(1588,'An Najef','State','NA',103,NULL,'Active'),(1589,'Arbil','State','AR',103,NULL,'Active'),(1590,'As Sulaymaniyah','State','SW',103,NULL,'Active'),(1591,'At Ta\'mim','State','TS',103,NULL,'Active'),(1592,'Babil','State','BB',103,NULL,'Active'),(1593,'Baghdad','State','BG',103,NULL,'Active'),(1594,'Dahuk','State','DA',103,NULL,'Active'),(1595,'Dhi Qar','State','DQ',103,NULL,'Active'),(1596,'Diyala','State','DI',103,NULL,'Active'),(1597,'Karbala\'','State','KA',103,NULL,'Active'),(1598,'Maysan','State','MA',103,NULL,'Active'),(1599,'Ninawa','State','NI',103,NULL,'Active'),(1600,'Salah ad Din','State','SD',103,NULL,'Active'),(1601,'Wasit','State','WA',103,NULL,'Active'),(1602,'Ardabil','State','03',102,NULL,'Active'),(1603,'Azarbayjan-e Gharbi','State','02',102,NULL,'Active'),(1604,'Azarbayjan-e Sharqi','State','01',102,NULL,'Active'),(1605,'Bushehr','State','06',102,NULL,'Active'),(1606,'Chahar Mahall va Bakhtiari','State','08',102,NULL,'Active'),(1607,'Esfahan','State','04',102,NULL,'Active'),(1608,'Fars','State','14',102,NULL,'Active'),(1609,'Gilan','State','19',102,NULL,'Active'),(1610,'Golestan','State','27',102,NULL,'Active'),(1611,'Hamadan','State','24',102,NULL,'Active'),(1612,'Hormozgan','State','23',102,NULL,'Active'),(1613,'Iiam','State','05',102,NULL,'Active'),(1614,'Kerman','State','15',102,NULL,'Active'),(1615,'Kermanshah','State','17',102,NULL,'Active'),(1616,'Khorasan','State','09',102,NULL,'Active'),(1617,'Khuzestan','State','10',102,NULL,'Active'),(1618,'Kohjiluyeh va Buyer Ahmad','State','18',102,NULL,'Active'),(1619,'Kordestan','State','16',102,NULL,'Active'),(1620,'Lorestan','State','20',102,NULL,'Active'),(1621,'Markazi','State','22',102,NULL,'Active'),(1622,'Mazandaran','State','21',102,NULL,'Active'),(1623,'Qazvin','State','28',102,NULL,'Active'),(1624,'Qom','State','26',102,NULL,'Active'),(1625,'Semnan','State','12',102,NULL,'Active'),(1626,'Sistan va Baluchestan','State','13',102,NULL,'Active'),(1627,'Tehran','State','07',102,NULL,'Active'),(1628,'Yazd','State','25',102,NULL,'Active'),(1629,'Zanjan','State','11',102,NULL,'Active'),(1630,'Austurland','State','7',99,NULL,'Active'),(1631,'Hofuoborgarsvaeoi utan Reykjavikur','State','1',99,NULL,'Active'),(1632,'Norourland eystra','State','6',99,NULL,'Active'),(1633,'Norourland vestra','State','5',99,NULL,'Active'),(1634,'Reykjavik','State','0',99,NULL,'Active'),(1635,'Suourland','State','8',99,NULL,'Active'),(1636,'Suournes','State','2',99,NULL,'Active'),(1637,'Vestfirolr','State','4',99,NULL,'Active'),(1638,'Vesturland','State','3',99,NULL,'Active'),(1639,'Agrigento','State','AG',106,NULL,'Active'),(1640,'Alessandria','State','AL',106,NULL,'Active'),(1641,'Ancona','State','AN',106,NULL,'Active'),(1642,'Aosta','State','AO',106,NULL,'Active'),(1643,'Arezzo','State','AR',106,NULL,'Active'),(1644,'Ascoli Piceno','State','AP',106,NULL,'Active'),(1645,'Asti','State','AT',106,NULL,'Active'),(1646,'Avellino','State','AV',106,NULL,'Active'),(1647,'Bari','State','BA',106,NULL,'Active'),(1648,'Belluno','State','BL',106,NULL,'Active'),(1649,'Benevento','State','BN',106,NULL,'Active'),(1650,'Bergamo','State','BG',106,NULL,'Active'),(1651,'Biella','State','BI',106,NULL,'Active'),(1652,'Bologna','State','BO',106,NULL,'Active'),(1653,'Bolzano','State','BZ',106,NULL,'Active'),(1654,'Brescia','State','BS',106,NULL,'Active'),(1655,'Brindisi','State','BR',106,NULL,'Active'),(1656,'Cagliari','State','CA',106,NULL,'Active'),(1657,'Caltanissetta','State','CL',106,NULL,'Active'),(1658,'Campobasso','State','CB',106,NULL,'Active'),(1659,'Caserta','State','CE',106,NULL,'Active'),(1660,'Catania','State','CT',106,NULL,'Active'),(1661,'Catanzaro','State','CZ',106,NULL,'Active'),(1662,'Chieti','State','CH',106,NULL,'Active'),(1663,'Como','State','CO',106,NULL,'Active'),(1664,'Cosenza','State','CS',106,NULL,'Active'),(1665,'Cremona','State','CR',106,NULL,'Active'),(1666,'Crotone','State','KR',106,NULL,'Active'),(1667,'Cuneo','State','CN',106,NULL,'Active'),(1668,'Enna','State','EN',106,NULL,'Active'),(1669,'Ferrara','State','FE',106,NULL,'Active'),(1670,'Firenze','State','FI',106,NULL,'Active'),(1671,'Foggia','State','FG',106,NULL,'Active'),(1672,'Forlì-Cesena','State','FC',106,NULL,'Active'),(1673,'Frosinone','State','FR',106,NULL,'Active'),(1674,'Genova','State','GE',106,NULL,'Active'),(1675,'Gorizia','State','GO',106,NULL,'Active'),(1676,'Grosseto','State','GR',106,NULL,'Active'),(1677,'Imperia','State','IM',106,NULL,'Active'),(1678,'Isernia','State','IS',106,NULL,'Active'),(1679,'L\'Aquila','State','AQ',106,NULL,'Active'),(1680,'La Spezia','State','SP',106,NULL,'Active'),(1681,'Latina','State','LT',106,NULL,'Active'),(1682,'Lecce','State','LE',106,NULL,'Active'),(1683,'Lecco','State','LC',106,NULL,'Active'),(1684,'Livorno','State','LI',106,NULL,'Active'),(1685,'Lodi','State','LO',106,NULL,'Active'),(1686,'Lucca','State','LU',106,NULL,'Active'),(1687,'Macerata','State','MC',106,NULL,'Active'),(1688,'Mantova','State','MN',106,NULL,'Active'),(1689,'Massa-Carrara','State','MS',106,NULL,'Active'),(1690,'Matera','State','MT',106,NULL,'Active'),(1691,'Messina','State','ME',106,NULL,'Active'),(1692,'Milano','State','MI',106,NULL,'Active'),(1693,'Modena','State','MO',106,NULL,'Active'),(1694,'Napoli','State','NA',106,NULL,'Active'),(1695,'Novara','State','NO',106,NULL,'Active'),(1696,'Nuoro','State','NU',106,NULL,'Active'),(1697,'Oristano','State','OR',106,NULL,'Active'),(1698,'Padova','State','PD',106,NULL,'Active'),(1699,'Palermo','State','PA',106,NULL,'Active'),(1700,'Parma','State','PR',106,NULL,'Active'),(1701,'Pavia','State','PV',106,NULL,'Active'),(1702,'Perugia','State','PG',106,NULL,'Active'),(1703,'Pesaro e Urbino','State','PU',106,NULL,'Active'),(1704,'Pescara','State','PE',106,NULL,'Active'),(1705,'Piacenza','State','PC',106,NULL,'Active'),(1706,'Pisa','State','PI',106,NULL,'Active'),(1707,'Pistoia','State','PT',106,NULL,'Active'),(1708,'Pordenone','State','PN',106,NULL,'Active'),(1709,'Potenza','State','PZ',106,NULL,'Active'),(1710,'Prato','State','PO',106,NULL,'Active'),(1711,'Ragusa','State','RG',106,NULL,'Active'),(1712,'Ravenna','State','RA',106,NULL,'Active'),(1713,'Reggio Calabria','State','RC',106,NULL,'Active'),(1714,'Reggio Emilia','State','RE',106,NULL,'Active'),(1715,'Rieti','State','RI',106,NULL,'Active'),(1716,'Rimini','State','RN',106,NULL,'Active'),(1717,'Roma','State','RM',106,NULL,'Active'),(1718,'Rovigo','State','RO',106,NULL,'Active'),(1719,'Salerno','State','SA',106,NULL,'Active'),(1720,'Sassari','State','SS',106,NULL,'Active'),(1721,'Savona','State','SV',106,NULL,'Active'),(1722,'Siena','State','SI',106,NULL,'Active'),(1723,'Siracusa','State','SR',106,NULL,'Active'),(1724,'Sondrio','State','SO',106,NULL,'Active'),(1725,'Taranto','State','TA',106,NULL,'Active'),(1726,'Teramo','State','TE',106,NULL,'Active'),(1727,'Terni','State','TR',106,NULL,'Active'),(1728,'Torino','State','TO',106,NULL,'Active'),(1729,'Trapani','State','TP',106,NULL,'Active'),(1730,'Trento','State','TN',106,NULL,'Active'),(1731,'Treviso','State','TV',106,NULL,'Active'),(1732,'Trieste','State','TS',106,NULL,'Active'),(1733,'Udine','State','UD',106,NULL,'Active'),(1734,'Varese','State','VA',106,NULL,'Active'),(1735,'Venezia','State','VE',106,NULL,'Active'),(1736,'Verbano-Cusio-Ossola','State','VB',106,NULL,'Active'),(1737,'Vercelli','State','VC',106,NULL,'Active'),(1738,'Verona','State','VR',106,NULL,'Active'),(1739,'Vibo Valentia','State','VV',106,NULL,'Active'),(1740,'Vicenza','State','VI',106,NULL,'Active'),(1741,'Viterbo','State','VT',106,NULL,'Active'),(1742,'Aichi','State','23',108,NULL,'Active'),(1743,'Akita','State','05',108,NULL,'Active'),(1744,'Aomori','State','02',108,NULL,'Active'),(1745,'Chiba','State','12',108,NULL,'Active'),(1746,'Ehime','State','38',108,NULL,'Active'),(1747,'Fukui','State','18',108,NULL,'Active'),(1748,'Fukuoka','State','40',108,NULL,'Active'),(1749,'Fukusima','State','07',108,NULL,'Active'),(1750,'Gifu','State','21',108,NULL,'Active'),(1751,'Gunma','State','10',108,NULL,'Active'),(1752,'Hiroshima','State','34',108,NULL,'Active'),(1753,'Hokkaido','State','01',108,NULL,'Active'),(1754,'Hyogo','State','28',108,NULL,'Active'),(1755,'Ibaraki','State','08',108,NULL,'Active'),(1756,'Ishikawa','State','17',108,NULL,'Active'),(1757,'Iwate','State','03',108,NULL,'Active'),(1758,'Kagawa','State','37',108,NULL,'Active'),(1759,'Kagoshima','State','46',108,NULL,'Active'),(1760,'Kanagawa','State','14',108,NULL,'Active'),(1761,'Kochi','State','39',108,NULL,'Active'),(1762,'Kumamoto','State','43',108,NULL,'Active'),(1763,'Kyoto','State','26',108,NULL,'Active'),(1764,'Mie','State','24',108,NULL,'Active'),(1765,'Miyagi','State','04',108,NULL,'Active'),(1766,'Miyazaki','State','45',108,NULL,'Active'),(1767,'Nagano','State','20',108,NULL,'Active'),(1768,'Nagasaki','State','42',108,NULL,'Active'),(1769,'Nara','State','29',108,NULL,'Active'),(1770,'Niigata','State','15',108,NULL,'Active'),(1771,'Oita','State','44',108,NULL,'Active'),(1772,'Okayama','State','33',108,NULL,'Active'),(1773,'Okinawa','State','47',108,NULL,'Active'),(1774,'Osaka','State','27',108,NULL,'Active'),(1775,'Saga','State','41',108,NULL,'Active'),(1776,'Saitama','State','11',108,NULL,'Active'),(1777,'Shiga','State','25',108,NULL,'Active'),(1778,'Shimane','State','32',108,NULL,'Active'),(1779,'Shizuoka','State','22',108,NULL,'Active'),(1780,'Tochigi','State','09',108,NULL,'Active'),(1781,'Tokushima','State','36',108,NULL,'Active'),(1782,'Tokyo','State','13',108,NULL,'Active'),(1783,'Tottori','State','31',108,NULL,'Active'),(1784,'Toyama','State','16',108,NULL,'Active'),(1785,'Wakayama','State','30',108,NULL,'Active'),(1786,'Yamagata','State','06',108,NULL,'Active'),(1787,'Yamaguchi','State','35',108,NULL,'Active'),(1788,'Yamanashi','State','19',108,NULL,'Active'),(1789,'Clarendon','State','CN',107,NULL,'Active'),(1790,'Hanover','State','HR',107,NULL,'Active'),(1791,'Kingston','State','KN',107,NULL,'Active'),(1792,'Portland','State','PD',107,NULL,'Active'),(1793,'Saint Andrew','State','AW',107,NULL,'Active'),(1794,'Saint Ann','State','AN',107,NULL,'Active'),(1795,'Saint Catherine','State','CE',107,NULL,'Active'),(1796,'Saint Elizabeth','State','EH',107,NULL,'Active'),(1797,'Saint James','State','JS',107,NULL,'Active'),(1798,'Saint Mary','State','MY',107,NULL,'Active'),(1799,'Saint Thomas','State','TS',107,NULL,'Active'),(1800,'Trelawny','State','TY',107,NULL,'Active'),(1801,'Westmoreland','State','WD',107,NULL,'Active'),(1802,'Ajln','State','AJ',109,NULL,'Active'),(1803,'Al \'Aqaba','State','AQ',109,NULL,'Active'),(1804,'Al Balqa\'','State','BA',109,NULL,'Active'),(1805,'Al Karak','State','KA',109,NULL,'Active'),(1806,'Al Mafraq','State','MA',109,NULL,'Active'),(1807,'Amman','State','AM',109,NULL,'Active'),(1808,'At Tafilah','State','AT',109,NULL,'Active'),(1809,'Az Zarga','State','AZ',109,NULL,'Active'),(1810,'Irbid','State','JR',109,NULL,'Active'),(1811,'Jarash','State','JA',109,NULL,'Active'),(1812,'Ma\'an','State','MN',109,NULL,'Active'),(1813,'Madaba','State','MD',109,NULL,'Active'),(1814,'Nairobi Municipality','State','110',111,NULL,'Active'),(1815,'Coast','State','300',111,NULL,'Active'),(1816,'North-Eastern Kaskazini Mashariki','State','500',111,NULL,'Active'),(1817,'Rift Valley','State','700',111,NULL,'Active'),(1818,'Western Magharibi','State','900',111,NULL,'Active'),(1819,'Bishkek','State','GB',116,NULL,'Active'),(1820,'Batken','State','B',116,NULL,'Active'),(1821,'Chu','State','C',116,NULL,'Active'),(1822,'Jalal-Abad','State','J',116,NULL,'Active'),(1823,'Naryn','State','N',116,NULL,'Active'),(1824,'Osh','State','O',116,NULL,'Active'),(1825,'Talas','State','T',116,NULL,'Active'),(1826,'Ysyk-Kol','State','Y',116,NULL,'Active'),(1827,'Krong Kaeb','State','23',37,NULL,'Active'),(1828,'Krong Pailin','State','24',37,NULL,'Active'),(1829,'Xrong Preah Sihanouk','State','18',37,NULL,'Active'),(1830,'Phnom Penh','State','12',37,NULL,'Active'),(1831,'Baat Dambang','State','2',37,NULL,'Active'),(1832,'Banteay Mean Chey','State','1',37,NULL,'Active'),(1833,'Rampong Chaam','State','3',37,NULL,'Active'),(1834,'Kampong Chhnang','State','4',37,NULL,'Active'),(1835,'Kampong Spueu','State','5',37,NULL,'Active'),(1836,'Kampong Thum','State','6',37,NULL,'Active'),(1837,'Kampot','State','7',37,NULL,'Active'),(1838,'Kandaal','State','8',37,NULL,'Active'),(1839,'Kach Kong','State','9',37,NULL,'Active'),(1840,'Krachoh','State','10',37,NULL,'Active'),(1841,'Mondol Kiri','State','11',37,NULL,'Active'),(1842,'Otdar Mean Chey','State','22',37,NULL,'Active'),(1843,'Pousaat','State','15',37,NULL,'Active'),(1844,'Preah Vihear','State','13',37,NULL,'Active'),(1845,'Prey Veaeng','State','14',37,NULL,'Active'),(1846,'Rotanak Kiri','State','16',37,NULL,'Active'),(1847,'Siem Reab','State','17',37,NULL,'Active'),(1848,'Stueng Traeng','State','19',37,NULL,'Active'),(1849,'Svaay Rieng','State','20',37,NULL,'Active'),(1850,'Taakaev','State','21',37,NULL,'Active'),(1851,'Gilbert Islands','State','G',112,NULL,'Active'),(1852,'Line Islands','State','L',112,NULL,'Active'),(1853,'Phoenix Islands','State','P',112,NULL,'Active'),(1854,'Anjouan Ndzouani','State','A',49,NULL,'Active'),(1855,'Grande Comore Ngazidja','State','G',49,NULL,'Active'),(1856,'Moheli Moili','State','M',49,NULL,'Active'),(1857,'Kaesong-si','State','KAE',113,NULL,'Active'),(1858,'Nampo-si','State','NAM',113,NULL,'Active'),(1859,'Pyongyang-ai','State','PYO',113,NULL,'Active'),(1860,'Chagang-do','State','CHA',113,NULL,'Active'),(1861,'Hamgyongbuk-do','State','HAB',113,NULL,'Active'),(1862,'Hamgyongnam-do','State','HAN',113,NULL,'Active'),(1863,'Hwanghaebuk-do','State','HWB',113,NULL,'Active'),(1864,'Hwanghaenam-do','State','HWN',113,NULL,'Active'),(1865,'Kangwon-do','State','KAN',113,NULL,'Active'),(1866,'Pyonganbuk-do','State','PYB',113,NULL,'Active'),(1867,'Pyongannam-do','State','PYN',113,NULL,'Active'),(1868,'Yanggang-do','State','YAN',113,NULL,'Active'),(1869,'Najin Sonbong-si','State','NAJ',113,NULL,'Active'),(1870,'Seoul Teugbyeolsi','State','11',114,NULL,'Active'),(1871,'Busan Gwang\'yeogsi','State','26',114,NULL,'Active'),(1872,'Daegu Gwang\'yeogsi','State','27',114,NULL,'Active'),(1873,'Daejeon Gwang\'yeogsi','State','30',114,NULL,'Active'),(1874,'Gwangju Gwang\'yeogsi','State','29',114,NULL,'Active'),(1875,'Incheon Gwang\'yeogsi','State','28',114,NULL,'Active'),(1876,'Ulsan Gwang\'yeogsi','State','31',114,NULL,'Active'),(1877,'Chungcheongbugdo','State','43',114,NULL,'Active'),(1878,'Chungcheongnamdo','State','44',114,NULL,'Active'),(1879,'Gang\'weondo','State','42',114,NULL,'Active'),(1880,'Gyeonggido','State','41',114,NULL,'Active'),(1881,'Gyeongsangbugdo','State','47',114,NULL,'Active'),(1882,'Gyeongsangnamdo','State','48',114,NULL,'Active'),(1883,'Jejudo','State','49',114,NULL,'Active'),(1884,'Jeonrabugdo','State','45',114,NULL,'Active'),(1885,'Jeonranamdo','State','46',114,NULL,'Active'),(1886,'Al Ahmadi','State','AH',115,NULL,'Active'),(1887,'Al Farwanlyah','State','FA',115,NULL,'Active'),(1888,'Al Jahrah','State','JA',115,NULL,'Active'),(1889,'Al Kuwayt','State','KU',115,NULL,'Active'),(1890,'Hawalli','State','HA',115,NULL,'Active'),(1891,'Almaty','State','ALA',110,NULL,'Active'),(1892,'Astana','State','AST',110,NULL,'Active'),(1893,'Almaty oblysy','State','ALM',110,NULL,'Active'),(1894,'Aqmola oblysy','State','AKM',110,NULL,'Active'),(1895,'Aqtobe oblysy','State','AKT',110,NULL,'Active'),(1896,'Atyrau oblyfiy','State','ATY',110,NULL,'Active'),(1897,'Batys Quzaqstan oblysy','State','ZAP',110,NULL,'Active'),(1898,'Mangghystau oblysy','State','MAN',110,NULL,'Active'),(1899,'Ongtustik Quzaqstan oblysy','State','YUZ',110,NULL,'Active'),(1900,'Pavlodar oblysy','State','PAV',110,NULL,'Active'),(1901,'Qaraghandy oblysy','State','KAR',110,NULL,'Active'),(1902,'Qostanay oblysy','State','KUS',110,NULL,'Active'),(1903,'Qyzylorda oblysy','State','KZY',110,NULL,'Active'),(1904,'Shyghys Quzaqstan oblysy','State','VOS',110,NULL,'Active'),(1905,'Soltustik Quzaqstan oblysy','State','SEV',110,NULL,'Active'),(1906,'Zhambyl oblysy Zhambylskaya oblast\'','State','ZHA',110,NULL,'Active'),(1907,'Vientiane','State','VT',117,NULL,'Active'),(1908,'Attapu','State','AT',117,NULL,'Active'),(1909,'Bokeo','State','BK',117,NULL,'Active'),(1910,'Bolikhamxai','State','BL',117,NULL,'Active'),(1911,'Champasak','State','CH',117,NULL,'Active'),(1912,'Houaphan','State','HO',117,NULL,'Active'),(1913,'Khammouan','State','KH',117,NULL,'Active'),(1914,'Louang Namtha','State','LM',117,NULL,'Active'),(1915,'Louangphabang','State','LP',117,NULL,'Active'),(1916,'Oudomxai','State','OU',117,NULL,'Active'),(1917,'Phongsali','State','PH',117,NULL,'Active'),(1918,'Salavan','State','SL',117,NULL,'Active'),(1919,'Savannakhet','State','SV',117,NULL,'Active'),(1920,'Xaignabouli','State','XA',117,NULL,'Active'),(1921,'Xiasomboun','State','XN',117,NULL,'Active'),(1922,'Xekong','State','XE',117,NULL,'Active'),(1923,'Xiangkhoang','State','XI',117,NULL,'Active'),(1924,'Beirout','State','BA',119,NULL,'Active'),(1925,'El Begsa','State','BI',119,NULL,'Active'),(1926,'Jabal Loubnane','State','JL',119,NULL,'Active'),(1927,'Loubnane ech Chemali','State','AS',119,NULL,'Active'),(1928,'Loubnane ej Jnoubi','State','JA',119,NULL,'Active'),(1929,'Nabatiye','State','NA',119,NULL,'Active'),(1930,'Ampara','State','52',198,NULL,'Active'),(1931,'Anuradhapura','State','71',198,NULL,'Active'),(1932,'Badulla','State','81',198,NULL,'Active'),(1933,'Batticaloa','State','51',198,NULL,'Active'),(1934,'Colombo','State','11',198,NULL,'Active'),(1935,'Galle','State','31',198,NULL,'Active'),(1936,'Gampaha','State','12',198,NULL,'Active'),(1937,'Hambantota','State','33',198,NULL,'Active'),(1938,'Jaffna','State','41',198,NULL,'Active'),(1939,'Kalutara','State','13',198,NULL,'Active'),(1940,'Kandy','State','21',198,NULL,'Active'),(1941,'Kegalla','State','92',198,NULL,'Active'),(1942,'Kilinochchi','State','42',198,NULL,'Active'),(1943,'Kurunegala','State','61',198,NULL,'Active'),(1944,'Mannar','State','43',198,NULL,'Active'),(1945,'Matale','State','22',198,NULL,'Active'),(1946,'Matara','State','32',198,NULL,'Active'),(1947,'Monaragala','State','82',198,NULL,'Active'),(1948,'Mullaittivu','State','45',198,NULL,'Active'),(1949,'Nuwara Eliya','State','23',198,NULL,'Active'),(1950,'Polonnaruwa','State','72',198,NULL,'Active'),(1951,'Puttalum','State','62',198,NULL,'Active'),(1952,'Ratnapura','State','91',198,NULL,'Active'),(1953,'Trincomalee','State','53',198,NULL,'Active'),(1954,'VavunLya','State','44',198,NULL,'Active'),(1955,'Bomi','State','BM',121,NULL,'Active'),(1956,'Bong','State','BG',121,NULL,'Active'),(1957,'Grand Basaa','State','GB',121,NULL,'Active'),(1958,'Grand Cape Mount','State','CM',121,NULL,'Active'),(1959,'Grand Gedeh','State','GG',121,NULL,'Active'),(1960,'Grand Kru','State','GK',121,NULL,'Active'),(1961,'Lofa','State','LO',121,NULL,'Active'),(1962,'Margibi','State','MG',121,NULL,'Active'),(1963,'Maryland','State','MY',121,NULL,'Active'),(1964,'Montserrado','State','MO',121,NULL,'Active'),(1965,'Nimba','State','NI',121,NULL,'Active'),(1966,'Rivercess','State','RI',121,NULL,'Active'),(1967,'Sinoe','State','SI',121,NULL,'Active'),(1968,'Berea','State','D',120,NULL,'Active'),(1969,'Butha-Buthe','State','B',120,NULL,'Active'),(1970,'Leribe','State','C',120,NULL,'Active'),(1971,'Mafeteng','State','E',120,NULL,'Active'),(1972,'Maseru','State','A',120,NULL,'Active'),(1973,'Mohale\'s Hoek','State','F',120,NULL,'Active'),(1974,'Mokhotlong','State','J',120,NULL,'Active'),(1975,'Qacha\'s Nek','State','H',120,NULL,'Active'),(1976,'Quthing','State','G',120,NULL,'Active'),(1977,'Thaba-Tseka','State','K',120,NULL,'Active'),(1978,'Alytaus Apskritis','State','AL',124,NULL,'Active'),(1979,'Kauno Apskritis','State','KU',124,NULL,'Active'),(1980,'Klaipedos Apskritis','State','KL',124,NULL,'Active'),(1981,'Marijampoles Apskritis','State','MR',124,NULL,'Active'),(1982,'Panevezio Apskritis','State','PN',124,NULL,'Active'),(1983,'Sisuliu Apskritis','State','SA',124,NULL,'Active'),(1984,'Taurages Apskritis','State','TA',124,NULL,'Active'),(1985,'Telsiu Apskritis','State','TE',124,NULL,'Active'),(1986,'Utenos Apskritis','State','UT',124,NULL,'Active'),(1987,'Vilniaus Apskritis','State','VL',124,NULL,'Active'),(1988,'Diekirch','State','D',125,NULL,'Active'),(1989,'GreveNmacher','State','G',125,NULL,'Active'),(1990,'Aizkraukles Apripkis','State','AI',118,NULL,'Active'),(1991,'Alkanes Apripkis','State','AL',118,NULL,'Active'),(1992,'Balvu Apripkis','State','BL',118,NULL,'Active'),(1993,'Bauskas Apripkis','State','BU',118,NULL,'Active'),(1994,'Cesu Aprikis','State','CE',118,NULL,'Active'),(1995,'Daugavpile Apripkis','State','DA',118,NULL,'Active'),(1996,'Dobeles Apripkis','State','DO',118,NULL,'Active'),(1997,'Gulbenes Aprlpkis','State','GU',118,NULL,'Active'),(1998,'Jelgavas Apripkis','State','JL',118,NULL,'Active'),(1999,'Jekabpils Apripkis','State','JK',118,NULL,'Active'),(2000,'Kraslavas Apripkis','State','KR',118,NULL,'Active'),(2001,'Kuldlgas Apripkis','State','KU',118,NULL,'Active'),(2002,'Limbazu Apripkis','State','LM',118,NULL,'Active'),(2003,'Liepajas Apripkis','State','LE',118,NULL,'Active'),(2004,'Ludzas Apripkis','State','LU',118,NULL,'Active'),(2005,'Madonas Apripkis','State','MA',118,NULL,'Active'),(2006,'Ogres Apripkis','State','OG',118,NULL,'Active'),(2007,'Preilu Apripkis','State','PR',118,NULL,'Active'),(2008,'Rezaknes Apripkis','State','RE',118,NULL,'Active'),(2009,'Rigas Apripkis','State','RI',118,NULL,'Active'),(2010,'Saldus Apripkis','State','SA',118,NULL,'Active'),(2011,'Talsu Apripkis','State','TA',118,NULL,'Active'),(2012,'Tukuma Apriplcis','State','TU',118,NULL,'Active'),(2013,'Valkas Apripkis','State','VK',118,NULL,'Active'),(2014,'Valmieras Apripkis','State','VM',118,NULL,'Active'),(2015,'Ventspils Apripkis','State','VE',118,NULL,'Active'),(2016,'Daugavpils','State','DGV',118,NULL,'Active'),(2017,'Jelgava','State','JEL',118,NULL,'Active'),(2018,'Jurmala','State','JUR',118,NULL,'Active'),(2019,'Liepaja','State','LPX',118,NULL,'Active'),(2020,'Rezekne','State','REZ',118,NULL,'Active'),(2021,'Riga','State','RIX',118,NULL,'Active'),(2022,'Ventspils','State','VEN',118,NULL,'Active'),(2023,'Ajd?biy?','State','AJ',122,NULL,'Active'),(2024,'Al Bu?n?n','State','BU',122,NULL,'Active'),(2025,'Al Hiz?m al Akhdar','State','HZ',122,NULL,'Active'),(2026,'Al Jabal al Akhdar','State','JA',122,NULL,'Active'),(2027,'Al Jif?rah','State','JI',122,NULL,'Active'),(2028,'Al Jufrah','State','JU',122,NULL,'Active'),(2029,'Al Kufrah','State','KF',122,NULL,'Active'),(2030,'Al Marj','State','MJ',122,NULL,'Active'),(2031,'Al Marqab','State','MB',122,NULL,'Active'),(2032,'Al Qa?r?n','State','QT',122,NULL,'Active'),(2033,'Al Qubbah','State','QB',122,NULL,'Active'),(2034,'Al W?hah','State','WA',122,NULL,'Active'),(2035,'An Nuqa? al Khams','State','NQ',122,NULL,'Active'),(2036,'Ash Sh??i\'','State','SH',122,NULL,'Active'),(2037,'Az Z?wiyah','State','ZA',122,NULL,'Active'),(2038,'Bangh?z?','State','BA',122,NULL,'Active'),(2039,'Ban? Wal?d','State','BW',122,NULL,'Active'),(2040,'Darnah','State','DR',122,NULL,'Active'),(2041,'Ghad?mis','State','GD',122,NULL,'Active'),(2042,'Ghary?n','State','GR',122,NULL,'Active'),(2043,'Gh?t','State','GT',122,NULL,'Active'),(2044,'Jaghb?b','State','JB',122,NULL,'Active'),(2045,'Mi?r?tah','State','MI',122,NULL,'Active'),(2046,'Mizdah','State','MZ',122,NULL,'Active'),(2047,'Murzuq','State','MQ',122,NULL,'Active'),(2048,'N?l?t','State','NL',122,NULL,'Active'),(2049,'Sabh?','State','SB',122,NULL,'Active'),(2050,'?abr?tah ?urm?n','State','SS',122,NULL,'Active'),(2051,'Surt','State','SR',122,NULL,'Active'),(2052,'T?j?r?\' wa an Naw?h? al Arb?h','State','TN',122,NULL,'Active'),(2053,'?ar?bulus','State','TB',122,NULL,'Active'),(2054,'Tarh?nah-Masall?tah','State','TM',122,NULL,'Active'),(2055,'W?d? al hay?t','State','WD',122,NULL,'Active'),(2056,'Yafran-J?d?','State','YJ',122,NULL,'Active'),(2057,'Agadir','State','AGD',145,NULL,'Active'),(2058,'Aït Baha','State','BAH',145,NULL,'Active'),(2059,'Aït Melloul','State','MEL',145,NULL,'Active'),(2060,'Al Haouz','State','HAO',145,NULL,'Active'),(2061,'Al Hoceïma','State','HOC',145,NULL,'Active'),(2062,'Assa-Zag','State','ASZ',145,NULL,'Active'),(2063,'Azilal','State','AZI',145,NULL,'Active'),(2064,'Beni Mellal','State','BEM',145,NULL,'Active'),(2065,'Ben Sllmane','State','BES',145,NULL,'Active'),(2066,'Berkane','State','BER',145,NULL,'Active'),(2067,'Boujdour','State','BOD',145,NULL,'Active'),(2068,'Boulemane','State','BOM',145,NULL,'Active'),(2069,'Casablanca  [Dar el Beïda]','State','CAS',145,NULL,'Active'),(2070,'Chefchaouene','State','CHE',145,NULL,'Active'),(2071,'Chichaoua','State','CHI',145,NULL,'Active'),(2072,'El Hajeb','State','HAJ',145,NULL,'Active'),(2073,'El Jadida','State','JDI',145,NULL,'Active'),(2074,'Errachidia','State','ERR',145,NULL,'Active'),(2075,'Essaouira','State','ESI',145,NULL,'Active'),(2076,'Es Smara','State','ESM',145,NULL,'Active'),(2077,'Fès','State','FES',145,NULL,'Active'),(2078,'Figuig','State','FIG',145,NULL,'Active'),(2079,'Guelmim','State','GUE',145,NULL,'Active'),(2080,'Ifrane','State','IFR',145,NULL,'Active'),(2081,'Jerada','State','JRA',145,NULL,'Active'),(2082,'Kelaat Sraghna','State','KES',145,NULL,'Active'),(2083,'Kénitra','State','KEN',145,NULL,'Active'),(2084,'Khemisaet','State','KHE',145,NULL,'Active'),(2085,'Khenifra','State','KHN',145,NULL,'Active'),(2086,'Khouribga','State','KHO',145,NULL,'Active'),(2087,'Laâyoune (EH)','State','LAA',145,NULL,'Active'),(2088,'Larache','State','LAP',145,NULL,'Active'),(2089,'Marrakech','State','MAR',145,NULL,'Active'),(2090,'Meknsès','State','MEK',145,NULL,'Active'),(2091,'Nador','State','NAD',145,NULL,'Active'),(2092,'Ouarzazate','State','OUA',145,NULL,'Active'),(2093,'Oued ed Dahab (EH)','State','OUD',145,NULL,'Active'),(2094,'Oujda','State','OUJ',145,NULL,'Active'),(2095,'Rabat-Salé','State','RBA',145,NULL,'Active'),(2096,'Safi','State','SAF',145,NULL,'Active'),(2097,'Sefrou','State','SEF',145,NULL,'Active'),(2098,'Settat','State','SET',145,NULL,'Active'),(2099,'Sidl Kacem','State','SIK',145,NULL,'Active'),(2100,'Tanger','State','TNG',145,NULL,'Active'),(2101,'Tan-Tan','State','TNT',145,NULL,'Active'),(2102,'Taounate','State','TAO',145,NULL,'Active'),(2103,'Taroudannt','State','TAR',145,NULL,'Active'),(2104,'Tata','State','TAT',145,NULL,'Active'),(2105,'Taza','State','TAZ',145,NULL,'Active'),(2106,'Tétouan','State','TET',145,NULL,'Active'),(2107,'Tiznit','State','TIZ',145,NULL,'Active'),(2108,'Gagauzia, Unitate Teritoriala Autonoma','State','GA',141,NULL,'Active'),(2109,'Chisinau','State','CU',141,NULL,'Active'),(2110,'Stinga Nistrului, unitatea teritoriala din','State','SN',141,NULL,'Active'),(2111,'Balti','State','BA',141,NULL,'Active'),(2112,'Cahul','State','CA',141,NULL,'Active'),(2113,'Edinet','State','ED',141,NULL,'Active'),(2114,'Lapusna','State','LA',141,NULL,'Active'),(2115,'Orhei','State','OR',141,NULL,'Active'),(2116,'Soroca','State','SO',141,NULL,'Active'),(2117,'Taraclia','State','TA',141,NULL,'Active'),(2118,'Tighina [Bender]','State','TI',141,NULL,'Active'),(2119,'Ungheni','State','UN',141,NULL,'Active'),(2120,'Antananarivo','State','T',128,NULL,'Active'),(2121,'Antsiranana','State','D',128,NULL,'Active'),(2122,'Fianarantsoa','State','F',128,NULL,'Active'),(2123,'Mahajanga','State','M',128,NULL,'Active'),(2124,'Toamasina','State','A',128,NULL,'Active'),(2125,'Toliara','State','U',128,NULL,'Active'),(2126,'Ailinglapalap','State','ALL',134,NULL,'Active'),(2127,'Ailuk','State','ALK',134,NULL,'Active'),(2128,'Arno','State','ARN',134,NULL,'Active'),(2129,'Aur','State','AUR',134,NULL,'Active'),(2130,'Ebon','State','EBO',134,NULL,'Active'),(2131,'Eniwetok','State','ENI',134,NULL,'Active'),(2132,'Jaluit','State','JAL',134,NULL,'Active'),(2133,'Kili','State','KIL',134,NULL,'Active'),(2134,'Kwajalein','State','KWA',134,NULL,'Active'),(2135,'Lae','State','LAE',134,NULL,'Active'),(2136,'Lib','State','LIB',134,NULL,'Active'),(2137,'Likiep','State','LIK',134,NULL,'Active'),(2138,'Majuro','State','MAJ',134,NULL,'Active'),(2139,'Maloelap','State','MAL',134,NULL,'Active'),(2140,'Mejit','State','MEJ',134,NULL,'Active'),(2141,'Mili','State','MIL',134,NULL,'Active'),(2142,'Namorik','State','NMK',134,NULL,'Active'),(2143,'Namu','State','NMU',134,NULL,'Active'),(2144,'Rongelap','State','RON',134,NULL,'Active'),(2145,'Ujae','State','UJA',134,NULL,'Active'),(2146,'Ujelang','State','UJL',134,NULL,'Active'),(2147,'Utirik','State','UTI',134,NULL,'Active'),(2148,'Wotho','State','WTN',134,NULL,'Active'),(2149,'Wotje','State','WTJ',134,NULL,'Active'),(2150,'Bamako','State','BK0',132,NULL,'Active'),(2151,'Gao','State','7',132,NULL,'Active'),(2152,'Kayes','State','1',132,NULL,'Active'),(2153,'Kidal','State','8',132,NULL,'Active'),(2154,'Xoulikoro','State','2',132,NULL,'Active'),(2155,'Mopti','State','5',132,NULL,'Active'),(2156,'S69ou','State','4',132,NULL,'Active'),(2157,'Sikasso','State','3',132,NULL,'Active'),(2158,'Tombouctou','State','6',132,NULL,'Active'),(2159,'Ayeyarwady','State','07',35,NULL,'Active'),(2160,'Bago','State','02',35,NULL,'Active'),(2161,'Magway','State','03',35,NULL,'Active'),(2162,'Mandalay','State','04',35,NULL,'Active'),(2163,'Sagaing','State','01',35,NULL,'Active'),(2164,'Tanintharyi','State','05',35,NULL,'Active'),(2165,'Yangon','State','06',35,NULL,'Active'),(2166,'Chin','State','14',35,NULL,'Active'),(2167,'Kachin','State','11',35,NULL,'Active'),(2168,'Kayah','State','12',35,NULL,'Active'),(2169,'Kayin','State','13',35,NULL,'Active'),(2170,'Mon','State','15',35,NULL,'Active'),(2171,'Rakhine','State','16',35,NULL,'Active'),(2172,'Shan','State','17',35,NULL,'Active'),(2173,'Ulaanbaatar','State','1',143,NULL,'Active'),(2174,'Arhangay','State','073',143,NULL,'Active'),(2175,'Bayanhongor','State','069',143,NULL,'Active'),(2176,'Bayan-Olgiy','State','071',143,NULL,'Active'),(2177,'Bulgan','State','067',143,NULL,'Active'),(2178,'Darhan uul','State','037',143,NULL,'Active'),(2179,'Dornod','State','061',143,NULL,'Active'),(2180,'Dornogov,','State','063',143,NULL,'Active'),(2181,'DundgovL','State','059',143,NULL,'Active'),(2182,'Dzavhan','State','057',143,NULL,'Active'),(2183,'Govi-Altay','State','065',143,NULL,'Active'),(2184,'Govi-Smber','State','064',143,NULL,'Active'),(2185,'Hentiy','State','039',143,NULL,'Active'),(2186,'Hovd','State','043',143,NULL,'Active'),(2187,'Hovsgol','State','041',143,NULL,'Active'),(2188,'Omnogovi','State','053',143,NULL,'Active'),(2189,'Orhon','State','035',143,NULL,'Active'),(2190,'Ovorhangay','State','055',143,NULL,'Active'),(2191,'Selenge','State','049',143,NULL,'Active'),(2192,'Shbaatar','State','051',143,NULL,'Active'),(2193,'Tov','State','047',143,NULL,'Active'),(2194,'Uvs','State','046',143,NULL,'Active'),(2195,'Nouakchott','State','NKC',136,NULL,'Active'),(2196,'Assaba','State','03',136,NULL,'Active'),(2197,'Brakna','State','05',136,NULL,'Active'),(2198,'Dakhlet Nouadhibou','State','08',136,NULL,'Active'),(2199,'Gorgol','State','04',136,NULL,'Active'),(2200,'Guidimaka','State','10',136,NULL,'Active'),(2201,'Hodh ech Chargui','State','01',136,NULL,'Active'),(2202,'Hodh el Charbi','State','02',136,NULL,'Active'),(2203,'Inchiri','State','12',136,NULL,'Active'),(2204,'Tagant','State','09',136,NULL,'Active'),(2205,'Tiris Zemmour','State','11',136,NULL,'Active'),(2206,'Trarza','State','06',136,NULL,'Active'),(2207,'Beau Bassin-Rose Hill','State','BR',137,NULL,'Active'),(2208,'Curepipe','State','CU',137,NULL,'Active'),(2209,'Port Louis','State','PU',137,NULL,'Active'),(2210,'Quatre Bornes','State','QB',137,NULL,'Active'),(2211,'Vacosa-Phoenix','State','VP',137,NULL,'Active'),(2212,'Black River','State','BL',137,NULL,'Active'),(2213,'Flacq','State','FL',137,NULL,'Active'),(2214,'Grand Port','State','GP',137,NULL,'Active'),(2215,'Moka','State','MO',137,NULL,'Active'),(2216,'Pamplemousses','State','PA',137,NULL,'Active'),(2217,'Plaines Wilhems','State','PW',137,NULL,'Active'),(2218,'Riviere du Rempart','State','RP',137,NULL,'Active'),(2219,'Savanne','State','SA',137,NULL,'Active'),(2220,'Agalega Islands','State','AG',137,NULL,'Active'),(2221,'Cargados Carajos Shoals','State','CC',137,NULL,'Active'),(2222,'Rodrigues Island','State','RO',137,NULL,'Active'),(2223,'Male','State','MLE',131,NULL,'Active'),(2224,'Alif','State','02',131,NULL,'Active'),(2225,'Baa','State','20',131,NULL,'Active'),(2226,'Dhaalu','State','17',131,NULL,'Active'),(2227,'Faafu','State','14',131,NULL,'Active'),(2228,'Gaaf Alif','State','27',131,NULL,'Active'),(2229,'Gaefu Dhaalu','State','28',131,NULL,'Active'),(2230,'Gnaviyani','State','29',131,NULL,'Active'),(2231,'Haa Alif','State','07',131,NULL,'Active'),(2232,'Haa Dhaalu','State','23',131,NULL,'Active'),(2233,'Kaafu','State','26',131,NULL,'Active'),(2234,'Laamu','State','05',131,NULL,'Active'),(2235,'Lhaviyani','State','03',131,NULL,'Active'),(2236,'Meemu','State','12',131,NULL,'Active'),(2237,'Noonu','State','25',131,NULL,'Active'),(2238,'Raa','State','13',131,NULL,'Active'),(2239,'Seenu','State','01',131,NULL,'Active'),(2240,'Shaviyani','State','24',131,NULL,'Active'),(2241,'Thaa','State','08',131,NULL,'Active'),(2242,'Vaavu','State','04',131,NULL,'Active'),(2243,'Balaka','State','BA',129,NULL,'Active'),(2244,'Blantyre','State','BL',129,NULL,'Active'),(2245,'Chikwawa','State','CK',129,NULL,'Active'),(2246,'Chiradzulu','State','CR',129,NULL,'Active'),(2247,'Chitipa','State','CT',129,NULL,'Active'),(2248,'Dedza','State','DE',129,NULL,'Active'),(2249,'Dowa','State','DO',129,NULL,'Active'),(2250,'Karonga','State','KR',129,NULL,'Active'),(2251,'Kasungu','State','KS',129,NULL,'Active'),(2252,'Likoma Island','State','LK',129,NULL,'Active'),(2253,'Lilongwe','State','LI',129,NULL,'Active'),(2254,'Machinga','State','MH',129,NULL,'Active'),(2255,'Mangochi','State','MG',129,NULL,'Active'),(2256,'Mchinji','State','MC',129,NULL,'Active'),(2257,'Mulanje','State','MU',129,NULL,'Active'),(2258,'Mwanza','State','MW',129,NULL,'Active'),(2259,'Mzimba','State','MZ',129,NULL,'Active'),(2260,'Nkhata Bay','State','NB',129,NULL,'Active'),(2261,'Nkhotakota','State','NK',129,NULL,'Active'),(2262,'Nsanje','State','NS',129,NULL,'Active'),(2263,'Ntcheu','State','NU',129,NULL,'Active'),(2264,'Ntchisi','State','NI',129,NULL,'Active'),(2265,'Phalomba','State','PH',129,NULL,'Active'),(2266,'Rumphi','State','RU',129,NULL,'Active'),(2267,'Salima','State','SA',129,NULL,'Active'),(2268,'Thyolo','State','TH',129,NULL,'Active'),(2269,'Zomba','State','ZO',129,NULL,'Active'),(2270,'Aguascalientes','State','AGU',139,NULL,'Active'),(2271,'Baja California','State','BCN',139,NULL,'Active'),(2272,'Baja California Sur','State','BCS',139,NULL,'Active'),(2273,'Campeche','State','CAM',139,NULL,'Active'),(2274,'Coahuila','State','COA',139,NULL,'Active'),(2275,'Colima','State','COL',139,NULL,'Active'),(2276,'Chiapas','State','CHP',139,NULL,'Active'),(2277,'Chihuahua','State','CHH',139,NULL,'Active'),(2278,'Durango','State','DUR',139,NULL,'Active'),(2279,'Guanajuato','State','GUA',139,NULL,'Active'),(2280,'Guerrero','State','GRO',139,NULL,'Active'),(2281,'Hidalgo','State','HID',139,NULL,'Active'),(2282,'Jalisco','State','JAL',139,NULL,'Active'),(2283,'Mexico','State','MEX',139,NULL,'Active'),(2284,'Michoacin','State','MIC',139,NULL,'Active'),(2285,'Morelos','State','MOR',139,NULL,'Active'),(2286,'Nayarit','State','NAY',139,NULL,'Active'),(2287,'Nuevo Leon','State','NLE',139,NULL,'Active'),(2288,'Oaxaca','State','OAX',139,NULL,'Active'),(2289,'Puebla','State','PUE',139,NULL,'Active'),(2290,'Queretaro','State','QUE',139,NULL,'Active'),(2291,'Quintana Roo','State','ROO',139,NULL,'Active'),(2292,'San Luis Potosi','State','SLP',139,NULL,'Active'),(2293,'Sinaloa','State','SIN',139,NULL,'Active'),(2294,'Sonora','State','SON',139,NULL,'Active'),(2295,'Tabasco','State','TAB',139,NULL,'Active'),(2296,'Tamaulipas','State','TAM',139,NULL,'Active'),(2297,'Tlaxcala','State','TLA',139,NULL,'Active'),(2298,'Veracruz','State','VER',139,NULL,'Active'),(2299,'Yucatan','State','YUC',139,NULL,'Active'),(2300,'Zacatecas','State','ZAC',139,NULL,'Active'),(2301,'Wilayah Persekutuan Kuala Lumpur','State','14',130,NULL,'Active'),(2302,'Wilayah Persekutuan Labuan','State','15',130,NULL,'Active'),(2303,'Wilayah Persekutuan Putrajaya','State','16',130,NULL,'Active'),(2304,'Johor','State','01',130,NULL,'Active'),(2305,'Kedah','State','02',130,NULL,'Active'),(2306,'Kelantan','State','03',130,NULL,'Active'),(2307,'Melaka','State','04',130,NULL,'Active'),(2308,'Negeri Sembilan','State','05',130,NULL,'Active'),(2309,'Pahang','State','06',130,NULL,'Active'),(2310,'Perak','State','08',130,NULL,'Active'),(2311,'Perlis','State','09',130,NULL,'Active'),(2312,'Pulau Pinang','State','07',130,NULL,'Active'),(2313,'Sabah','State','12',130,NULL,'Active'),(2314,'Sarawak','State','13',130,NULL,'Active'),(2315,'Selangor','State','10',130,NULL,'Active'),(2316,'Terengganu','State','11',130,NULL,'Active'),(2317,'Maputo','State','MPM',146,NULL,'Active'),(2318,'Cabo Delgado','State','P',146,NULL,'Active'),(2319,'Gaza','State','G',146,NULL,'Active'),(2320,'Inhambane','State','I',146,NULL,'Active'),(2321,'Manica','State','B',146,NULL,'Active'),(2322,'Numpula','State','N',146,NULL,'Active'),(2323,'Niaaea','State','A',146,NULL,'Active'),(2324,'Sofala','State','S',146,NULL,'Active'),(2325,'Tete','State','T',146,NULL,'Active'),(2326,'Zambezia','State','Q',146,NULL,'Active'),(2327,'Caprivi','State','CA',147,NULL,'Active'),(2328,'Erongo','State','ER',147,NULL,'Active'),(2329,'Hardap','State','HA',147,NULL,'Active'),(2330,'Karas','State','KA',147,NULL,'Active'),(2331,'Khomae','State','KH',147,NULL,'Active'),(2332,'Kunene','State','KU',147,NULL,'Active'),(2333,'Ohangwena','State','OW',147,NULL,'Active'),(2334,'Okavango','State','OK',147,NULL,'Active'),(2335,'Omaheke','State','OH',147,NULL,'Active'),(2336,'Omusati','State','OS',147,NULL,'Active'),(2337,'Oshana','State','ON',147,NULL,'Active'),(2338,'Oshikoto','State','OT',147,NULL,'Active'),(2339,'Otjozondjupa','State','OD',147,NULL,'Active'),(2340,'Niamey','State','8',155,NULL,'Active'),(2341,'Agadez','State','1',155,NULL,'Active'),(2342,'Diffa','State','2',155,NULL,'Active'),(2343,'Dosso','State','3',155,NULL,'Active'),(2344,'Maradi','State','4',155,NULL,'Active'),(2345,'Tahoua','State','S',155,NULL,'Active'),(2346,'Tillaberi','State','6',155,NULL,'Active'),(2347,'Zinder','State','7',155,NULL,'Active'),(2348,'Abuja Capital Territory','State','FC',156,NULL,'Active'),(2349,'Abia','State','AB',156,NULL,'Active'),(2350,'Adamawa','State','AD',156,NULL,'Active'),(2351,'Akwa Ibom','State','AK',156,NULL,'Active'),(2352,'Anambra','State','AN',156,NULL,'Active'),(2353,'Bauchi','State','BA',156,NULL,'Active'),(2354,'Bayelsa','State','BY',156,NULL,'Active'),(2355,'Benue','State','BE',156,NULL,'Active'),(2356,'Borno','State','BO',156,NULL,'Active'),(2357,'Cross River','State','CR',156,NULL,'Active'),(2358,'Delta','State','DE',156,NULL,'Active'),(2359,'Ebonyi','State','EB',156,NULL,'Active'),(2360,'Edo','State','ED',156,NULL,'Active'),(2361,'Ekiti','State','EK',156,NULL,'Active'),(2362,'Enugu','State','EN',156,NULL,'Active'),(2363,'Gombe','State','GO',156,NULL,'Active'),(2364,'Imo','State','IM',156,NULL,'Active'),(2365,'Jigawa','State','JI',156,NULL,'Active'),(2366,'Kaduna','State','KD',156,NULL,'Active'),(2367,'Kano','State','KN',156,NULL,'Active'),(2368,'Katsina','State','KT',156,NULL,'Active'),(2369,'Kebbi','State','KE',156,NULL,'Active'),(2370,'Kogi','State','KO',156,NULL,'Active'),(2371,'Kwara','State','KW',156,NULL,'Active'),(2372,'Lagos','State','LA',156,NULL,'Active'),(2373,'Nassarawa','State','NA',156,NULL,'Active'),(2374,'Niger','State','NI',156,NULL,'Active'),(2375,'Ogun','State','OG',156,NULL,'Active'),(2376,'Ondo','State','ON',156,NULL,'Active'),(2377,'Osun','State','OS',156,NULL,'Active'),(2378,'Oyo','State','OY',156,NULL,'Active'),(2379,'Rivers','State','RI',156,NULL,'Active'),(2380,'Sokoto','State','SO',156,NULL,'Active'),(2381,'Taraba','State','TA',156,NULL,'Active'),(2382,'Yobe','State','YO',156,NULL,'Active'),(2383,'Zamfara','State','ZA',156,NULL,'Active'),(2384,'Boaco','State','BO',154,NULL,'Active'),(2385,'Carazo','State','CA',154,NULL,'Active'),(2386,'Chinandega','State','CI',154,NULL,'Active'),(2387,'Chontales','State','CO',154,NULL,'Active'),(2388,'Esteli','State','ES',154,NULL,'Active'),(2389,'Jinotega','State','JI',154,NULL,'Active'),(2390,'Leon','State','LE',154,NULL,'Active'),(2391,'Madriz','State','MD',154,NULL,'Active'),(2392,'Managua','State','MN',154,NULL,'Active'),(2393,'Masaya','State','MS',154,NULL,'Active'),(2394,'Matagalpa','State','MT',154,NULL,'Active'),(2395,'Nueva Segovia','State','NS',154,NULL,'Active'),(2396,'Rio San Juan','State','SJ',154,NULL,'Active'),(2397,'Rivas','State','RI',154,NULL,'Active'),(2398,'Atlantico Norte','State','AN',154,NULL,'Active'),(2399,'Atlantico Sur','State','AS',154,NULL,'Active'),(2400,'Drente','State','DR',151,NULL,'Active'),(2401,'Flevoland','State','FL',151,NULL,'Active'),(2402,'Friesland','State','FR',151,NULL,'Active'),(2403,'Gelderland','State','GL',151,NULL,'Active'),(2404,'Groningen','State','GR',151,NULL,'Active'),(2405,'Noord-Brabant','State','NB',151,NULL,'Active'),(2406,'Noord-Holland','State','NH',151,NULL,'Active'),(2407,'Overijssel','State','OV',151,NULL,'Active'),(2408,'Utrecht','State','UT',151,NULL,'Active'),(2409,'Zuid-Holland','State','ZH',151,NULL,'Active'),(2410,'Zeeland','State','ZL',151,NULL,'Active'),(2411,'Akershus','State','02',160,NULL,'Active'),(2412,'Aust-Agder','State','09',160,NULL,'Active'),(2413,'Buskerud','State','06',160,NULL,'Active'),(2414,'Finumark','State','20',160,NULL,'Active'),(2415,'Hedmark','State','04',160,NULL,'Active'),(2416,'Hordaland','State','12',160,NULL,'Active'),(2417,'Mire og Romsdal','State','15',160,NULL,'Active'),(2418,'Nordland','State','18',160,NULL,'Active'),(2419,'Nord-Trindelag','State','17',160,NULL,'Active'),(2420,'Oppland','State','05',160,NULL,'Active'),(2421,'Oslo','State','03',160,NULL,'Active'),(2422,'Rogaland','State','11',160,NULL,'Active'),(2423,'Sogn og Fjordane','State','14',160,NULL,'Active'),(2424,'Sir-Trindelag','State','16',160,NULL,'Active'),(2425,'Telemark','State','06',160,NULL,'Active'),(2426,'Troms','State','19',160,NULL,'Active'),(2427,'Vest-Agder','State','10',160,NULL,'Active'),(2428,'Vestfold','State','07',160,NULL,'Active'),(2429,'Ostfold','State','01',160,NULL,'Active'),(2430,'Jan Mayen','State','22',160,NULL,'Active'),(2431,'Svalbard','State','21',160,NULL,'Active'),(2432,'Auckland','State','AUK',153,NULL,'Active'),(2433,'Bay of Plenty','State','BOP',153,NULL,'Active'),(2434,'Canterbury','State','CAN',153,NULL,'Active'),(2435,'Gisborne','State','GIS',153,NULL,'Active'),(2436,'Hawkes Bay','State','HKB',153,NULL,'Active'),(2437,'Manawatu-Wanganui','State','MWT',153,NULL,'Active'),(2438,'Marlborough','State','MBH',153,NULL,'Active'),(2439,'Nelson','State','NSN',153,NULL,'Active'),(2440,'Northland','State','NTL',153,NULL,'Active'),(2441,'Otago','State','OTA',153,NULL,'Active'),(2442,'Southland','State','STL',153,NULL,'Active'),(2443,'Taranaki','State','TKI',153,NULL,'Active'),(2444,'Tasman','State','TAS',153,NULL,'Active'),(2445,'waikato','State','WKO',153,NULL,'Active'),(2446,'Wellington','State','WGN',153,NULL,'Active'),(2447,'West Coast','State','WTC',153,NULL,'Active'),(2448,'Ad Dakhillyah','State','DA',161,NULL,'Active'),(2449,'Al Batinah','State','BA',161,NULL,'Active'),(2450,'Al Janblyah','State','JA',161,NULL,'Active'),(2451,'Al Wusta','State','WU',161,NULL,'Active'),(2452,'Ash Sharqlyah','State','SH',161,NULL,'Active'),(2453,'Az Zahirah','State','ZA',161,NULL,'Active'),(2454,'Masqat','State','MA',161,NULL,'Active'),(2455,'Musandam','State','MU',161,NULL,'Active'),(2456,'Bocas del Toro','State','1',165,NULL,'Active'),(2457,'Cocle','State','2',165,NULL,'Active'),(2458,'Chiriqui','State','4',165,NULL,'Active'),(2459,'Darien','State','5',165,NULL,'Active'),(2460,'Herrera','State','6',165,NULL,'Active'),(2461,'Loa Santoa','State','7',165,NULL,'Active'),(2462,'Panama','State','8',165,NULL,'Active'),(2463,'Veraguas','State','9',165,NULL,'Active'),(2464,'Comarca de San Blas','State','Q',165,NULL,'Active'),(2465,'El Callao','State','CAL',168,NULL,'Active'),(2466,'Ancash','State','ANC',168,NULL,'Active'),(2467,'Apurimac','State','APU',168,NULL,'Active'),(2468,'Arequipa','State','ARE',168,NULL,'Active'),(2469,'Ayacucho','State','AYA',168,NULL,'Active'),(2470,'Cajamarca','State','CAJ',168,NULL,'Active'),(2471,'Cuzco','State','CUS',168,NULL,'Active'),(2472,'Huancavelica','State','HUV',168,NULL,'Active'),(2473,'Huanuco','State','HUC',168,NULL,'Active'),(2474,'Ica','State','ICA',168,NULL,'Active'),(2475,'Junin','State','JUN',168,NULL,'Active'),(2476,'La Libertad','State','LAL',168,NULL,'Active'),(2477,'Lambayeque','State','LAM',168,NULL,'Active'),(2478,'Lima','State','LIM',168,NULL,'Active'),(2479,'Loreto','State','LOR',168,NULL,'Active'),(2480,'Madre de Dios','State','MDD',168,NULL,'Active'),(2481,'Moquegua','State','MOQ',168,NULL,'Active'),(2482,'Pasco','State','PAS',168,NULL,'Active'),(2483,'Piura','State','PIU',168,NULL,'Active'),(2484,'Puno','State','PUN',168,NULL,'Active'),(2485,'San Martin','State','SAM',168,NULL,'Active'),(2486,'Tacna','State','TAC',168,NULL,'Active'),(2487,'Tumbes','State','TUM',168,NULL,'Active'),(2488,'Ucayali','State','UCA',168,NULL,'Active'),(2489,'National Capital District (Port Moresby)','State','NCD',166,NULL,'Active'),(2490,'Chimbu','State','CPK',166,NULL,'Active'),(2491,'Eastern Highlands','State','EHG',166,NULL,'Active'),(2492,'East New Britain','State','EBR',166,NULL,'Active'),(2493,'East Sepik','State','ESW',166,NULL,'Active'),(2494,'Enga','State','EPW',166,NULL,'Active'),(2495,'Gulf','State','GPK',166,NULL,'Active'),(2496,'Madang','State','MPM',166,NULL,'Active'),(2497,'Manus','State','MRL',166,NULL,'Active'),(2498,'Milne Bay','State','MBA',166,NULL,'Active'),(2499,'Morobe','State','MPL',166,NULL,'Active'),(2500,'New Ireland','State','NIK',166,NULL,'Active'),(2501,'North Solomons','State','NSA',166,NULL,'Active'),(2502,'Santaun','State','SAN',166,NULL,'Active'),(2503,'Southern Highlands','State','SHM',166,NULL,'Active'),(2504,'Western Highlands','State','WHM',166,NULL,'Active'),(2505,'West New Britain','State','WBK',166,NULL,'Active'),(2506,'Abra','State','ABR',169,NULL,'Active'),(2507,'Agusan del Norte','State','AGN',169,NULL,'Active'),(2508,'Agusan del Sur','State','AGS',169,NULL,'Active'),(2509,'Aklan','State','AKL',169,NULL,'Active'),(2510,'Albay','State','ALB',169,NULL,'Active'),(2511,'Antique','State','ANT',169,NULL,'Active'),(2512,'Apayao','State','APA',169,NULL,'Active'),(2513,'Aurora','State','AUR',169,NULL,'Active'),(2514,'Basilan','State','BAS',169,NULL,'Active'),(2515,'Batasn','State','BAN',169,NULL,'Active'),(2516,'Batanes','State','BTN',169,NULL,'Active'),(2517,'Batangas','State','BTG',169,NULL,'Active'),(2518,'Benguet','State','BEN',169,NULL,'Active'),(2519,'Biliran','State','BIL',169,NULL,'Active'),(2520,'Bohol','State','BOH',169,NULL,'Active'),(2521,'Bukidnon','State','BUK',169,NULL,'Active'),(2522,'Bulacan','State','BUL',169,NULL,'Active'),(2523,'Cagayan','State','CAG',169,NULL,'Active'),(2524,'Camarines Norte','State','CAN',169,NULL,'Active'),(2525,'Camarines Sur','State','CAS',169,NULL,'Active'),(2526,'Camiguin','State','CAM',169,NULL,'Active'),(2527,'Capiz','State','CAP',169,NULL,'Active'),(2528,'Catanduanes','State','CAT',169,NULL,'Active'),(2529,'Cavite','State','CAV',169,NULL,'Active'),(2530,'Cebu','State','CEB',169,NULL,'Active'),(2531,'Compostela Valley','State','COM',169,NULL,'Active'),(2532,'Davao','State','DAV',169,NULL,'Active'),(2533,'Davao del Sur','State','DAS',169,NULL,'Active'),(2534,'Davao Oriental','State','DAO',169,NULL,'Active'),(2535,'Eastern Samar','State','EAS',169,NULL,'Active'),(2536,'Guimaras','State','GUI',169,NULL,'Active'),(2537,'Ifugao','State','IFU',169,NULL,'Active'),(2538,'Ilocos Norte','State','ILN',169,NULL,'Active'),(2539,'Ilocos Sur','State','ILS',169,NULL,'Active'),(2540,'Iloilo','State','ILI',169,NULL,'Active'),(2541,'Isabela','State','ISA',169,NULL,'Active'),(2542,'Kalinga-Apayso','State','KAL',169,NULL,'Active'),(2543,'Laguna','State','LAG',169,NULL,'Active'),(2544,'Lanao del Norte','State','LAN',169,NULL,'Active'),(2545,'Lanao del Sur','State','LAS',169,NULL,'Active'),(2546,'La Union','State','LUN',169,NULL,'Active'),(2547,'Leyte','State','LEY',169,NULL,'Active'),(2548,'Maguindanao','State','MAG',169,NULL,'Active'),(2549,'Marinduque','State','MAD',169,NULL,'Active'),(2550,'Masbate','State','MAS',169,NULL,'Active'),(2551,'Mindoro Occidental','State','MDC',169,NULL,'Active'),(2552,'Mindoro Oriental','State','MDR',169,NULL,'Active'),(2553,'Misamis Occidental','State','MSC',169,NULL,'Active'),(2554,'Misamis Oriental','State','MSR',169,NULL,'Active'),(2555,'Mountain Province','State','MOU',169,NULL,'Active'),(2556,'Negroe Occidental','State','NEC',169,NULL,'Active'),(2557,'Negros Oriental','State','NER',169,NULL,'Active'),(2558,'North Cotabato','State','NCO',169,NULL,'Active'),(2559,'Northern Samar','State','NSA',169,NULL,'Active'),(2560,'Nueva Ecija','State','NUE',169,NULL,'Active'),(2561,'Nueva Vizcaya','State','NUV',169,NULL,'Active'),(2562,'Palawan','State','PLW',169,NULL,'Active'),(2563,'Pampanga','State','PAM',169,NULL,'Active'),(2564,'Pangasinan','State','PAN',169,NULL,'Active'),(2565,'Quezon','State','QUE',169,NULL,'Active'),(2566,'Quirino','State','QUI',169,NULL,'Active'),(2567,'Rizal','State','RIZ',169,NULL,'Active'),(2568,'Romblon','State','ROM',169,NULL,'Active'),(2569,'Sarangani','State','SAR',169,NULL,'Active'),(2570,'Siquijor','State','SIG',169,NULL,'Active'),(2571,'Sorsogon','State','SOR',169,NULL,'Active'),(2572,'South Cotabato','State','SCO',169,NULL,'Active'),(2573,'Southern Leyte','State','SLE',169,NULL,'Active'),(2574,'Sultan Kudarat','State','SUK',169,NULL,'Active'),(2575,'Sulu','State','SLU',169,NULL,'Active'),(2576,'Surigao del Norte','State','SUN',169,NULL,'Active'),(2577,'Surigao del Sur','State','SUR',169,NULL,'Active'),(2578,'Tarlac','State','TAR',169,NULL,'Active'),(2579,'Tawi-Tawi','State','TAW',169,NULL,'Active'),(2580,'Western Samar','State','WSA',169,NULL,'Active'),(2581,'Zambales','State','ZMB',169,NULL,'Active'),(2582,'Zamboanga del Norte','State','ZAN',169,NULL,'Active'),(2583,'Zamboanga del Sur','State','ZAS',169,NULL,'Active'),(2584,'Zamboanga Sibiguey','State','ZSI',169,NULL,'Active'),(2585,'Islamabad','State','IS',162,NULL,'Active'),(2586,'Baluchistan (en)','State','BA',162,NULL,'Active'),(2587,'North-West Frontier','State','NW',162,NULL,'Active'),(2588,'Sind (en)','State','SD',162,NULL,'Active'),(2589,'Federally Administered Tribal Aresa','State','TA',162,NULL,'Active'),(2590,'Azad Rashmir','State','JK',162,NULL,'Active'),(2591,'Northern Areas','State','NA',162,NULL,'Active'),(2592,'Aveiro','State','01',172,NULL,'Active'),(2593,'Beja','State','02',172,NULL,'Active'),(2594,'Braga','State','03',172,NULL,'Active'),(2595,'Braganca','State','04',172,NULL,'Active'),(2596,'Castelo Branco','State','05',172,NULL,'Active'),(2597,'Colmbra','State','06',172,NULL,'Active'),(2598,'Ovora','State','07',172,NULL,'Active'),(2599,'Faro','State','08',172,NULL,'Active'),(2600,'Guarda','State','09',172,NULL,'Active'),(2601,'Leiria','State','10',172,NULL,'Active'),(2602,'Lisboa','State','11',172,NULL,'Active'),(2603,'Portalegre','State','12',172,NULL,'Active'),(2604,'Porto','State','13',172,NULL,'Active'),(2605,'Santarem','State','14',172,NULL,'Active'),(2606,'Setubal','State','15',172,NULL,'Active'),(2607,'Viana do Castelo','State','16',172,NULL,'Active'),(2608,'Vila Real','State','17',172,NULL,'Active'),(2609,'Viseu','State','18',172,NULL,'Active'),(2610,'Regiao Autonoma dos Acores','State','20',172,NULL,'Active'),(2611,'Regiao Autonoma da Madeira','State','30',172,NULL,'Active'),(2612,'Asuncion','State','ASU',167,NULL,'Active'),(2613,'Alto Paraguay','State','16',167,NULL,'Active'),(2614,'Alto Parana','State','10',167,NULL,'Active'),(2615,'Amambay','State','13',167,NULL,'Active'),(2616,'Boqueron','State','19',167,NULL,'Active'),(2617,'Caeguazu','State','5',167,NULL,'Active'),(2618,'Caazapl','State','6',167,NULL,'Active'),(2619,'Canindeyu','State','14',167,NULL,'Active'),(2620,'Concepcion','State','1',167,NULL,'Active'),(2621,'Cordillera','State','3',167,NULL,'Active'),(2622,'Guaira','State','4',167,NULL,'Active'),(2623,'Itapua','State','7',167,NULL,'Active'),(2624,'Miaiones','State','8',167,NULL,'Active'),(2625,'Neembucu','State','12',167,NULL,'Active'),(2626,'Paraguari','State','9',167,NULL,'Active'),(2627,'Presidente Hayes','State','15',167,NULL,'Active'),(2628,'San Pedro','State','2',167,NULL,'Active'),(2629,'Ad Dawhah','State','DA',174,NULL,'Active'),(2630,'Al Ghuwayriyah','State','GH',174,NULL,'Active'),(2631,'Al Jumayliyah','State','JU',174,NULL,'Active'),(2632,'Al Khawr','State','KH',174,NULL,'Active'),(2633,'Al Wakrah','State','WA',174,NULL,'Active'),(2634,'Ar Rayyan','State','RA',174,NULL,'Active'),(2635,'Jariyan al Batnah','State','JB',174,NULL,'Active'),(2636,'Madinat ash Shamal','State','MS',174,NULL,'Active'),(2637,'Umm Salal','State','US',174,NULL,'Active'),(2638,'Bucuresti','State','B',175,NULL,'Active'),(2639,'Alba','State','AB',175,NULL,'Active'),(2640,'Arad','State','AR',175,NULL,'Active'),(2641,'Arges','State','AG',175,NULL,'Active'),(2642,'Bacau','State','BC',175,NULL,'Active'),(2643,'Bihor','State','BH',175,NULL,'Active'),(2644,'Bistrita-Nasaud','State','BN',175,NULL,'Active'),(2645,'Boto\'ani','State','BT',175,NULL,'Active'),(2646,'Bra\'ov','State','BV',175,NULL,'Active'),(2647,'Braila','State','BR',175,NULL,'Active'),(2648,'Buzau','State','BZ',175,NULL,'Active'),(2649,'Caras-Severin','State','CS',175,NULL,'Active'),(2650,'Ca la ras\'i','State','CL',175,NULL,'Active'),(2651,'Cluj','State','CJ',175,NULL,'Active'),(2652,'Constant\'a','State','CT',175,NULL,'Active'),(2653,'Covasna','State','CV',175,NULL,'Active'),(2654,'Dambovit\'a','State','DB',175,NULL,'Active'),(2655,'Dolj','State','DJ',175,NULL,'Active'),(2656,'Galat\'i','State','GL',175,NULL,'Active'),(2657,'Giurgiu','State','GR',175,NULL,'Active'),(2658,'Gorj','State','GJ',175,NULL,'Active'),(2659,'Harghita','State','HR',175,NULL,'Active'),(2660,'Hunedoara','State','HD',175,NULL,'Active'),(2661,'Ialomit\'a','State','IL',175,NULL,'Active'),(2662,'Ias\'i','State','IS',175,NULL,'Active'),(2663,'Ilfov','State','IF',175,NULL,'Active'),(2664,'Maramures','State','MM',175,NULL,'Active'),(2665,'Mehedint\'i','State','MH',175,NULL,'Active'),(2666,'Mures','State','MS',175,NULL,'Active'),(2667,'Neamt','State','NT',175,NULL,'Active'),(2668,'Olt','State','OT',175,NULL,'Active'),(2669,'Prahova','State','PH',175,NULL,'Active'),(2670,'Satu Mare','State','SM',175,NULL,'Active'),(2671,'Sa laj','State','SJ',175,NULL,'Active'),(2672,'Sibiu','State','SB',175,NULL,'Active'),(2673,'Suceava','State','SV',175,NULL,'Active'),(2674,'Teleorman','State','TR',175,NULL,'Active'),(2675,'Timis','State','TM',175,NULL,'Active'),(2676,'Tulcea','State','TL',175,NULL,'Active'),(2677,'Vaslui','State','VS',175,NULL,'Active'),(2678,'Valcea','State','VL',175,NULL,'Active'),(2679,'Vrancea','State','VN',175,NULL,'Active'),(2680,'Adygeya, Respublika','State','AD',176,NULL,'Active'),(2681,'Altay, Respublika','State','AL',176,NULL,'Active'),(2682,'Bashkortostan, Respublika','State','BA',176,NULL,'Active'),(2683,'Buryatiya, Respublika','State','BU',176,NULL,'Active'),(2684,'Chechenskaya Respublika','State','CE',176,NULL,'Active'),(2685,'Chuvashskaya Respublika','State','CU',176,NULL,'Active'),(2686,'Dagestan, Respublika','State','DA',176,NULL,'Active'),(2687,'Ingushskaya Respublika','State','IN',176,NULL,'Active'),(2688,'Kabardino-Balkarskaya','State','KB',176,NULL,'Active'),(2689,'Kalmykiya, Respublika','State','KL',176,NULL,'Active'),(2690,'Karachayevo-Cherkesskaya Respublika','State','KC',176,NULL,'Active'),(2691,'Kareliya, Respublika','State','KR',176,NULL,'Active'),(2692,'Khakasiya, Respublika','State','KK',176,NULL,'Active'),(2693,'Komi, Respublika','State','KO',176,NULL,'Active'),(2694,'Mariy El, Respublika','State','ME',176,NULL,'Active'),(2695,'Mordoviya, Respublika','State','MO',176,NULL,'Active'),(2696,'Sakha, Respublika [Yakutiya]','State','SA',176,NULL,'Active'),(2697,'Severnaya Osetiya, Respublika','State','SE',176,NULL,'Active'),(2698,'Tatarstan, Respublika','State','TA',176,NULL,'Active'),(2699,'Tyva, Respublika [Tuva]','State','TY',176,NULL,'Active'),(2700,'Udmurtskaya Respublika','State','UD',176,NULL,'Active'),(2701,'Altayskiy kray','State','ALT',176,NULL,'Active'),(2702,'Khabarovskiy kray','State','KHA',176,NULL,'Active'),(2703,'Krasnodarskiy kray','State','KDA',176,NULL,'Active'),(2704,'Krasnoyarskiy kray','State','KYA',176,NULL,'Active'),(2705,'Primorskiy kray','State','PRI',176,NULL,'Active'),(2706,'Stavropol\'skiy kray','State','STA',176,NULL,'Active'),(2707,'Amurskaya oblast\'','State','AMU',176,NULL,'Active'),(2708,'Arkhangel\'skaya oblast\'','State','ARK',176,NULL,'Active'),(2709,'Astrakhanskaya oblast\'','State','AST',176,NULL,'Active'),(2710,'Belgorodskaya oblast\'','State','BEL',176,NULL,'Active'),(2711,'Bryanskaya oblast\'','State','BRY',176,NULL,'Active'),(2712,'Chelyabinskaya oblast\'','State','CHE',176,NULL,'Active'),(2713,'Chitinskaya oblast\'','State','CHI',176,NULL,'Active'),(2714,'Irkutskaya oblast\'','State','IRK',176,NULL,'Active'),(2715,'Ivanovskaya oblast\'','State','IVA',176,NULL,'Active'),(2716,'Kaliningradskaya oblast\'','State','KGD',176,NULL,'Active'),(2717,'Kaluzhskaya oblast\'','State','KLU',176,NULL,'Active'),(2718,'Kamchatskaya oblast\'','State','KAM',176,NULL,'Active'),(2719,'Kemerovskaya oblast\'','State','KEM',176,NULL,'Active'),(2720,'Kirovskaya oblast\'','State','KIR',176,NULL,'Active'),(2721,'Kostromskaya oblast\'','State','KOS',176,NULL,'Active'),(2722,'Kurganskaya oblast\'','State','KGN',176,NULL,'Active'),(2723,'Kurskaya oblast\'','State','KRS',176,NULL,'Active'),(2724,'Leningradskaya oblast\'','State','LEN',176,NULL,'Active'),(2725,'Lipetskaya oblast\'','State','LIP',176,NULL,'Active'),(2726,'Magadanskaya oblast\'','State','MAG',176,NULL,'Active'),(2727,'Moskovskaya oblast\'','State','MOS',176,NULL,'Active'),(2728,'Murmanskaya oblast\'','State','MUR',176,NULL,'Active'),(2729,'Nizhegorodskaya oblast\'','State','NIZ',176,NULL,'Active'),(2730,'Novgorodskaya oblast\'','State','NGR',176,NULL,'Active'),(2731,'Novosibirskaya oblast\'','State','NVS',176,NULL,'Active'),(2732,'Omskaya oblast\'','State','OMS',176,NULL,'Active'),(2733,'Orenburgskaya oblast\'','State','ORE',176,NULL,'Active'),(2734,'Orlovskaya oblast\'','State','ORL',176,NULL,'Active'),(2735,'Penzenskaya oblast\'','State','PNZ',176,NULL,'Active'),(2736,'Permskaya oblast\'','State','PER',176,NULL,'Active'),(2737,'Pskovskaya oblast\'','State','PSK',176,NULL,'Active'),(2738,'Rostovskaya oblast\'','State','ROS',176,NULL,'Active'),(2739,'Ryazanskaya oblast\'','State','RYA',176,NULL,'Active'),(2740,'Sakhalinskaya oblast\'','State','SAK',176,NULL,'Active'),(2741,'Samarskaya oblast\'','State','SAM',176,NULL,'Active'),(2742,'Saratovskaya oblast\'','State','SAR',176,NULL,'Active'),(2743,'Smolenskaya oblast\'','State','SMO',176,NULL,'Active'),(2744,'Sverdlovskaya oblast\'','State','SVE',176,NULL,'Active'),(2745,'Tambovskaya oblast\'','State','TAM',176,NULL,'Active'),(2746,'Tomskaya oblast\'','State','TOM',176,NULL,'Active'),(2747,'Tul\'skaya oblast\'','State','TUL',176,NULL,'Active'),(2748,'Tverskaya oblast\'','State','TVE',176,NULL,'Active'),(2749,'Tyumenskaya oblast\'','State','TYU',176,NULL,'Active'),(2750,'Ul\'yanovskaya oblast\'','State','ULY',176,NULL,'Active'),(2751,'Vladimirskaya oblast\'','State','VLA',176,NULL,'Active'),(2752,'Volgogradskaya oblast\'','State','VGG',176,NULL,'Active'),(2753,'Vologodskaya oblast\'','State','VLG',176,NULL,'Active'),(2754,'Voronezhskaya oblast\'','State','VOR',176,NULL,'Active'),(2755,'Yaroslavskaya oblast\'','State','YAR',176,NULL,'Active'),(2756,'Moskva','State','MOW',176,NULL,'Active'),(2757,'Sankt-Peterburg','State','SPE',176,NULL,'Active'),(2758,'Yevreyskaya avtonomnaya oblast\'','State','YEV',176,NULL,'Active'),(2759,'Aginskiy Buryatskiy avtonomnyy','State','AGB',176,NULL,'Active'),(2760,'Chukotskiy avtonomnyy okrug','State','CHU',176,NULL,'Active'),(2761,'Evenkiyskiy avtonomnyy okrug','State','EVE',176,NULL,'Active'),(2762,'Khanty-Mansiyskiy avtonomnyy okrug','State','KHM',176,NULL,'Active'),(2763,'Komi-Permyatskiy avtonomnyy okrug','State','KOP',176,NULL,'Active'),(2764,'Koryakskiy avtonomnyy okrug','State','KOR',176,NULL,'Active'),(2765,'Nenetskiy avtonomnyy okrug','State','NEN',176,NULL,'Active'),(2766,'Taymyrskiy (Dolgano-Nenetskiy)','State','TAY',176,NULL,'Active'),(2767,'Ust\'-Ordynskiy Buryatskiy','State','UOB',176,NULL,'Active'),(2768,'Yamalo-Nenetskiy avtonomnyy okrug','State','YAN',176,NULL,'Active'),(2769,'Butare','State','C',177,NULL,'Active'),(2770,'Byumba','State','I',177,NULL,'Active'),(2771,'Cyangugu','State','E',177,NULL,'Active'),(2772,'Gikongoro','State','D',177,NULL,'Active'),(2773,'Gisenyi','State','G',177,NULL,'Active'),(2774,'Gitarama','State','B',177,NULL,'Active'),(2775,'Kibungo','State','J',177,NULL,'Active'),(2776,'Kibuye','State','F',177,NULL,'Active'),(2777,'Kigali-Rural Kigali y\' Icyaro','State','K',177,NULL,'Active'),(2778,'Kigali-Ville Kigali Ngari','State','L',177,NULL,'Active'),(2779,'Mutara','State','M',177,NULL,'Active'),(2780,'Ruhengeri','State','H',177,NULL,'Active'),(2781,'Al Batah','State','11',186,NULL,'Active'),(2782,'Al H,udd ash Shamallyah','State','08',186,NULL,'Active'),(2783,'Al Jawf','State','12',186,NULL,'Active'),(2784,'Al Madinah','State','03',186,NULL,'Active'),(2785,'Al Qasim','State','05',186,NULL,'Active'),(2786,'Ar Riyad','State','01',186,NULL,'Active'),(2787,'Asir','State','14',186,NULL,'Active'),(2788,'Ha\'il','State','06',186,NULL,'Active'),(2789,'Jlzan','State','09',186,NULL,'Active'),(2790,'Makkah','State','02',186,NULL,'Active'),(2791,'Najran','State','10',186,NULL,'Active'),(2792,'Tabuk','State','07',186,NULL,'Active'),(2793,'Capital Territory (Honiara)','State','CT',193,NULL,'Active'),(2794,'Guadalcanal','State','GU',193,NULL,'Active'),(2795,'Isabel','State','IS',193,NULL,'Active'),(2796,'Makira','State','MK',193,NULL,'Active'),(2797,'Malaita','State','ML',193,NULL,'Active'),(2798,'Temotu','State','TE',193,NULL,'Active'),(2799,'A\'ali an Nil','State','23',199,NULL,'Active'),(2800,'Al Bah al Ahmar','State','26',199,NULL,'Active'),(2801,'Al Buhayrat','State','18',199,NULL,'Active'),(2802,'Al Jazirah','State','07',199,NULL,'Active'),(2803,'Al Khartum','State','03',199,NULL,'Active'),(2804,'Al Qadarif','State','06',199,NULL,'Active'),(2805,'Al Wahdah','State','22',199,NULL,'Active'),(2806,'An Nil','State','04',199,NULL,'Active'),(2807,'An Nil al Abyaq','State','08',199,NULL,'Active'),(2808,'An Nil al Azraq','State','24',199,NULL,'Active'),(2809,'Ash Shamallyah','State','01',199,NULL,'Active'),(2810,'Bahr al Jabal','State','17',199,NULL,'Active'),(2811,'Gharb al Istiwa\'iyah','State','16',199,NULL,'Active'),(2812,'Gharb Ba~r al Ghazal','State','14',199,NULL,'Active'),(2813,'Gharb Darfur','State','12',199,NULL,'Active'),(2814,'Gharb Kurdufan','State','10',199,NULL,'Active'),(2815,'Janub Darfur','State','11',199,NULL,'Active'),(2816,'Janub Rurdufan','State','13',199,NULL,'Active'),(2817,'Jnqall','State','20',199,NULL,'Active'),(2818,'Kassala','State','05',199,NULL,'Active'),(2819,'Shamal Batr al Ghazal','State','15',199,NULL,'Active'),(2820,'Shamal Darfur','State','02',199,NULL,'Active'),(2821,'Shamal Kurdufan','State','09',199,NULL,'Active'),(2822,'Sharq al Istiwa\'iyah','State','19',199,NULL,'Active'),(2823,'Sinnar','State','25',199,NULL,'Active'),(2824,'Warab','State','21',199,NULL,'Active'),(2825,'Blekinge lan','State','K',203,NULL,'Active'),(2826,'Dalarnas lan','State','W',203,NULL,'Active'),(2827,'Gotlands lan','State','I',203,NULL,'Active'),(2828,'Gavleborge lan','State','X',203,NULL,'Active'),(2829,'Hallands lan','State','N',203,NULL,'Active'),(2830,'Jamtlande lan','State','Z',203,NULL,'Active'),(2831,'Jonkopings lan','State','F',203,NULL,'Active'),(2832,'Kalmar lan','State','H',203,NULL,'Active'),(2833,'Kronoberge lan','State','G',203,NULL,'Active'),(2834,'Norrbottena lan','State','BD',203,NULL,'Active'),(2835,'Skane lan','State','M',203,NULL,'Active'),(2836,'Stockholms lan','State','AB',203,NULL,'Active'),(2837,'Sodermanlands lan','State','D',203,NULL,'Active'),(2838,'Uppsala lan','State','C',203,NULL,'Active'),(2839,'Varmlanda lan','State','S',203,NULL,'Active'),(2840,'Vasterbottens lan','State','AC',203,NULL,'Active'),(2841,'Vasternorrlands lan','State','Y',203,NULL,'Active'),(2842,'Vastmanlanda lan','State','U',203,NULL,'Active'),(2843,'Vastra Gotalands lan','State','Q',203,NULL,'Active'),(2844,'Orebro lan','State','T',203,NULL,'Active'),(2845,'Ostergotlands lan','State','E',203,NULL,'Active'),(2846,'Saint Helena','State','SH',179,NULL,'Active'),(2847,'Ascension','State','AC',179,NULL,'Active'),(2848,'Tristan da Cunha','State','TA',179,NULL,'Active'),(2849,'Ajdovscina','State','001',192,NULL,'Active'),(2850,'Beltinci','State','002',192,NULL,'Active'),(2851,'Benedikt','State','148',192,NULL,'Active'),(2852,'Bistrica ob Sotli','State','149',192,NULL,'Active'),(2853,'Bled','State','003',192,NULL,'Active'),(2854,'Bloke','State','150',192,NULL,'Active'),(2855,'Bohinj','State','004',192,NULL,'Active'),(2856,'Borovnica','State','005',192,NULL,'Active'),(2857,'Bovec','State','006',192,NULL,'Active'),(2858,'Braslovce','State','151',192,NULL,'Active'),(2859,'Brda','State','007',192,NULL,'Active'),(2860,'Brezovica','State','008',192,NULL,'Active'),(2861,'Brezica','State','009',192,NULL,'Active'),(2862,'Cankova','State','152',192,NULL,'Active'),(2863,'Celje','State','011',192,NULL,'Active'),(2864,'Cerklje na Gorenjskem','State','012',192,NULL,'Active'),(2865,'Cerknica','State','013',192,NULL,'Active'),(2866,'Cerkno','State','014',192,NULL,'Active'),(2867,'Cerkvenjak','State','153',192,NULL,'Active'),(2868,'Crensovci','State','015',192,NULL,'Active'),(2869,'Crna na Koroskem','State','016',192,NULL,'Active'),(2870,'Crnomelj','State','017',192,NULL,'Active'),(2871,'Destrnik','State','018',192,NULL,'Active'),(2872,'Divaca','State','019',192,NULL,'Active'),(2873,'Dobje','State','154',192,NULL,'Active'),(2874,'Dobrepolje','State','020',192,NULL,'Active'),(2875,'Dobrna','State','155',192,NULL,'Active'),(2876,'Dobrova-Polhov Gradec','State','021',192,NULL,'Active'),(2877,'Dobrovnik','State','156',192,NULL,'Active'),(2878,'Dol pri Ljubljani','State','022',192,NULL,'Active'),(2879,'Dolenjske Toplice','State','157',192,NULL,'Active'),(2880,'Domzale','State','023',192,NULL,'Active'),(2881,'Dornava','State','024',192,NULL,'Active'),(2882,'Dravograd','State','025',192,NULL,'Active'),(2883,'Duplek','State','026',192,NULL,'Active'),(2884,'Gorenja vas-Poljane','State','027',192,NULL,'Active'),(2885,'Gorsnica','State','028',192,NULL,'Active'),(2886,'Gornja Radgona','State','029',192,NULL,'Active'),(2887,'Gornji Grad','State','030',192,NULL,'Active'),(2888,'Gornji Petrovci','State','031',192,NULL,'Active'),(2889,'Grad','State','158',192,NULL,'Active'),(2890,'Grosuplje','State','032',192,NULL,'Active'),(2891,'Hajdina','State','159',192,NULL,'Active'),(2892,'Hoce-Slivnica','State','160',192,NULL,'Active'),(2893,'Hodos','State','161',192,NULL,'Active'),(2894,'Jorjul','State','162',192,NULL,'Active'),(2895,'Hrastnik','State','034',192,NULL,'Active'),(2896,'Hrpelje-Kozina','State','035',192,NULL,'Active'),(2897,'Idrija','State','036',192,NULL,'Active'),(2898,'Ig','State','037',192,NULL,'Active'),(2899,'IIrska Bistrica','State','038',192,NULL,'Active'),(2900,'Ivancna Gorica','State','039',192,NULL,'Active'),(2901,'Izola','State','040',192,NULL,'Active'),(2902,'Jesenice','State','041',192,NULL,'Active'),(2903,'Jezersko','State','163',192,NULL,'Active'),(2904,'Jursinci','State','042',192,NULL,'Active'),(2905,'Kamnik','State','043',192,NULL,'Active'),(2906,'Kanal','State','044',192,NULL,'Active'),(2907,'Kidricevo','State','045',192,NULL,'Active'),(2908,'Kobarid','State','046',192,NULL,'Active'),(2909,'Kobilje','State','047',192,NULL,'Active'),(2910,'Jovevje','State','048',192,NULL,'Active'),(2911,'Komen','State','049',192,NULL,'Active'),(2912,'Komenda','State','164',192,NULL,'Active'),(2913,'Koper','State','050',192,NULL,'Active'),(2914,'Kostel','State','165',192,NULL,'Active'),(2915,'Kozje','State','051',192,NULL,'Active'),(2916,'Kranj','State','052',192,NULL,'Active'),(2917,'Kranjska Gora','State','053',192,NULL,'Active'),(2918,'Krizevci','State','166',192,NULL,'Active'),(2919,'Krsko','State','054',192,NULL,'Active'),(2920,'Kungota','State','055',192,NULL,'Active'),(2921,'Kuzma','State','056',192,NULL,'Active'),(2922,'Lasko','State','057',192,NULL,'Active'),(2923,'Lenart','State','058',192,NULL,'Active'),(2924,'Lendava','State','059',192,NULL,'Active'),(2925,'Litija','State','060',192,NULL,'Active'),(2926,'Ljubljana','State','061',192,NULL,'Active'),(2927,'Ljubno','State','062',192,NULL,'Active'),(2928,'Ljutomer','State','063',192,NULL,'Active'),(2929,'Logatec','State','064',192,NULL,'Active'),(2930,'Loska dolina','State','065',192,NULL,'Active'),(2931,'Loski Potok','State','066',192,NULL,'Active'),(2932,'Lovrenc na Pohorju','State','167',192,NULL,'Active'),(2933,'Luce','State','067',192,NULL,'Active'),(2934,'Lukovica','State','068',192,NULL,'Active'),(2935,'Majsperk','State','069',192,NULL,'Active'),(2936,'Maribor','State','070',192,NULL,'Active'),(2937,'Markovci','State','168',192,NULL,'Active'),(2938,'Medvode','State','071',192,NULL,'Active'),(2939,'Menges','State','072',192,NULL,'Active'),(2940,'Metlika','State','073',192,NULL,'Active'),(2941,'Mezica','State','074',192,NULL,'Active'),(2942,'Miklavz na Dravskern polju','State','169',192,NULL,'Active'),(2943,'Miren-Kostanjevica','State','075',192,NULL,'Active'),(2944,'Mirna Pec','State','170',192,NULL,'Active'),(2945,'Mislinja','State','076',192,NULL,'Active'),(2946,'Moravce','State','077',192,NULL,'Active'),(2947,'Moravske Toplice','State','078',192,NULL,'Active'),(2948,'Mozirje','State','079',192,NULL,'Active'),(2949,'Murska Sobota','State','080',192,NULL,'Active'),(2950,'Muta','State','081',192,NULL,'Active'),(2951,'Naklo','State','082',192,NULL,'Active'),(2952,'Nazarje','State','083',192,NULL,'Active'),(2953,'Nova Gorica','State','084',192,NULL,'Active'),(2954,'Nova mesto','State','085',192,NULL,'Active'),(2955,'Sveta Ana','State','181',192,NULL,'Active'),(2956,'Sveti Andraz v Slovenskih goricah','State','182',192,NULL,'Active'),(2957,'Sveti Jurij','State','116',192,NULL,'Active'),(2958,'Salovci','State','033',192,NULL,'Active'),(2959,'Sempeter-Vrtojba','State','183',192,NULL,'Active'),(2960,'Sencur','State','117',192,NULL,'Active'),(2961,'Sentilj','State','118',192,NULL,'Active'),(2962,'Sentjernej','State','119',192,NULL,'Active'),(2963,'Sentjur pri Celju','State','120',192,NULL,'Active'),(2964,'Skocjan','State','121',192,NULL,'Active'),(2965,'Skofja Loka','State','122',192,NULL,'Active'),(2966,'Skoftjica','State','123',192,NULL,'Active'),(2967,'Smarje pri Jelsah','State','124',192,NULL,'Active'),(2968,'Smartno ob Paki','State','125',192,NULL,'Active'),(2969,'Smartno pri Litiji','State','194',192,NULL,'Active'),(2970,'Sostanj','State','126',192,NULL,'Active'),(2971,'Store','State','127',192,NULL,'Active'),(2972,'Tabor','State','184',192,NULL,'Active'),(2973,'Tisina','State','010',192,NULL,'Active'),(2974,'Tolmin','State','128',192,NULL,'Active'),(2975,'Trbovje','State','129',192,NULL,'Active'),(2976,'Trebnje','State','130',192,NULL,'Active'),(2977,'Trnovska vas','State','185',192,NULL,'Active'),(2978,'Trzic','State','131',192,NULL,'Active'),(2979,'Trzin','State','186',192,NULL,'Active'),(2980,'Turnisce','State','132',192,NULL,'Active'),(2981,'Velenje','State','133',192,NULL,'Active'),(2982,'Velika Polana','State','187',192,NULL,'Active'),(2983,'Velika Lasce','State','134',192,NULL,'Active'),(2984,'Verzej','State','188',192,NULL,'Active'),(2985,'Videm','State','135',192,NULL,'Active'),(2986,'Vipava','State','136',192,NULL,'Active'),(2987,'Vitanje','State','137',192,NULL,'Active'),(2988,'Vojnik','State','138',192,NULL,'Active'),(2989,'Vransko','State','189',192,NULL,'Active'),(2990,'Vrhnika','State','140',192,NULL,'Active'),(2991,'Vuzenica','State','141',192,NULL,'Active'),(2992,'Zagorje ob Savi','State','142',192,NULL,'Active'),(2993,'Zavrc','State','143',192,NULL,'Active'),(2994,'Zrece','State','144',192,NULL,'Active'),(2995,'Zalec','State','190',192,NULL,'Active'),(2996,'Zelezniki','State','146',192,NULL,'Active'),(2997,'Zetale','State','191',192,NULL,'Active'),(2998,'Ziri','State','147',192,NULL,'Active'),(2999,'Zirovnica','State','192',192,NULL,'Active'),(3000,'Zuzemberk','State','193',192,NULL,'Active'),(3001,'Banskobystrický kraj','State','BC',191,NULL,'Active'),(3002,'Bratislavský kraj','State','BL',191,NULL,'Active'),(3003,'Košický kraj','State','KI',191,NULL,'Active'),(3004,'Nitriansky kraj','State','NJ',191,NULL,'Active'),(3005,'Prešovský kraj','State','PV',191,NULL,'Active'),(3006,'Tren?iansky kraj','State','TC',191,NULL,'Active'),(3007,'Trnavský kraj','State','TA',191,NULL,'Active'),(3008,'Žilinský kraj','State','ZI',191,NULL,'Active'),(3009,'Western Area (Freetown)','State','W',189,NULL,'Active'),(3010,'Dakar','State','DK',187,NULL,'Active'),(3011,'Diourbel','State','DB',187,NULL,'Active'),(3012,'Fatick','State','FK',187,NULL,'Active'),(3013,'Kaolack','State','KL',187,NULL,'Active'),(3014,'Kolda','State','KD',187,NULL,'Active'),(3015,'Louga','State','LG',187,NULL,'Active'),(3016,'Matam','State','MT',187,NULL,'Active'),(3017,'Saint-Louis','State','SL',187,NULL,'Active'),(3018,'Tambacounda','State','TC',187,NULL,'Active'),(3019,'Thies','State','TH',187,NULL,'Active'),(3020,'Ziguinchor','State','ZG',187,NULL,'Active'),(3021,'Awdal','State','AW',194,NULL,'Active'),(3022,'Bakool','State','BK',194,NULL,'Active'),(3023,'Banaadir','State','BN',194,NULL,'Active'),(3024,'Bay','State','BY',194,NULL,'Active'),(3025,'Galguduud','State','GA',194,NULL,'Active'),(3026,'Gedo','State','GE',194,NULL,'Active'),(3027,'Hiirsan','State','HI',194,NULL,'Active'),(3028,'Jubbada Dhexe','State','JD',194,NULL,'Active'),(3029,'Jubbada Hoose','State','JH',194,NULL,'Active'),(3030,'Mudug','State','MU',194,NULL,'Active'),(3031,'Nugaal','State','NU',194,NULL,'Active'),(3032,'Saneag','State','SA',194,NULL,'Active'),(3033,'Shabeellaha Dhexe','State','SD',194,NULL,'Active'),(3034,'Shabeellaha Hoose','State','SH',194,NULL,'Active'),(3035,'Sool','State','SO',194,NULL,'Active'),(3036,'Togdheer','State','TO',194,NULL,'Active'),(3037,'Woqooyi Galbeed','State','WO',194,NULL,'Active'),(3038,'Brokopondo','State','BR',200,NULL,'Active'),(3039,'Commewijne','State','CM',200,NULL,'Active'),(3040,'Coronie','State','CR',200,NULL,'Active'),(3041,'Marowijne','State','MA',200,NULL,'Active'),(3042,'Nickerie','State','NI',200,NULL,'Active'),(3043,'Paramaribo','State','PM',200,NULL,'Active'),(3044,'Saramacca','State','SA',200,NULL,'Active'),(3045,'Sipaliwini','State','SI',200,NULL,'Active'),(3046,'Wanica','State','WA',200,NULL,'Active'),(3047,'Principe','State','P',206,NULL,'Active'),(3048,'Sao Tome','State','S',206,NULL,'Active'),(3049,'Ahuachapan','State','AH',66,NULL,'Active'),(3050,'Cabanas','State','CA',66,NULL,'Active'),(3051,'Cuscatlan','State','CU',66,NULL,'Active'),(3052,'Chalatenango','State','CH',66,NULL,'Active'),(3053,'Morazan','State','MO',66,NULL,'Active'),(3054,'San Miguel','State','SM',66,NULL,'Active'),(3055,'San Salvador','State','SS',66,NULL,'Active'),(3056,'Santa Ana','State','SA',66,NULL,'Active'),(3057,'San Vicente','State','SV',66,NULL,'Active'),(3058,'Sonsonate','State','SO',66,NULL,'Active'),(3059,'Usulutan','State','US',66,NULL,'Active'),(3060,'Al Hasakah','State','HA',205,NULL,'Active'),(3061,'Al Ladhiqiyah','State','LA',205,NULL,'Active'),(3062,'Al Qunaytirah','State','QU',205,NULL,'Active'),(3063,'Ar Raqqah','State','RA',205,NULL,'Active'),(3064,'As Suwayda\'','State','SU',205,NULL,'Active'),(3065,'Dar\'a','State','DR',205,NULL,'Active'),(3066,'Dayr az Zawr','State','DY',205,NULL,'Active'),(3067,'Dimashq','State','DI',205,NULL,'Active'),(3068,'Halab','State','HL',205,NULL,'Active'),(3069,'Hamah','State','HM',205,NULL,'Active'),(3070,'Jim\'','State','HI',205,NULL,'Active'),(3071,'Idlib','State','ID',205,NULL,'Active'),(3072,'Rif Dimashq','State','RD',205,NULL,'Active'),(3073,'Tarts','State','TA',205,NULL,'Active'),(3074,'Hhohho','State','HH',202,NULL,'Active'),(3075,'Lubombo','State','LU',202,NULL,'Active'),(3076,'Manzini','State','MA',202,NULL,'Active'),(3077,'Shiselweni','State','SH',202,NULL,'Active'),(3078,'Batha','State','BA',43,NULL,'Active'),(3079,'Biltine','State','BI',43,NULL,'Active'),(3080,'Borkou-Ennedi-Tibesti','State','BET',43,NULL,'Active'),(3081,'Chari-Baguirmi','State','CB',43,NULL,'Active'),(3082,'Guera','State','GR',43,NULL,'Active'),(3083,'Kanem','State','KA',43,NULL,'Active'),(3084,'Lac','State','LC',43,NULL,'Active'),(3085,'Logone-Occidental','State','LO',43,NULL,'Active'),(3086,'Logone-Oriental','State','LR',43,NULL,'Active'),(3087,'Mayo-Kebbi','State','MK',43,NULL,'Active'),(3088,'Moyen-Chari','State','MC',43,NULL,'Active'),(3089,'Ouaddai','State','OD',43,NULL,'Active'),(3090,'Salamat','State','SA',43,NULL,'Active'),(3091,'Tandjile','State','TA',43,NULL,'Active'),(3092,'Kara','State','K',213,NULL,'Active'),(3093,'Maritime (Region)','State','M',213,NULL,'Active'),(3094,'Savannes','State','S',213,NULL,'Active'),(3095,'Krung Thep Maha Nakhon Bangkok','State','10',210,NULL,'Active'),(3096,'Phatthaya','State','S',210,NULL,'Active'),(3097,'Amnat Charoen','State','37',210,NULL,'Active'),(3098,'Ang Thong','State','15',210,NULL,'Active'),(3099,'Buri Ram','State','31',210,NULL,'Active'),(3100,'Chachoengsao','State','24',210,NULL,'Active'),(3101,'Chai Nat','State','18',210,NULL,'Active'),(3102,'Chaiyaphum','State','36',210,NULL,'Active'),(3103,'Chanthaburi','State','22',210,NULL,'Active'),(3104,'Chiang Mai','State','50',210,NULL,'Active'),(3105,'Chiang Rai','State','57',210,NULL,'Active'),(3106,'Chon Buri','State','20',210,NULL,'Active'),(3107,'Chumphon','State','86',210,NULL,'Active'),(3108,'Kalasin','State','46',210,NULL,'Active'),(3109,'Kamphasng Phet','State','62',210,NULL,'Active'),(3110,'Kanchanaburi','State','71',210,NULL,'Active'),(3111,'Khon Kaen','State','40',210,NULL,'Active'),(3112,'Krabi','State','81',210,NULL,'Active'),(3113,'Lampang','State','52',210,NULL,'Active'),(3114,'Lamphun','State','51',210,NULL,'Active'),(3115,'Loei','State','42',210,NULL,'Active'),(3116,'Lop Buri','State','16',210,NULL,'Active'),(3117,'Mae Hong Son','State','58',210,NULL,'Active'),(3118,'Maha Sarakham','State','44',210,NULL,'Active'),(3119,'Mukdahan','State','49',210,NULL,'Active'),(3120,'Nakhon Nayok','State','26',210,NULL,'Active'),(3121,'Nakhon Pathom','State','73',210,NULL,'Active'),(3122,'Nakhon Phanom','State','48',210,NULL,'Active'),(3123,'Nakhon Ratchasima','State','30',210,NULL,'Active'),(3124,'Nakhon Sawan','State','60',210,NULL,'Active'),(3125,'Nakhon Si Thammarat','State','80',210,NULL,'Active'),(3126,'Nan','State','55',210,NULL,'Active'),(3127,'Narathiwat','State','96',210,NULL,'Active'),(3128,'Nong Bua Lam Phu','State','39',210,NULL,'Active'),(3129,'Nong Khai','State','43',210,NULL,'Active'),(3130,'Nonthaburi','State','12',210,NULL,'Active'),(3131,'Pathum Thani','State','13',210,NULL,'Active'),(3132,'Pattani','State','94',210,NULL,'Active'),(3133,'Phangnga','State','82',210,NULL,'Active'),(3134,'Phatthalung','State','93',210,NULL,'Active'),(3135,'Phayao','State','56',210,NULL,'Active'),(3136,'Phetchabun','State','67',210,NULL,'Active'),(3137,'Phetchaburi','State','76',210,NULL,'Active'),(3138,'Phichit','State','66',210,NULL,'Active'),(3139,'Phitsanulok','State','65',210,NULL,'Active'),(3140,'Phrae','State','54',210,NULL,'Active'),(3141,'Phra Nakhon Si Ayutthaya','State','14',210,NULL,'Active'),(3142,'Phaket','State','83',210,NULL,'Active'),(3143,'Prachin Buri','State','25',210,NULL,'Active'),(3144,'Prachuap Khiri Khan','State','77',210,NULL,'Active'),(3145,'Ranong','State','85',210,NULL,'Active'),(3146,'Ratchaburi','State','70',210,NULL,'Active'),(3147,'Rayong','State','21',210,NULL,'Active'),(3148,'Roi Et','State','45',210,NULL,'Active'),(3149,'Sa Kaeo','State','27',210,NULL,'Active'),(3150,'Sakon Nakhon','State','47',210,NULL,'Active'),(3151,'Samut Prakan','State','11',210,NULL,'Active'),(3152,'Samut Sakhon','State','74',210,NULL,'Active'),(3153,'Samut Songkhram','State','75',210,NULL,'Active'),(3154,'Saraburi','State','19',210,NULL,'Active'),(3155,'Satun','State','91',210,NULL,'Active'),(3156,'Sing Buri','State','17',210,NULL,'Active'),(3157,'Si Sa Ket','State','33',210,NULL,'Active'),(3158,'Songkhla','State','90',210,NULL,'Active'),(3159,'Sukhothai','State','64',210,NULL,'Active'),(3160,'Suphan Buri','State','72',210,NULL,'Active'),(3161,'Surat Thani','State','84',210,NULL,'Active'),(3162,'Surin','State','32',210,NULL,'Active'),(3163,'Tak','State','63',210,NULL,'Active'),(3164,'Trang','State','92',210,NULL,'Active'),(3165,'Trat','State','23',210,NULL,'Active'),(3166,'Ubon Ratchathani','State','34',210,NULL,'Active'),(3167,'Udon Thani','State','41',210,NULL,'Active'),(3168,'Uthai Thani','State','61',210,NULL,'Active'),(3169,'Uttaradit','State','53',210,NULL,'Active'),(3170,'Yala','State','95',210,NULL,'Active'),(3171,'Yasothon','State','35',210,NULL,'Active'),(3172,'Sughd','State','SU',208,NULL,'Active'),(3173,'Khatlon','State','KT',208,NULL,'Active'),(3174,'Gorno-Badakhshan','State','GB',208,NULL,'Active'),(3175,'Ahal','State','A',219,NULL,'Active'),(3176,'Balkan','State','B',219,NULL,'Active'),(3177,'Dasoguz','State','D',219,NULL,'Active'),(3178,'Lebap','State','L',219,NULL,'Active'),(3179,'Mary','State','M',219,NULL,'Active'),(3180,'Béja','State','31',217,NULL,'Active'),(3181,'Ben Arous','State','13',217,NULL,'Active'),(3182,'Bizerte','State','23',217,NULL,'Active'),(3183,'Gabès','State','81',217,NULL,'Active'),(3184,'Gafsa','State','71',217,NULL,'Active'),(3185,'Jendouba','State','32',217,NULL,'Active'),(3186,'Kairouan','State','41',217,NULL,'Active'),(3187,'Rasserine','State','42',217,NULL,'Active'),(3188,'Kebili','State','73',217,NULL,'Active'),(3189,'L\'Ariana','State','12',217,NULL,'Active'),(3190,'Le Ref','State','33',217,NULL,'Active'),(3191,'Mahdia','State','53',217,NULL,'Active'),(3192,'La Manouba','State','14',217,NULL,'Active'),(3193,'Medenine','State','82',217,NULL,'Active'),(3194,'Moneatir','State','52',217,NULL,'Active'),(3195,'Naboul','State','21',217,NULL,'Active'),(3196,'Sfax','State','61',217,NULL,'Active'),(3197,'Sidi Bouxid','State','43',217,NULL,'Active'),(3198,'Siliana','State','34',217,NULL,'Active'),(3199,'Sousse','State','51',217,NULL,'Active'),(3200,'Tataouine','State','83',217,NULL,'Active'),(3201,'Tozeur','State','72',217,NULL,'Active'),(3202,'Tunis','State','11',217,NULL,'Active'),(3203,'Zaghouan','State','22',217,NULL,'Active'),(3204,'Adana','State','01',218,NULL,'Active'),(3205,'Ad yaman','State','02',218,NULL,'Active'),(3206,'Afyon','State','03',218,NULL,'Active'),(3207,'Ag r','State','04',218,NULL,'Active'),(3208,'Aksaray','State','68',218,NULL,'Active'),(3209,'Amasya','State','05',218,NULL,'Active'),(3210,'Ankara','State','06',218,NULL,'Active'),(3211,'Antalya','State','07',218,NULL,'Active'),(3212,'Ardahan','State','75',218,NULL,'Active'),(3213,'Artvin','State','08',218,NULL,'Active'),(3214,'Aydin','State','09',218,NULL,'Active'),(3215,'Bal kesir','State','10',218,NULL,'Active'),(3216,'Bartin','State','74',218,NULL,'Active'),(3217,'Batman','State','72',218,NULL,'Active'),(3218,'Bayburt','State','69',218,NULL,'Active'),(3219,'Bilecik','State','11',218,NULL,'Active'),(3220,'Bingol','State','12',218,NULL,'Active'),(3221,'Bitlis','State','13',218,NULL,'Active'),(3222,'Bolu','State','14',218,NULL,'Active'),(3223,'Burdur','State','15',218,NULL,'Active'),(3224,'Bursa','State','16',218,NULL,'Active'),(3225,'Canakkale','State','17',218,NULL,'Active'),(3226,'Cankir','State','18',218,NULL,'Active'),(3227,'Corum','State','19',218,NULL,'Active'),(3228,'Denizli','State','20',218,NULL,'Active'),(3229,'Diyarbakir','State','21',218,NULL,'Active'),(3230,'Duzce','State','81',218,NULL,'Active'),(3231,'Edirne','State','22',218,NULL,'Active'),(3232,'Elazig','State','23',218,NULL,'Active'),(3233,'Erzincan','State','24',218,NULL,'Active'),(3234,'Erzurum','State','25',218,NULL,'Active'),(3235,'Eskis\'ehir','State','26',218,NULL,'Active'),(3236,'Gaziantep','State','27',218,NULL,'Active'),(3237,'Giresun','State','28',218,NULL,'Active'),(3238,'Gms\'hane','State','29',218,NULL,'Active'),(3239,'Hakkari','State','30',218,NULL,'Active'),(3240,'Hatay','State','31',218,NULL,'Active'),(3241,'Igidir','State','76',218,NULL,'Active'),(3242,'Isparta','State','32',218,NULL,'Active'),(3243,'Icel','State','33',218,NULL,'Active'),(3244,'Istanbul','State','34',218,NULL,'Active'),(3245,'Izmir','State','35',218,NULL,'Active'),(3246,'Kahramanmaras','State','46',218,NULL,'Active'),(3247,'Karabk','State','78',218,NULL,'Active'),(3248,'Karaman','State','70',218,NULL,'Active'),(3249,'Kars','State','36',218,NULL,'Active'),(3250,'Kastamonu','State','37',218,NULL,'Active'),(3251,'Kayseri','State','38',218,NULL,'Active'),(3252,'Kirikkale','State','71',218,NULL,'Active'),(3253,'Kirklareli','State','39',218,NULL,'Active'),(3254,'Kirs\'ehir','State','40',218,NULL,'Active'),(3255,'Kilis','State','79',218,NULL,'Active'),(3256,'Kocaeli','State','41',218,NULL,'Active'),(3257,'Konya','State','42',218,NULL,'Active'),(3258,'Ktahya','State','43',218,NULL,'Active'),(3259,'Malatya','State','44',218,NULL,'Active'),(3260,'Manisa','State','45',218,NULL,'Active'),(3261,'Mardin','State','47',218,NULL,'Active'),(3262,'Mugila','State','48',218,NULL,'Active'),(3263,'Mus','State','49',218,NULL,'Active'),(3264,'Nevs\'ehir','State','50',218,NULL,'Active'),(3265,'Nigide','State','51',218,NULL,'Active'),(3266,'Ordu','State','52',218,NULL,'Active'),(3267,'Osmaniye','State','80',218,NULL,'Active'),(3268,'Rize','State','53',218,NULL,'Active'),(3269,'Sakarya','State','54',218,NULL,'Active'),(3270,'Samsun','State','55',218,NULL,'Active'),(3271,'Siirt','State','56',218,NULL,'Active'),(3272,'Sinop','State','57',218,NULL,'Active'),(3273,'Sivas','State','58',218,NULL,'Active'),(3274,'S\'anliurfa','State','63',218,NULL,'Active'),(3275,'S\'rnak','State','73',218,NULL,'Active'),(3276,'Tekirdag','State','59',218,NULL,'Active'),(3277,'Tokat','State','60',218,NULL,'Active'),(3278,'Trabzon','State','61',218,NULL,'Active'),(3279,'Tunceli','State','62',218,NULL,'Active'),(3280,'Us\'ak','State','64',218,NULL,'Active'),(3281,'Van','State','65',218,NULL,'Active'),(3282,'Yalova','State','77',218,NULL,'Active'),(3283,'Yozgat','State','66',218,NULL,'Active'),(3284,'Zonguldak','State','67',218,NULL,'Active'),(3285,'Couva-Tabaquite-Talparo','State','CTT',216,NULL,'Active'),(3286,'Diego Martin','State','DMN',216,NULL,'Active'),(3287,'Eastern Tobago','State','ETO',216,NULL,'Active'),(3288,'Penal-Debe','State','PED',216,NULL,'Active'),(3289,'Princes Town','State','PRT',216,NULL,'Active'),(3290,'Rio Claro-Mayaro','State','RCM',216,NULL,'Active'),(3291,'Sangre Grande','State','SGE',216,NULL,'Active'),(3292,'San Juan-Laventille','State','SJL',216,NULL,'Active'),(3293,'Siparia','State','SIP',216,NULL,'Active'),(3294,'Tunapuna-Piarco','State','TUP',216,NULL,'Active'),(3295,'Western Tobago','State','WTO',216,NULL,'Active'),(3296,'Arima','State','ARI',216,NULL,'Active'),(3297,'Chaguanas','State','CHA',216,NULL,'Active'),(3298,'Point Fortin','State','PTF',216,NULL,'Active'),(3299,'Port of Spain','State','POS',216,NULL,'Active'),(3300,'San Fernando','State','SFO',216,NULL,'Active'),(3301,'Aileu','State','AL',63,NULL,'Active'),(3302,'Ainaro','State','AN',63,NULL,'Active'),(3303,'Bacucau','State','BA',63,NULL,'Active'),(3304,'Bobonaro','State','BO',63,NULL,'Active'),(3305,'Cova Lima','State','CO',63,NULL,'Active'),(3306,'Dili','State','DI',63,NULL,'Active'),(3307,'Ermera','State','ER',63,NULL,'Active'),(3308,'Laulem','State','LA',63,NULL,'Active'),(3309,'Liquica','State','LI',63,NULL,'Active'),(3310,'Manatuto','State','MT',63,NULL,'Active'),(3311,'Manafahi','State','MF',63,NULL,'Active'),(3312,'Oecussi','State','OE',63,NULL,'Active'),(3313,'Viqueque','State','VI',63,NULL,'Active'),(3314,'Changhua','State','CHA',207,NULL,'Active'),(3315,'Chiayi','State','CYQ',207,NULL,'Active'),(3316,'Hsinchu','State','HSQ',207,NULL,'Active'),(3317,'Hualien','State','HUA',207,NULL,'Active'),(3318,'Ilan','State','ILA',207,NULL,'Active'),(3319,'Kaohsiung','State','KHQ',207,NULL,'Active'),(3320,'Miaoli','State','MIA',207,NULL,'Active'),(3321,'Nantou','State','NAN',207,NULL,'Active'),(3322,'Penghu','State','PEN',207,NULL,'Active'),(3323,'Pingtung','State','PIF',207,NULL,'Active'),(3324,'Taichung','State','TXQ',207,NULL,'Active'),(3325,'Tainan','State','TNQ',207,NULL,'Active'),(3326,'Taipei','State','TPQ',207,NULL,'Active'),(3327,'Taitung','State','TTT',207,NULL,'Active'),(3328,'Taoyuan','State','TAO',207,NULL,'Active'),(3329,'Yunlin','State','YUN',207,NULL,'Active'),(3330,'Keelung','State','KEE',207,NULL,'Active'),(3331,'Arusha','State','01',209,NULL,'Active'),(3332,'Dar-es-Salaam','State','02',209,NULL,'Active'),(3333,'Dodoma','State','03',209,NULL,'Active'),(3334,'Iringa','State','04',209,NULL,'Active'),(3335,'Kagera','State','05',209,NULL,'Active'),(3336,'Kaskazini Pemba','State','06',209,NULL,'Active'),(3337,'Kaskazini Unguja','State','07',209,NULL,'Active'),(3338,'Xigoma','State','08',209,NULL,'Active'),(3339,'Kilimanjaro','State','09',209,NULL,'Active'),(3340,'Rusini Pemba','State','10',209,NULL,'Active'),(3341,'Kusini Unguja','State','11',209,NULL,'Active'),(3342,'Lindi','State','12',209,NULL,'Active'),(3343,'Manyara','State','26',209,NULL,'Active'),(3344,'Mara','State','13',209,NULL,'Active'),(3345,'Mbeya','State','14',209,NULL,'Active'),(3346,'Mjini Magharibi','State','15',209,NULL,'Active'),(3347,'Morogoro','State','16',209,NULL,'Active'),(3348,'Mtwara','State','17',209,NULL,'Active'),(3349,'Pwani','State','19',209,NULL,'Active'),(3350,'Rukwa','State','20',209,NULL,'Active'),(3351,'Ruvuma','State','21',209,NULL,'Active'),(3352,'Shinyanga','State','22',209,NULL,'Active'),(3353,'Singida','State','23',209,NULL,'Active'),(3354,'Tabora','State','24',209,NULL,'Active'),(3355,'Tanga','State','25',209,NULL,'Active'),(3356,'Cherkas\'ka Oblast\'','State','71',223,NULL,'Active'),(3357,'Chernihivs\'ka Oblast\'','State','74',223,NULL,'Active'),(3358,'Chernivets\'ka Oblast\'','State','77',223,NULL,'Active'),(3359,'Dnipropetrovs\'ka Oblast\'','State','12',223,NULL,'Active'),(3360,'Donets\'ka Oblast\'','State','14',223,NULL,'Active'),(3361,'Ivano-Frankivs\'ka Oblast\'','State','26',223,NULL,'Active'),(3362,'Kharkivs\'ka Oblast\'','State','63',223,NULL,'Active'),(3363,'Khersons\'ka Oblast\'','State','65',223,NULL,'Active'),(3364,'Khmel\'nyts\'ka Oblast\'','State','68',223,NULL,'Active'),(3365,'Kirovohrads\'ka Oblast\'','State','35',223,NULL,'Active'),(3366,'Kyivs\'ka Oblast\'','State','32',223,NULL,'Active'),(3367,'Luhans\'ka Oblast\'','State','09',223,NULL,'Active'),(3368,'L\'vivs\'ka Oblast\'','State','46',223,NULL,'Active'),(3369,'Mykolaivs\'ka Oblast\'','State','48',223,NULL,'Active'),(3370,'Odes \'ka Oblast\'','State','51',223,NULL,'Active'),(3371,'Poltavs\'ka Oblast\'','State','53',223,NULL,'Active'),(3372,'Rivnens\'ka Oblast\'','State','56',223,NULL,'Active'),(3373,'Sums \'ka Oblast\'','State','59',223,NULL,'Active'),(3374,'Ternopil\'s\'ka Oblast\'','State','61',223,NULL,'Active'),(3375,'Vinnyts\'ka Oblast\'','State','05',223,NULL,'Active'),(3376,'Volyos\'ka Oblast\'','State','07',223,NULL,'Active'),(3377,'Zakarpats\'ka Oblast\'','State','21',223,NULL,'Active'),(3378,'Zaporiz\'ka Oblast\'','State','23',223,NULL,'Active'),(3379,'Zhytomyrs\'ka Oblast\'','State','18',223,NULL,'Active'),(3380,'Respublika Krym','State','43',223,NULL,'Active'),(3381,'Kyiv','State','30',223,NULL,'Active'),(3382,'Sevastopol','State','40',223,NULL,'Active'),(3383,'Adjumani','State','301',222,NULL,'Active'),(3384,'Apac','State','302',222,NULL,'Active'),(3385,'Arua','State','303',222,NULL,'Active'),(3386,'Bugiri','State','201',222,NULL,'Active'),(3387,'Bundibugyo','State','401',222,NULL,'Active'),(3388,'Bushenyi','State','402',222,NULL,'Active'),(3389,'Busia','State','202',222,NULL,'Active'),(3390,'Gulu','State','304',222,NULL,'Active'),(3391,'Hoima','State','403',222,NULL,'Active'),(3392,'Iganga','State','203',222,NULL,'Active'),(3393,'Jinja','State','204',222,NULL,'Active'),(3394,'Kabale','State','404',222,NULL,'Active'),(3395,'Kabarole','State','405',222,NULL,'Active'),(3396,'Kaberamaido','State','213',222,NULL,'Active'),(3397,'Kalangala','State','101',222,NULL,'Active'),(3398,'Kampala','State','102',222,NULL,'Active'),(3399,'Kamuli','State','205',222,NULL,'Active'),(3400,'Kamwenge','State','413',222,NULL,'Active'),(3401,'Kanungu','State','414',222,NULL,'Active'),(3402,'Kapchorwa','State','206',222,NULL,'Active'),(3403,'Kasese','State','406',222,NULL,'Active'),(3404,'Katakwi','State','207',222,NULL,'Active'),(3405,'Kayunga','State','112',222,NULL,'Active'),(3406,'Kibaale','State','407',222,NULL,'Active'),(3407,'Kiboga','State','103',222,NULL,'Active'),(3408,'Kisoro','State','408',222,NULL,'Active'),(3409,'Kitgum','State','305',222,NULL,'Active'),(3410,'Kotido','State','306',222,NULL,'Active'),(3411,'Kumi','State','208',222,NULL,'Active'),(3412,'Kyenjojo','State','415',222,NULL,'Active'),(3413,'Lira','State','307',222,NULL,'Active'),(3414,'Luwero','State','104',222,NULL,'Active'),(3415,'Masaka','State','105',222,NULL,'Active'),(3416,'Masindi','State','409',222,NULL,'Active'),(3417,'Mayuge','State','214',222,NULL,'Active'),(3418,'Mbale','State','209',222,NULL,'Active'),(3419,'Mbarara','State','410',222,NULL,'Active'),(3420,'Moroto','State','308',222,NULL,'Active'),(3421,'Moyo','State','309',222,NULL,'Active'),(3422,'Mpigi','State','106',222,NULL,'Active'),(3423,'Mubende','State','107',222,NULL,'Active'),(3424,'Mukono','State','108',222,NULL,'Active'),(3425,'Nakapiripirit','State','311',222,NULL,'Active'),(3426,'Nakasongola','State','109',222,NULL,'Active'),(3427,'Nebbi','State','310',222,NULL,'Active'),(3428,'Ntungamo','State','411',222,NULL,'Active'),(3429,'Pader','State','312',222,NULL,'Active'),(3430,'Pallisa','State','210',222,NULL,'Active'),(3431,'Rakai','State','110',222,NULL,'Active'),(3432,'Rukungiri','State','412',222,NULL,'Active'),(3433,'Sembabule','State','111',222,NULL,'Active'),(3434,'Sironko','State','215',222,NULL,'Active'),(3435,'Soroti','State','211',222,NULL,'Active'),(3436,'Tororo','State','212',222,NULL,'Active'),(3437,'Wakiso','State','113',222,NULL,'Active'),(3438,'Yumbe','State','313',222,NULL,'Active'),(3439,'Baker Island','State','81',226,NULL,'Active'),(3440,'Howland Island','State','84',226,NULL,'Active'),(3441,'Jarvis Island','State','86',226,NULL,'Active'),(3442,'Johnston Atoll','State','67',226,NULL,'Active'),(3443,'Kingman Reef','State','89',226,NULL,'Active'),(3444,'Midway Islands','State','71',226,NULL,'Active'),(3445,'Navassa Island','State','76',226,NULL,'Active'),(3446,'Palmyra Atoll','State','95',226,NULL,'Active'),(3447,'Wake Ialand','State','79',226,NULL,'Active'),(3448,'Artigsa','State','AR',228,NULL,'Active'),(3449,'Canelones','State','CA',228,NULL,'Active'),(3450,'Cerro Largo','State','CL',228,NULL,'Active'),(3451,'Colonia','State','CO',228,NULL,'Active'),(3452,'Durazno','State','DU',228,NULL,'Active'),(3453,'Flores','State','FS',228,NULL,'Active'),(3454,'Lavalleja','State','LA',228,NULL,'Active'),(3455,'Maldonado','State','MA',228,NULL,'Active'),(3456,'Montevideo','State','MO',228,NULL,'Active'),(3457,'Paysandu','State','PA',228,NULL,'Active'),(3458,'Rivera','State','RV',228,NULL,'Active'),(3459,'Rocha','State','RO',228,NULL,'Active'),(3460,'Salto','State','SA',228,NULL,'Active'),(3461,'Soriano','State','SO',228,NULL,'Active'),(3462,'Tacuarembo','State','TA',228,NULL,'Active'),(3463,'Treinta y Tres','State','TT',228,NULL,'Active'),(3464,'Toshkent (city)','State','TK',229,NULL,'Active'),(3465,'Qoraqalpogiston Respublikasi','State','QR',229,NULL,'Active'),(3466,'Andijon','State','AN',229,NULL,'Active'),(3467,'Buxoro','State','BU',229,NULL,'Active'),(3468,'Farg\'ona','State','FA',229,NULL,'Active'),(3469,'Jizzax','State','JI',229,NULL,'Active'),(3470,'Khorazm','State','KH',229,NULL,'Active'),(3471,'Namangan','State','NG',229,NULL,'Active'),(3472,'Navoiy','State','NW',229,NULL,'Active'),(3473,'Qashqadaryo','State','QA',229,NULL,'Active'),(3474,'Samarqand','State','SA',229,NULL,'Active'),(3475,'Sirdaryo','State','SI',229,NULL,'Active'),(3476,'Surxondaryo','State','SU',229,NULL,'Active'),(3477,'Toshkent','State','TO',229,NULL,'Active'),(3478,'Xorazm','State','XO',229,NULL,'Active'),(3479,'Diatrito Federal','State','A',231,NULL,'Active'),(3480,'Anzoategui','State','B',231,NULL,'Active'),(3481,'Apure','State','C',231,NULL,'Active'),(3482,'Aragua','State','D',231,NULL,'Active'),(3483,'Barinas','State','E',231,NULL,'Active'),(3484,'Carabobo','State','G',231,NULL,'Active'),(3485,'Cojedes','State','H',231,NULL,'Active'),(3486,'Falcon','State','I',231,NULL,'Active'),(3487,'Guarico','State','J',231,NULL,'Active'),(3488,'Lara','State','K',231,NULL,'Active'),(3489,'Merida','State','L',231,NULL,'Active'),(3490,'Miranda','State','M',231,NULL,'Active'),(3491,'Monagas','State','N',231,NULL,'Active'),(3492,'Nueva Esparta','State','O',231,NULL,'Active'),(3493,'Portuguesa','State','P',231,NULL,'Active'),(3494,'Tachira','State','S',231,NULL,'Active'),(3495,'Trujillo','State','T',231,NULL,'Active'),(3496,'Vargas','State','X',231,NULL,'Active'),(3497,'Yaracuy','State','U',231,NULL,'Active'),(3498,'Zulia','State','V',231,NULL,'Active'),(3499,'Delta Amacuro','State','Y',231,NULL,'Active'),(3500,'Dependencias Federales','State','W',231,NULL,'Active'),(3501,'An Giang','State','44',232,NULL,'Active'),(3502,'Ba Ria - Vung Tau','State','43',232,NULL,'Active'),(3503,'Bac Can','State','53',232,NULL,'Active'),(3504,'Bac Giang','State','54',232,NULL,'Active'),(3505,'Bac Lieu','State','55',232,NULL,'Active'),(3506,'Bac Ninh','State','56',232,NULL,'Active'),(3507,'Ben Tre','State','50',232,NULL,'Active'),(3508,'Binh Dinh','State','31',232,NULL,'Active'),(3509,'Binh Duong','State','57',232,NULL,'Active'),(3510,'Binh Phuoc','State','58',232,NULL,'Active'),(3511,'Binh Thuan','State','40',232,NULL,'Active'),(3512,'Ca Mau','State','59',232,NULL,'Active'),(3513,'Can Tho','State','48',232,NULL,'Active'),(3514,'Cao Bang','State','04',232,NULL,'Active'),(3515,'Da Nang, thanh pho','State','60',232,NULL,'Active'),(3516,'Dong Nai','State','39',232,NULL,'Active'),(3517,'Dong Thap','State','45',232,NULL,'Active'),(3518,'Gia Lai','State','30',232,NULL,'Active'),(3519,'Ha Giang','State','03',232,NULL,'Active'),(3520,'Ha Nam','State','63',232,NULL,'Active'),(3521,'Ha Noi, thu do','State','64',232,NULL,'Active'),(3522,'Ha Tay','State','15',232,NULL,'Active'),(3523,'Ha Tinh','State','23',232,NULL,'Active'),(3524,'Hai Duong','State','61',232,NULL,'Active'),(3525,'Hai Phong, thanh pho','State','62',232,NULL,'Active'),(3526,'Hoa Binh','State','14',232,NULL,'Active'),(3527,'Ho Chi Minh, thanh pho [Sai Gon]','State','65',232,NULL,'Active'),(3528,'Hung Yen','State','66',232,NULL,'Active'),(3529,'Khanh Hoa','State','34',232,NULL,'Active'),(3530,'Kien Giang','State','47',232,NULL,'Active'),(3531,'Kon Tum','State','28',232,NULL,'Active'),(3532,'Lai Chau','State','01',232,NULL,'Active'),(3533,'Lam Dong','State','35',232,NULL,'Active'),(3534,'Lang Son','State','09',232,NULL,'Active'),(3535,'Lao Cai','State','02',232,NULL,'Active'),(3536,'Long An','State','41',232,NULL,'Active'),(3537,'Nam Dinh','State','67',232,NULL,'Active'),(3538,'Nghe An','State','22',232,NULL,'Active'),(3539,'Ninh Binh','State','18',232,NULL,'Active'),(3540,'Ninh Thuan','State','36',232,NULL,'Active'),(3541,'Phu Tho','State','68',232,NULL,'Active'),(3542,'Phu Yen','State','32',232,NULL,'Active'),(3543,'Quang Binh','State','24',232,NULL,'Active'),(3544,'Quang Nam','State','27',232,NULL,'Active'),(3545,'Quang Ngai','State','29',232,NULL,'Active'),(3546,'Quang Ninh','State','13',232,NULL,'Active'),(3547,'Quang Tri','State','25',232,NULL,'Active'),(3548,'Soc Trang','State','52',232,NULL,'Active'),(3549,'Son La','State','05',232,NULL,'Active'),(3550,'Tay Ninh','State','37',232,NULL,'Active'),(3551,'Thai Binh','State','20',232,NULL,'Active'),(3552,'Thai Nguyen','State','69',232,NULL,'Active'),(3553,'Thanh Hoa','State','21',232,NULL,'Active'),(3554,'Thua Thien-Hue','State','26',232,NULL,'Active'),(3555,'Tien Giang','State','46',232,NULL,'Active'),(3556,'Tra Vinh','State','51',232,NULL,'Active'),(3557,'Tuyen Quang','State','07',232,NULL,'Active'),(3558,'Vinh Long','State','49',232,NULL,'Active'),(3559,'Vinh Phuc','State','70',232,NULL,'Active'),(3560,'Yen Bai','State','06',232,NULL,'Active'),(3561,'Malampa','State','MAP',230,NULL,'Active'),(3562,'Penama','State','PAM',230,NULL,'Active'),(3563,'Sanma','State','SAM',230,NULL,'Active'),(3564,'Shefa','State','SEE',230,NULL,'Active'),(3565,'Tafea','State','TAE',230,NULL,'Active'),(3566,'Torba','State','TOB',230,NULL,'Active'),(3567,'A\'ana','State','AA',184,NULL,'Active'),(3568,'Aiga-i-le-Tai','State','AL',184,NULL,'Active'),(3569,'Atua','State','AT',184,NULL,'Active'),(3570,'Fa\'aaaleleaga','State','FA',184,NULL,'Active'),(3571,'Gaga\'emauga','State','GE',184,NULL,'Active'),(3572,'Gagaifomauga','State','GI',184,NULL,'Active'),(3573,'Palauli','State','PA',184,NULL,'Active'),(3574,'Satupa\'itea','State','SA',184,NULL,'Active'),(3575,'Tuamasaga','State','TU',184,NULL,'Active'),(3576,'Va\'a-o-Fonoti','State','VF',184,NULL,'Active'),(3577,'Vaisigano','State','VS',184,NULL,'Active'),(3578,'Crna Gora','State','CG',237,NULL,'Active'),(3579,'Srbija','State','SR',237,NULL,'Active'),(3580,'Kosovo-Metohija','State','KM',237,NULL,'Active'),(3581,'Vojvodina','State','VO',237,NULL,'Active'),(3582,'Abyan','State','AB',236,NULL,'Active'),(3583,'Adan','State','AD',236,NULL,'Active'),(3584,'Ad Dali','State','DA',236,NULL,'Active'),(3585,'Al Bayda\'','State','BA',236,NULL,'Active'),(3586,'Al Hudaydah','State','MU',236,NULL,'Active'),(3587,'Al Mahrah','State','MR',236,NULL,'Active'),(3588,'Al Mahwit','State','MW',236,NULL,'Active'),(3589,'Amran','State','AM',236,NULL,'Active'),(3590,'Dhamar','State','DH',236,NULL,'Active'),(3591,'Hadramawt','State','HD',236,NULL,'Active'),(3592,'Hajjah','State','HJ',236,NULL,'Active'),(3593,'Ibb','State','IB',236,NULL,'Active'),(3594,'Lahij','State','LA',236,NULL,'Active'),(3595,'Ma\'rib','State','MA',236,NULL,'Active'),(3596,'Sa\'dah','State','SD',236,NULL,'Active'),(3597,'San\'a\'','State','SN',236,NULL,'Active'),(3598,'Shabwah','State','SH',236,NULL,'Active'),(3599,'Ta\'izz','State','TA',236,NULL,'Active'),(3600,'Eastern Cape','State','EC',195,NULL,'Active'),(3601,'Free State','State','FS',195,NULL,'Active'),(3602,'Gauteng','State','GT',195,NULL,'Active'),(3603,'Kwazulu-Natal','State','NL',195,NULL,'Active'),(3604,'Mpumalanga','State','MP',195,NULL,'Active'),(3605,'Northern Cape','State','NC',195,NULL,'Active'),(3606,'Limpopo','State','NP',195,NULL,'Active'),(3607,'Western Cape','State','WC',195,NULL,'Active'),(3608,'Copperbelt','State','08',238,NULL,'Active'),(3609,'Luapula','State','04',238,NULL,'Active'),(3610,'Lusaka','State','09',238,NULL,'Active'),(3611,'North-Western','State','06',238,NULL,'Active'),(3612,'Bulawayo','State','BU',239,NULL,'Active'),(3613,'Harare','State','HA',239,NULL,'Active'),(3614,'Manicaland','State','MA',239,NULL,'Active'),(3615,'Mashonaland Central','State','MC',239,NULL,'Active'),(3616,'Mashonaland East','State','ME',239,NULL,'Active'),(3617,'Mashonaland West','State','MW',239,NULL,'Active'),(3618,'Masvingo','State','MV',239,NULL,'Active'),(3619,'Matabeleland North','State','MN',239,NULL,'Active'),(3620,'Matabeleland South','State','MS',239,NULL,'Active'),(3621,'Midlands','State','MI',239,NULL,'Active'),(3622,'South Karelia','State','SK',74,NULL,'Active'),(3623,'South Ostrobothnia','State','SO',74,NULL,'Active'),(3624,'Etelä-Savo','State','ES',74,NULL,'Active'),(3625,'Häme','State','HH',74,NULL,'Active'),(3626,'Itä-Uusimaa','State','IU',74,NULL,'Active'),(3627,'Kainuu','State','KA',74,NULL,'Active'),(3628,'Central Ostrobothnia','State','CO',74,NULL,'Active'),(3629,'Central Finland','State','CF',74,NULL,'Active'),(3630,'Kymenlaakso','State','KY',74,NULL,'Active'),(3631,'Lapland','State','LA',74,NULL,'Active'),(3632,'Tampere Region','State','TR',74,NULL,'Active'),(3633,'Ostrobothnia','State','OB',74,NULL,'Active'),(3634,'North Karelia','State','NK',74,NULL,'Active'),(3635,'Nothern Ostrobothnia','State','NO',74,NULL,'Active'),(3636,'Northern Savo','State','NS',74,NULL,'Active'),(3637,'Päijät-Häme','State','PH',74,NULL,'Active'),(3638,'Satakunta','State','SK',74,NULL,'Active'),(3639,'Uusimaa','State','UM',74,NULL,'Active'),(3640,'South-West Finland','State','SW',74,NULL,'Active'),(3641,'Åland','State','AL',74,NULL,'Active'),(3642,'Limburg','State','LI',151,NULL,'Active'),(3643,'Central and Western','State','CW',97,NULL,'Active'),(3644,'Eastern','State','EA',97,NULL,'Active'),(3645,'Southern','State','SO',97,NULL,'Active'),(3646,'Wan Chai','State','WC',97,NULL,'Active'),(3647,'Kowloon City','State','KC',97,NULL,'Active'),(3648,'Kwun Tong','State','KU',97,NULL,'Active'),(3649,'Sham Shui Po','State','SS',97,NULL,'Active'),(3650,'Wong Tai Sin','State','WT',97,NULL,'Active'),(3651,'Yau Tsim Mong','State','YT',97,NULL,'Active'),(3652,'Islands','State','IS',97,NULL,'Active'),(3653,'Kwai Tsing','State','KI',97,NULL,'Active'),(3654,'North','State','NO',97,NULL,'Active'),(3655,'Sai Kung','State','SK',97,NULL,'Active'),(3656,'Sha Tin','State','ST',97,NULL,'Active'),(3657,'Tai Po','State','TP',97,NULL,'Active'),(3658,'Tsuen Wan','State','TW',97,NULL,'Active'),(3659,'Tuen Mun','State','TM',97,NULL,'Active'),(3660,'Yuen Long','State','YL',97,NULL,'Active'),(3661,'Manchester','State','MR',107,NULL,'Active'),(3662,'Al Man?mah (Al ‘??imah)','State','13',16,NULL,'Active'),(3663,'Al Jan?b?yah','State','14',16,NULL,'Active'),(3664,'Al Wus?á','State','16',16,NULL,'Active'),(3665,'Ash Sham?l?yah','State','17',16,NULL,'Active'),(3666,'Jenin','State','_A',164,NULL,'Active'),(3667,'Tubas','State','_B',164,NULL,'Active'),(3668,'Tulkarm','State','_C',164,NULL,'Active'),(3669,'Nablus','State','_D',164,NULL,'Active'),(3670,'Qalqilya','State','_E',164,NULL,'Active'),(3671,'Salfit','State','_F',164,NULL,'Active'),(3672,'Ramallah and Al-Bireh','State','_G',164,NULL,'Active'),(3673,'Jericho','State','_H',164,NULL,'Active'),(3674,'Jerusalem','State','_I',164,NULL,'Active'),(3675,'Bethlehem','State','_J',164,NULL,'Active'),(3676,'Hebron','State','_K',164,NULL,'Active'),(3677,'North Gaza','State','_L',164,NULL,'Active'),(3678,'Gaza','State','_M',164,NULL,'Active'),(3679,'Deir el-Balah','State','_N',164,NULL,'Active'),(3680,'Khan Yunis','State','_O',164,NULL,'Active'),(3681,'Rafah','State','_P',164,NULL,'Active'),(3682,'Brussels','State','BRU',20,NULL,'Active'),(3683,'Distrito Federal','State','DIF',139,NULL,'Active'),(3684,'North West','State','NW',195,NULL,'Active'),(3685,'Tyne and Wear','State','TWR',225,NULL,'Active'),(3686,'Greater Manchester','State','GTM',225,NULL,'Active'),(3687,'Co Tyrone','State','TYR',225,NULL,'Active'),(3688,'West Yorkshire','State','WYK',225,NULL,'Active'),(3689,'South Yorkshire','State','SYK',225,NULL,'Active'),(3690,'Merseyside','State','MSY',225,NULL,'Active'),(3691,'Berkshire','State','BRK',225,NULL,'Active'),(3692,'West Midlands','State','WMD',225,NULL,'Active'),(3693,'West Glamorgan','State','WGM',225,NULL,'Active'),(3694,'Greater London','State','LON',225,NULL,'Active'),(3695,'Carbonia-Iglesias','State','CI',106,NULL,'Active'),(3696,'Olbia-Tempio','State','OT',106,NULL,'Active'),(3697,'Medio Campidano','State','VS',106,NULL,'Active'),(3698,'Ogliastra','State','OG',106,NULL,'Active'),(3699,'Bonaire','State','BON',150,NULL,'Active'),(3700,'Curaçao','State','CUR',150,NULL,'Active'),(3701,'Saba','State','SAB',150,NULL,'Active'),(3702,'St. Eustatius','State','EUA',150,NULL,'Active'),(3703,'St. Maarten','State','SXM',150,NULL,'Active'),(3704,'Jura','State','39',75,NULL,'Active'),(3705,'Barletta-Andria-Trani','State','Bar',106,NULL,'Active'),(3706,'Fermo','State','Fer',106,NULL,'Active'),(3707,'Monza e Brianza','State','Mon',106,NULL,'Active'),(3708,'Clwyd','State','CWD',225,NULL,'Active'),(3709,'Dyfed','State','DFD',225,NULL,'Active'),(3710,'South Glamorgan','State','SGM',225,NULL,'Active'),(3711,'Artibonite','State','AR',93,NULL,'Active'),(3712,'Centre','State','CE',93,NULL,'Active'),(3713,'Nippes','State','NI',93,NULL,'Active'),(3714,'Nord','State','ND',93,NULL,'Active');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_transaction`
--

DROP TABLE IF EXISTS `store_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `related_document_id` int(11) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `from_warehouse_id` int(11) DEFAULT NULL,
  `to_warehouse_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `jobcard_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `delivery_via` varchar(255) DEFAULT NULL,
  `delivery_reference` varchar(255) DEFAULT NULL,
  `shipping_address` text,
  `shipping_charge` double(8,4) DEFAULT NULL,
  `narration` text,
  `tracking_code` text,
  `related_transaction_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `related_doc_id` (`related_document_id`) USING BTREE,
  KEY `from_warehouse_id` (`from_warehouse_id`) USING BTREE,
  KEY `to_warehouse_id` (`to_warehouse_id`) USING BTREE,
  KEY `jobcard_id` (`jobcard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_transaction`
--

LOCK TABLES `store_transaction` WRITE;
/*!40000 ALTER TABLE `store_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_transaction_row`
--

DROP TABLE IF EXISTS `store_transaction_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_transaction_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `store_transaction_id` int(11) DEFAULT NULL,
  `qsp_detail_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` double(8,4) DEFAULT NULL,
  `jobcard_detail_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `extra_info` longtext,
  `related_transaction_row_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epan_id` (`epan_id`) USING BTREE,
  KEY `store_transaction_id` (`store_transaction_id`) USING BTREE,
  KEY `qsp_detail_id` (`qsp_detail_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_transaction_row`
--

LOCK TABLES `store_transaction_row` WRITE;
/*!40000 ALTER TABLE `store_transaction_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_transaction_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_transaction_row_custom_field_value`
--

DROP TABLE IF EXISTS `store_transaction_row_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_transaction_row_custom_field_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customfield_generic_id` int(11) DEFAULT NULL,
  `customfield_value_id` int(11) DEFAULT NULL,
  `store_transaction_row_id` int(11) DEFAULT NULL,
  `custom_name` varchar(255) DEFAULT NULL,
  `custom_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_transaction_row_custom_field_value`
--

LOCK TABLES `store_transaction_row_custom_field_value` WRITE;
/*!40000 ALTER TABLE `store_transaction_row_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_transaction_row_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `contact_id` int(11) NOT NULL,
  `tin_no` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pan_no` varchar(255) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`),
  KEY `currency_id` (`currency_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_ticket`
--

DROP TABLE IF EXISTS `support_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_ticket` (
  `document_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `communication_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `from_raw` text,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `to_raw` text,
  `cc_raw` text,
  `bcc_raw` text,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext,
  `priority` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `contact_id` (`contact_id`) USING BTREE,
  KEY `communication_id` (`communication_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_ticket`
--

LOCK TABLES `support_ticket` WRITE;
/*!40000 ALTER TABLE `support_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `assign_to_id` int(11) DEFAULT NULL,
  `description` text,
  `starting_date` datetime DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `estimate_time` varchar(255) DEFAULT NULL,
  `set_reminder` tinyint(4) DEFAULT NULL,
  `remind_via` varchar(255) DEFAULT NULL,
  `remind_value` decimal(10,0) DEFAULT NULL,
  `remind_unit` varchar(255) DEFAULT NULL,
  `is_recurring` tinyint(4) DEFAULT NULL,
  `recurring_span` varchar(255) DEFAULT NULL,
  `is_reminded` tinyint(4) DEFAULT NULL,
  `notify_to` varchar(255) DEFAULT NULL,
  `is_reminder_only` tinyint(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reminder_time_compare_with` varchar(255) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `reopened_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `snooze_duration` int(11) DEFAULT NULL,
  `reminder_time` datetime DEFAULT NULL,
  `last_comment_time` datetime DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `creator_unseen_comment_count` int(11) DEFAULT NULL,
  `assignee_unseen_comment_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_to_id` (`assign_to_id`),
  KEY `created_by_id` (`created_by_id`),
  KEY `starting_date` (`starting_date`),
  KEY `deadline` (`deadline`),
  KEY `status` (`status`),
  KEY `related_id` (`related_id`),
  FULLTEXT KEY `task_title_full_text` (`task_name`,`description`,`status`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_attachment`
--

DROP TABLE IF EXISTS `task_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_attachment`
--

LOCK TABLES `task_attachment` WRITE;
/*!40000 ALTER TABLE `task_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxation`
--

DROP TABLE IF EXISTS `taxation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `percentage` decimal(14,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `sub_tax` text,
  `show_in_qsp` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_id` (`created_by_id`) USING BTREE,
  FULLTEXT KEY `search_string` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxation`
--

LOCK TABLES `taxation` WRITE;
/*!40000 ALTER TABLE `taxation` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxation_association`
--

DROP TABLE IF EXISTS `taxation_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxation_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `taxation_rule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxation_association`
--

LOCK TABLES `taxation_association` WRITE;
/*!40000 ALTER TABLE `taxation_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxation_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxation_rule`
--

DROP TABLE IF EXISTS `taxation_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxation_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxation_rule`
--

LOCK TABLES `taxation_rule` WRITE;
/*!40000 ALTER TABLE `taxation_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxation_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxation_rule_row`
--

DROP TABLE IF EXISTS `taxation_rule_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxation_rule_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxation_id` int(11) NOT NULL,
  `taxation_rule_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxation_rule_row`
--

LOCK TABLES `taxation_rule_row` WRITE;
/*!40000 ALTER TABLE `taxation_rule_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxation_rule_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_project_association`
--

DROP TABLE IF EXISTS `team_project_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_project_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_project_association`
--

LOCK TABLES `team_project_association` WRITE;
/*!40000 ALTER TABLE `team_project_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_project_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_attachment`
--

DROP TABLE IF EXISTS `ticket_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachment`
--

LOCK TABLES `ticket_attachment` WRITE;
/*!40000 ALTER TABLE `ticket_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tnc`
--

DROP TABLE IF EXISTS `tnc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tnc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET latin1 COLLATE latin1_general_cs,
  `name` varchar(255) DEFAULT NULL,
  `document_id` int(11) NOT NULL,
  `is_default_for_quotation` tinyint(4) DEFAULT NULL,
  `is_default_for_sale_order` tinyint(4) DEFAULT NULL,
  `is_default_for_sale_invoice` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tnc`
--

LOCK TABLES `tnc` WRITE;
/*!40000 ALTER TABLE `tnc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tnc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_conversion`
--

DROP TABLE IF EXISTS `unit_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_conversion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `one_of_id` int(11) NOT NULL,
  `multiply_with` decimal(10,0) DEFAULT NULL,
  `to_become_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_conversion`
--

LOCK TABLES `unit_conversion` WRITE;
/*!40000 ALTER TABLE `unit_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_group`
--

DROP TABLE IF EXISTS `unit_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_group`
--

LOCK TABLES `unit_group` WRITE;
/*!40000 ALTER TABLE `unit_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsubscribe`
--

DROP TABLE IF EXISTS `unsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unsubscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` text,
  `created_at` datetime DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsubscribe`
--

LOCK TABLES `unsubscribe` WRITE;
/*!40000 ALTER TABLE `unsubscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsubscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `epan_id` int(11) DEFAULT NULL,
  `scope` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_epan1_idx` (`epan_id`),
  KEY `created_by_id` (`created_by_id`) USING BTREE,
  FULLTEXT KEY `search_string` (`username`,`type`,`scope`),
  CONSTRAINT `fk_user_epan1` FOREIGN KEY (`epan_id`) REFERENCES `epan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (77,'management@xavoc.com','21232f297a57a5a743894a0e4a801fc3','Active',NULL,'SuperUser','User',NULL,'2017-07-31 04:40:38',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpage`
--

DROP TABLE IF EXISTS `webpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `is_template` tinyint(4) DEFAULT NULL,
  `is_muted` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `parent_page_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpage`
--

LOCK TABLES `webpage` WRITE;
/*!40000 ALTER TABLE `webpage` DISABLE KEYS */;
INSERT INTO `webpage` VALUES (1,'Default','default.html',NULL,1,NULL,1,NULL,143988),(2,'Home','index.html',1,0,0,1,NULL,143988),(3,'Pages','page.html',1,0,0,1,NULL,143988),(4,'About','about.html',1,0,0,1,NULL,143988),(5,'Services','services.html',1,0,0,1,NULL,143988),(6,'Contacts','contact.html',1,0,0,1,NULL,143988),(7,'home 1','home1.html',1,0,0,1,2,143988);
/*!40000 ALTER TABLE `webpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpage_snapshot`
--

DROP TABLE IF EXISTS `webpage_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webpage_snapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `content` longtext,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpage_snapshot`
--

LOCK TABLES `webpage_snapshot` WRITE;
/*!40000 ALTER TABLE `webpage_snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpage_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xepan_cms_image_gallery_categories`
--

DROP TABLE IF EXISTS `xepan_cms_image_gallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xepan_cms_image_gallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xepan_cms_image_gallery_categories`
--

LOCK TABLES `xepan_cms_image_gallery_categories` WRITE;
/*!40000 ALTER TABLE `xepan_cms_image_gallery_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `xepan_cms_image_gallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xepan_cms_image_gallery_images`
--

DROP TABLE IF EXISTS `xepan_cms_image_gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xepan_cms_image_gallery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `gallery_cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xepan_cms_image_gallery_images`
--

LOCK TABLES `xepan_cms_image_gallery_images` WRITE;
/*!40000 ALTER TABLE `xepan_cms_image_gallery_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `xepan_cms_image_gallery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xepan_template`
--

DROP TABLE IF EXISTS `xepan_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xepan_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` text,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xepan_template`
--

LOCK TABLES `xepan_template` WRITE;
/*!40000 ALTER TABLE `xepan_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `xepan_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmarketingcampaign_googlebloggerconfig`
--

DROP TABLE IF EXISTS `xmarketingcampaign_googlebloggerconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xmarketingcampaign_googlebloggerconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epan_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `appId` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `userid_returned` varchar(255) DEFAULT NULL,
  `blogid` varchar(255) DEFAULT NULL,
  `access_token` text,
  `access_token_secret` text,
  `refresh_token` text,
  `is_access_token_valid` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_epan_id` (`epan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmarketingcampaign_googlebloggerconfig`
--

LOCK TABLES `xmarketingcampaign_googlebloggerconfig` WRITE;
/*!40000 ALTER TABLE `xmarketingcampaign_googlebloggerconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmarketingcampaign_googlebloggerconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xshop_item_images`
--

DROP TABLE IF EXISTS `xshop_item_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xshop_item_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `item_image_id` int(10) unsigned DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `customefieldvalue_id` int(11) DEFAULT NULL,
  `epan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_id` (`item_id`),
  KEY `fk_customefieldvalue_id` (`customefieldvalue_id`),
  KEY `fk_epan_id` (`epan_id`),
  KEY `fk_item_image_id` (`item_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xshop_item_images`
--

LOCK TABLES `xshop_item_images` WRITE;
/*!40000 ALTER TABLE `xshop_item_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `xshop_item_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xshop_item_quantity_set_conditions`
--

DROP TABLE IF EXISTS `xshop_item_quantity_set_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xshop_item_quantity_set_conditions` (
  `id` int(11) NOT NULL,
  `quantityset_id` int(11) DEFAULT NULL,
  `custom_field_value_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `customfield_id` int(11) DEFAULT NULL,
  `department_phase_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quantityset_id` (`quantityset_id`),
  KEY `fk_custom_field_value_id` (`custom_field_value_id`),
  KEY `fk_item_id` (`item_id`),
  KEY `fk_customfield_id` (`customfield_id`),
  KEY `fk_department_phase_id` (`department_phase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xshop_item_quantity_set_conditions`
--

LOCK TABLES `xshop_item_quantity_set_conditions` WRITE;
/*!40000 ALTER TABLE `xshop_item_quantity_set_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xshop_item_quantity_set_conditions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-02 10:38:28
