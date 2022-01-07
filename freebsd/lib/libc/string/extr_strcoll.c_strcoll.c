
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 int strcoll_l (char const*,char const*,int ) ;

int
strcoll(const char *s, const char *s2)
{
 return strcoll_l(s, s2, __get_locale());
}
