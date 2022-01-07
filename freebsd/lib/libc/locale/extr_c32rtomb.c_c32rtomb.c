
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int char32_t ;


 int __get_locale () ;
 size_t c32rtomb_l (char*,int ,int *,int ) ;

size_t
c32rtomb(char * __restrict s, char32_t c32, mbstate_t * __restrict ps)
{

 return (c32rtomb_l(s, c32, ps, __get_locale()));
}
