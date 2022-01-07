
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wctype_t ;
typedef int locale_t ;


 int __istype_l (int ,int ,int ) ;

int
iswctype_l(wint_t wc, wctype_t charclass, locale_t locale)
{
 return __istype_l(wc, charclass, locale);
}
