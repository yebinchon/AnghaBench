
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int __get_locale () ;
 int strtoimax_l (char const*,char**,int,int ) ;

intmax_t
strtoimax(const char * __restrict nptr, char ** __restrict endptr, int base)
{
 return strtoimax_l(nptr, endptr, base, __get_locale());
}
