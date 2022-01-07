
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 char* strcasestr_l (char const*,char const*,int ) ;

char *
strcasestr(const char *s, const char *find)
{
 return strcasestr_l(s, find, __get_locale());
}
