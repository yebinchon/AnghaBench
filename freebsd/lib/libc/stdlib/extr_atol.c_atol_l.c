
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 long strtol_l (char const*,char**,int,int ) ;

long
atol_l(const char *str, locale_t locale)
{
 return strtol_l(str, (char **)((void*)0), 10, locale);
}
