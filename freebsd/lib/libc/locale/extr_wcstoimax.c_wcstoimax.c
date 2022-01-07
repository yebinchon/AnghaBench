
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int intmax_t ;


 int __get_locale () ;
 int wcstoimax_l (int const*,int **,int,int ) ;

intmax_t
wcstoimax(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr,
    int base)
{
 return wcstoimax_l(nptr, endptr, base, __get_locale());
}
