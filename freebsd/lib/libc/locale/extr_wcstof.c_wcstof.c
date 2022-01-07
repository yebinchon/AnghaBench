
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 float wcstof_l (int const*,int **,int ) ;

float
wcstof(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr)
{
 return wcstof_l(nptr, endptr, __get_locale());
}
