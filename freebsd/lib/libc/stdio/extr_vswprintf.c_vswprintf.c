
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int __va_list ;


 int __get_locale () ;
 int vswprintf_l (int *,size_t,int ,int const*,int ) ;

int
vswprintf(wchar_t * __restrict s, size_t n, const wchar_t * __restrict fmt,
    __va_list ap)
{
 return vswprintf_l(s, n, __get_locale(), fmt, ap);
}
