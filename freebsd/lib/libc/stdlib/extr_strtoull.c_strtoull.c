
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 unsigned long long strtoull_l (char const*,char**,int,int ) ;

unsigned long long
strtoull(const char * __restrict nptr, char ** __restrict endptr, int base)
{
 return strtoull_l(nptr, endptr, base, __get_locale());
}
