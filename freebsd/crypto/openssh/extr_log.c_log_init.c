
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syslog_data {int dummy; } ;
typedef int SyslogFacility ;
typedef scalar_t__ LogLevel ;


 int LOG_AUTH ;
 int LOG_AUTHPRIV ;
 int LOG_DAEMON ;
 int LOG_LOCAL0 ;
 int LOG_LOCAL1 ;
 int LOG_LOCAL2 ;
 int LOG_LOCAL3 ;
 int LOG_LOCAL4 ;
 int LOG_LOCAL5 ;
 int LOG_LOCAL6 ;
 int LOG_LOCAL7 ;
 int LOG_PID ;
 int LOG_USER ;
 struct syslog_data SYSLOG_DATA_INIT ;
 char* __progname ;
 char* argv0 ;
 int closelog () ;
 int closelog_r (struct syslog_data*) ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ log_change_level (scalar_t__) ;
 int log_facility ;
 int * log_handler ;
 int * log_handler_ctx ;
 int log_on_stderr ;
 int openlog (char*,int ,int ) ;
 int openlog_r (char*,int ,int ,struct syslog_data*) ;
 int stderr ;

void
log_init(char *av0, LogLevel level, SyslogFacility facility, int on_stderr)
{




 argv0 = av0;

 if (log_change_level(level) != 0) {
  fprintf(stderr, "Unrecognized internal syslog level code %d\n",
      (int) level);
  exit(1);
 }

 log_handler = ((void*)0);
 log_handler_ctx = ((void*)0);

 log_on_stderr = on_stderr;
 if (on_stderr)
  return;

 switch (facility) {
 case 137:
  log_facility = LOG_DAEMON;
  break;
 case 128:
  log_facility = LOG_USER;
  break;
 case 139:
  log_facility = LOG_AUTH;
  break;





 case 136:
  log_facility = LOG_LOCAL0;
  break;
 case 135:
  log_facility = LOG_LOCAL1;
  break;
 case 134:
  log_facility = LOG_LOCAL2;
  break;
 case 133:
  log_facility = LOG_LOCAL3;
  break;
 case 132:
  log_facility = LOG_LOCAL4;
  break;
 case 131:
  log_facility = LOG_LOCAL5;
  break;
 case 130:
  log_facility = LOG_LOCAL6;
  break;
 case 129:
  log_facility = LOG_LOCAL7;
  break;
 default:
  fprintf(stderr,
      "Unrecognized internal syslog facility code %d\n",
      (int) facility);
  exit(1);
 }
 openlog(argv0 ? argv0 : __progname, LOG_PID, log_facility);
 closelog();

}
