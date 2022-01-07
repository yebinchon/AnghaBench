
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 int wcswidth_l (int const*,size_t,int ) ;

int
wcswidth(const wchar_t *pwcs, size_t n)
{
 return wcswidth_l(pwcs, n, __get_locale());
}
