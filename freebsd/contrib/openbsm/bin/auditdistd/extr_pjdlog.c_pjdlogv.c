
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_ALERT ;
 int LOG_CRIT ;
 int LOG_EMERG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 scalar_t__ pjdlog_initialized ;
 int pjdlogv_common (int,int ,int,char const*,int ) ;

void
pjdlogv(int loglevel, const char *fmt, va_list ap)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);


 assert(loglevel == LOG_EMERG || loglevel == LOG_ALERT ||
     loglevel == LOG_CRIT || loglevel == LOG_ERR ||
     loglevel == LOG_WARNING || loglevel == LOG_NOTICE ||
     loglevel == LOG_INFO);

 pjdlogv_common(loglevel, 0, -1, fmt, ap);
}
