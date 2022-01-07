
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int __get_locale () ;
 int btowc_l (int,int ) ;

wint_t
btowc(int c)
{
 return btowc_l(c, __get_locale());
}
