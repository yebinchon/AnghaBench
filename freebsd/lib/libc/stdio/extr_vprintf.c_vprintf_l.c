
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;
typedef int __va_list ;


 int stdout ;
 int vfprintf_l (int ,int ,char const*,int ) ;

int
vprintf_l(locale_t locale, const char * __restrict fmt, __va_list ap)
{
 return (vfprintf_l(stdout, locale, fmt, ap));
}
