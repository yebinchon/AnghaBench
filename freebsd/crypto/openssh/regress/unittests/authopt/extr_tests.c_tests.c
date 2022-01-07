
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogLevel ;


 int SYSLOG_FACILITY_USER ;
 int SYSLOG_LEVEL_DEBUG3 ;
 int SYSLOG_LEVEL_QUIET ;
 int log_init (char*,int ,int ,int) ;
 int test_authkeys_parse () ;
 int test_cert_parse () ;
 scalar_t__ test_is_verbose () ;
 int test_merge () ;

void
tests(void)
{
 extern char *__progname;
 LogLevel ll = test_is_verbose() ?
     SYSLOG_LEVEL_DEBUG3 : SYSLOG_LEVEL_QUIET;


 log_init(__progname, ll, SYSLOG_FACILITY_USER, 1);

 test_authkeys_parse();
 test_cert_parse();
 test_merge();
}
