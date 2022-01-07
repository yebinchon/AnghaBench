
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 long double strtold_l (char const*,char**,int ) ;

long double
strtold(const char * __restrict nptr, char ** __restrict endptr)
{

 return strtold_l(nptr, endptr, __get_locale());
}
