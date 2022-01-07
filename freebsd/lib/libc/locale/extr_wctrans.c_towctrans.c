
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wctrans_t ;


 int __get_locale () ;
 int towctrans_l (int ,int ,int ) ;

wint_t
towctrans(wint_t wc, wctrans_t desc)
{
 return towctrans_l(wc, desc, __get_locale());
}
