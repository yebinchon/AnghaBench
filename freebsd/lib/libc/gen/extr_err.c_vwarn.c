
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int vwarnc (int ,char const*,int ) ;

void
vwarn(const char *fmt, va_list ap)
{
 vwarnc(errno, fmt, ap);
}
