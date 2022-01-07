
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int LOG_PID ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int PJDLOG_MODE_SOCK ;
 int PJDLOG_MODE_STD ;
 int PJDLOG_MODE_SYSLOG ;
 int assert (int) ;
 int closelog () ;
 int errno ;
 int openlog (int *,int,int ) ;
 scalar_t__ pjdlog_initialized ;
 int pjdlog_mode ;
 int pjdlog_sock ;

void
pjdlog_mode_set(int mode)
{
 int saved_errno;

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);




 assert(mode == PJDLOG_MODE_STD || mode == PJDLOG_MODE_SYSLOG);


 if (pjdlog_mode == mode)
  return;

 saved_errno = errno;

 if (mode == PJDLOG_MODE_SYSLOG)
  openlog(((void*)0), LOG_PID | LOG_NDELAY, LOG_DAEMON);
 else if (mode == PJDLOG_MODE_STD)
  closelog();

 if (mode != PJDLOG_MODE_SOCK)
  pjdlog_sock = -1;

 pjdlog_mode = mode;

 errno = saved_errno;
}
