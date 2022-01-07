
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 long strtol_l (char const*,char**,int,int ) ;

long
strtol(const char * __restrict nptr, char ** __restrict endptr, int base)
{
 return strtol_l(nptr, endptr, base, __get_locale());
}
