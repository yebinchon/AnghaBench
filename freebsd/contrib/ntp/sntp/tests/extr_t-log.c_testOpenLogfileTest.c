
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int msyslog (int ,char*,char*) ;
 int open_logfile (char*) ;
 int sntp_init_logging (char*) ;

void
testOpenLogfileTest(void)
{
 sntp_init_logging("TEST_PROGNAME2");
 open_logfile("testLogfile.log");


 msyslog(LOG_ERR, "Cannot open log file %s","abcXX");


 return;
}
