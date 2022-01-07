
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int dopr (char*,size_t,char const*,int ) ;

int
vsnprintf (char *str, size_t count, const char *fmt, va_list args)
{
 return dopr(str, count, fmt, args);
}
