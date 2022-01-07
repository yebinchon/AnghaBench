
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wctype_t ;


 int __get_locale () ;
 int nextwctype_l (int ,int ,int ) ;

wint_t
nextwctype(wint_t wc, wctype_t wct)
{
 return nextwctype_l(wc, wct, __get_locale());
}
