
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 double strtod_l (char const*,char**,int ) ;

double
atof_l(const char *ascii, locale_t locale)
{
 return strtod_l(ascii, (char **)((void*)0), locale);
}
