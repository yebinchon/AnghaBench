
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int str ;


 int LOG_ERR ;
 int abort () ;
 int syslog (int ,char*,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
heim_abortv(const char *fmt, va_list ap)
{
    static char str[1024];

    vsnprintf(str, sizeof(str), fmt, ap);
    syslog(LOG_ERR, "heim_abort: %s", str);
    abort();
}
