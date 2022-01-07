
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 scalar_t__ strtol_l (char const*,int *,int,int ) ;

int
atoi_l(const char *str, locale_t locale)
{
 return (int)strtol_l(str, ((void*)0), 10, locale);
}
