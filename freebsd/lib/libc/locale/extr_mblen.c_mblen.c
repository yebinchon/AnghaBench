
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 int mblen_l (char const*,size_t,int ) ;

int
mblen(const char *s, size_t n)
{
 return mblen_l(s, n, __get_locale());
}
