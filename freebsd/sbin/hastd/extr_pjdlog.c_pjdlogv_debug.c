
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_DEBUG ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 scalar_t__ pjdlog_initialized ;
 int pjdlogv_common (int ,int,int,char const*,int ) ;

void
pjdlogv_debug(int debuglevel, const char *fmt, va_list ap)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 pjdlogv_common(LOG_DEBUG, debuglevel, -1, fmt, ap);
}
