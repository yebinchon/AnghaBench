
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_ERR ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 int exit (int) ;
 scalar_t__ pjdlog_initialized ;
 int pjdlogv (int ,char const*,int ) ;

void
pjdlogv_exitx(int exitcode, const char *fmt, va_list ap)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 pjdlogv(LOG_ERR, fmt, ap);
 exit(exitcode);

}
