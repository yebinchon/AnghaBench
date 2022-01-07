
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 int strcasecmp_l (char const*,char const*,int ) ;

int
strcasecmp(const char *s1, const char *s2)
{
 return strcasecmp_l(s1, s2, __get_locale());
}
