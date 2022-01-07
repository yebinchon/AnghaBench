
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __va_list ;


 int __get_locale () ;
 int vasprintf_l (char**,int ,char const*,int ) ;

int
vasprintf(char **str, const char *fmt, __va_list ap)
{
 return vasprintf_l(str, __get_locale(), fmt, ap);
}
