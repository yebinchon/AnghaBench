
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 int FLT_ROUNDS ;
 int strtorx_l (char const*,char**,int ,long double*,int ) ;

long double
strtold_l(const char * __restrict s, char ** __restrict sp, locale_t locale)
{
 long double result;
 FIX_LOCALE(locale);

 strtorx_l(s, sp, FLT_ROUNDS, &result, locale);
 return result;
}
