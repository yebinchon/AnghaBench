
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int msyslog (int ,char*) ;
 int sntp_init_logging (char*) ;

void
testChangePrognameInMysyslog(void)
{
 sntp_init_logging("TEST_PROGNAME");
 msyslog(LOG_ERR, "TESTING sntp_init_logging()");

 return;
}
