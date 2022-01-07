
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_FACMASK ;
 int LOG_NDELAY ;
 int LogFacility ;
 int LogStat ;
 char const* LogTag ;
 int connectlog () ;
 int opened ;

__attribute__((used)) static void
openlog_unlocked(const char *ident, int logstat, int logfac)
{
 if (ident != ((void*)0))
  LogTag = ident;
 LogStat = logstat;
 if (logfac != 0 && (logfac &~ LOG_FACMASK) == 0)
  LogFacility = logfac;

 if (LogStat & LOG_NDELAY)
  connectlog();

 opened = 1;
}
