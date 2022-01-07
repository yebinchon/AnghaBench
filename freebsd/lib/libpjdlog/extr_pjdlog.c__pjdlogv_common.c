
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int log ;


 int LOG_ALERT ;
 int LOG_CRIT ;
 int LOG_DEBUG ;
 int LOG_EMERG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int PJDLOG_MAX_MSGSIZE ;
 scalar_t__ PJDLOG_MODE_SOCK ;
 scalar_t__ PJDLOG_MODE_STD ;
 scalar_t__ PJDLOG_MODE_SYSLOG ;
 int assert (int) ;
 int errno ;
 int pjdlog_debug_level ;
 scalar_t__ pjdlog_initialized ;
 scalar_t__ pjdlog_mode ;
 scalar_t__ pjdlog_sock ;
 int pjdlogv_common_single_line (char const*,char const*,int,int,int,int,char const*) ;
 char* strsep (char**,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
_pjdlogv_common(const char *func, const char *file, int line, int loglevel,
    int debuglevel, int error, const char *fmt, va_list ap)
{
 char log[PJDLOG_MAX_MSGSIZE];
 char *logp, *curline;
 const char *prvline;
 int saved_errno;

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);
 assert(pjdlog_mode == PJDLOG_MODE_STD ||
     pjdlog_mode == PJDLOG_MODE_SYSLOG ||
     pjdlog_mode == PJDLOG_MODE_SOCK);
 assert(pjdlog_mode != PJDLOG_MODE_SOCK || pjdlog_sock >= 0);
 assert(loglevel == LOG_EMERG || loglevel == LOG_ALERT ||
     loglevel == LOG_CRIT || loglevel == LOG_ERR ||
     loglevel == LOG_WARNING || loglevel == LOG_NOTICE ||
     loglevel == LOG_INFO || loglevel == LOG_DEBUG);
 assert(loglevel != LOG_DEBUG || debuglevel > 0);
 assert(debuglevel <= 127);
 assert(error >= -1);


 if (loglevel == LOG_DEBUG && debuglevel > pjdlog_debug_level)
  return;

 saved_errno = errno;

 vsnprintf(log, sizeof(log), fmt, ap);
 logp = log;
 prvline = ((void*)0);

 while ((curline = strsep(&logp, "\n")) != ((void*)0)) {
  if (*curline == '\0')
   continue;
  if (prvline != ((void*)0)) {
   pjdlogv_common_single_line(func, file, line, loglevel,
       debuglevel, -1, prvline);
  }
  prvline = curline;
 }
 if (prvline == ((void*)0))
  prvline = "";
 pjdlogv_common_single_line(func, file, line, loglevel, debuglevel,
     error, prvline);

 errno = saved_errno;
}
