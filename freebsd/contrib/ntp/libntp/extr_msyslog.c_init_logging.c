
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32 ;


 char DIR_SEP ;
 scalar_t__ INIT_NTP_SYSLOGMASK ;
 int LOG_DEBUG ;
 int LOG_NDELAY ;
 int LOG_NTP ;
 int LOG_PID ;
 int LOG_UPTO (int ) ;
 int TRUE ;
 scalar_t__ debug ;
 char* estrdup (char const*) ;
 scalar_t__ ntp_syslogmask ;
 int openlog (char const*,int,...) ;
 char const* progname ;
 int setlogmask (int ) ;
 int strcasecmp (char*,char*) ;
 char* strrchr (char const*,char) ;

void
init_logging(
 const char * name,
 u_int32 def_syslogmask,
 int is_daemon
 )
{
 static int was_daemon;
 char * cp;
 const char * pname;
 if (INIT_NTP_SYSLOGMASK == ntp_syslogmask &&
     0 != def_syslogmask)
  ntp_syslogmask = def_syslogmask;





 cp = strrchr(name, DIR_SEP);
 if (((void*)0) == cp)
  pname = name;
 else
  pname = 1 + cp;
 progname = estrdup(pname);
 if (is_daemon)
  was_daemon = TRUE;

 openlog(progname, LOG_PID);
}
