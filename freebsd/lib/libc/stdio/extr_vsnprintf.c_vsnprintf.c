
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __va_list ;


 int __get_locale () ;
 int vsnprintf_l (char*,size_t,int ,char const*,int ) ;

int
vsnprintf(char * __restrict str, size_t n, const char * __restrict fmt,
    __va_list ap)
{
 return vsnprintf_l(str, n, __get_locale(), fmt, ap);
}
