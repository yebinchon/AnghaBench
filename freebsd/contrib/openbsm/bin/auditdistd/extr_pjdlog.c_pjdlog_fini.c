
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PJDLOG_INITIALIZED ;
 scalar_t__ PJDLOG_MODE_SYSLOG ;
 scalar_t__ PJDLOG_NOT_INITIALIZED ;
 int assert (int) ;
 int closelog () ;
 int errno ;
 scalar_t__ pjdlog_initialized ;
 scalar_t__ pjdlog_mode ;

void
pjdlog_fini(void)
{
 int saved_errno;

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 saved_errno = errno;

 if (pjdlog_mode == PJDLOG_MODE_SYSLOG)
  closelog();

 pjdlog_initialized = PJDLOG_NOT_INITIALIZED;

 errno = saved_errno;
}
