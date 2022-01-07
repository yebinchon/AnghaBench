
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {int dummy; } ;


 int __get_locale () ;
 struct lconv* localeconv_l (int ) ;

struct lconv *
localeconv(void)
{
 return localeconv_l(__get_locale());
}
