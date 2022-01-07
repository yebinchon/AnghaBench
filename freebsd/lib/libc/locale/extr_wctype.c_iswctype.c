
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wctype_t ;


 int __istype (int ,int ) ;

int
iswctype(wint_t wc, wctype_t charclass)
{
 return (__istype(wc, charclass));
}
