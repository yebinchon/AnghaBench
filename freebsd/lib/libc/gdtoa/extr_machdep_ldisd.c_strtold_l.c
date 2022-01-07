
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 long double strtod_l (char const*,char**,int ) ;

long double
strtold_l(const char * __restrict s, char ** __restrict sp, locale_t locale)
{

 return strtod_l(s, sp, locale);
}
