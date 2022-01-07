
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 unsigned long long wcstoull_l (int const*,int **,int,int ) ;

unsigned long long
wcstoull(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr,
    int base)
{
 return wcstoull_l(nptr, endptr, base, __get_locale());
}
