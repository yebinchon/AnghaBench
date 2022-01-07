
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 int strncasecmp_l (char const*,char const*,size_t,int ) ;

int
strncasecmp(const char *s1, const char *s2, size_t n)
{
 return strncasecmp_l(s1, s2, n, __get_locale());
}
