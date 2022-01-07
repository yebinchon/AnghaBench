
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;


 int __get_locale () ;
 int vswscanf_l (int const*,int ,int const*,int ) ;

int
vswscanf(const wchar_t * __restrict str, const wchar_t * __restrict fmt,
    va_list ap)
{
 return vswscanf_l(str, __get_locale(), fmt, ap);
}
