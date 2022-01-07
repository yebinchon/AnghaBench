
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __ct_rune_t ;


 unsigned long ___runetype_l (int ,int ) ;
 int __get_locale () ;

unsigned long
___runetype(__ct_rune_t c)
{
 return ___runetype_l(c, __get_locale());
}
