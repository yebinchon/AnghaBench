
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;


 int __get_locale () ;
 int mbsinit_l (int const*,int ) ;

int
mbsinit(const mbstate_t *ps)
{
 return mbsinit_l(ps, __get_locale());
}
