
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int __get_locale () ;
 int strtoumax_l (char const*,char**,int,int ) ;

uintmax_t
strtoumax(const char * __restrict nptr, char ** __restrict endptr, int base)
{
 return strtoumax_l(nptr, endptr, base, __get_locale());
}
