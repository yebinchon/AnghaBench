
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int LOG_ERR ;
 int TEST_ASSERT_TRUE (int ) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int msyslog (int ,char*,char*) ;
 int open_logfile (char*) ;
 int printf (char*,char*) ;
 int remove (char*) ;
 int sntp_init_logging (char*) ;
 char* strstr (char*,char*) ;

void
testWriteInCustomLogfile(void)
{
 char testString[256] = "12345 ABC";
 char testName[256] = "TEST_PROGNAME3";

 (void)remove("testLogfile2.log");

 sntp_init_logging(testName);
 open_logfile("testLogfile2.log");



 msyslog(LOG_ERR, "%s", testString);
 FILE * f = fopen("testLogfile2.log","r");
 char line[256];

 TEST_ASSERT_TRUE( f != ((void*)0));


 while (fgets(line, sizeof(line), f)) {
  printf("%s", line);
 }


 char* x = strstr(line,testName);

 TEST_ASSERT_TRUE( x != ((void*)0));

 x = strstr(line,testString);
 TEST_ASSERT_TRUE( x != ((void*)0));

 fclose(f);



 return;
}
