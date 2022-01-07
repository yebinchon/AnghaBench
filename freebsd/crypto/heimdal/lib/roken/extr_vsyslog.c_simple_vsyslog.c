
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int syslog (int,char*,char const*) ;

__attribute__((used)) static void
simple_vsyslog(int pri, const char *fmt, va_list ap)
{
    syslog (pri, "%s", fmt);
}
