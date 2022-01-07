
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 size_t wcstombs_l (char*,int const*,size_t,int ) ;

size_t
wcstombs(char * __restrict s, const wchar_t * __restrict pwcs, size_t n)
{
 return wcstombs_l(s, pwcs, n, __get_locale());
}
