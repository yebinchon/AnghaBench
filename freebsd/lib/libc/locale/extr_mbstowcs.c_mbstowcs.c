
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 size_t mbstowcs_l (int *,char const*,size_t,int ) ;

size_t
mbstowcs(wchar_t * __restrict pwcs, const char * __restrict s, size_t n)
{
 return mbstowcs_l(pwcs, s, n, __get_locale());
}
