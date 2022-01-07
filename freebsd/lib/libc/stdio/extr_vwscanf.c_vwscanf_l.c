
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;
typedef int locale_t ;


 int stdin ;
 int vfwscanf_l (int ,int ,int const*,int ) ;

int
vwscanf_l(locale_t locale, const wchar_t * __restrict fmt, va_list ap)
{
 return (vfwscanf_l(stdin, locale, fmt, ap));
}
