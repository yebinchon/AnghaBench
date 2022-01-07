
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __ct_rune_t ;


 int ___toupper_l (int ,int ) ;
 int __get_locale () ;

__ct_rune_t
___toupper(__ct_rune_t c)
{
 return ___toupper_l(c, __get_locale());
}
