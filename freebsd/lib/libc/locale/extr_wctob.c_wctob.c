
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int __get_locale () ;
 int wctob_l (int ,int ) ;

int
wctob(wint_t c)
{
 return wctob_l(c, __get_locale());
}
