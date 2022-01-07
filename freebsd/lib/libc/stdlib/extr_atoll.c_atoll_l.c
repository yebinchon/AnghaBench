
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 long long strtoll_l (char const*,char**,int,int ) ;

long long
atoll_l(const char *str, locale_t locale)
{
 return strtoll_l(str, (char **)((void*)0), 10, locale);
}
