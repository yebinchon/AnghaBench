
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_ERR ;
 int LOG_INFO ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int _pjdlogv_common (char const*,char const*,int,int ,int ,int,char const*,int ) ;
 int assert (int) ;
 int exit (int) ;
 scalar_t__ pjdlog_initialized ;

void
_pjdlogv_exit(const char *func, const char *file, int line, int exitcode,
    int error, const char *fmt, va_list ap)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 _pjdlogv_common(func, file, line, exitcode == 0 ? LOG_INFO : LOG_ERR, 0,
     error, fmt, ap);
 exit(exitcode);

}
