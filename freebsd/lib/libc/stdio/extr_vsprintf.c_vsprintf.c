
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __va_list ;


 int __get_locale () ;
 int vsprintf_l (char*,int ,char const*,int ) ;

int
vsprintf(char * __restrict str, const char * __restrict fmt, __va_list ap)
{
 return vsprintf_l(str, __get_locale(), fmt, ap);
}
