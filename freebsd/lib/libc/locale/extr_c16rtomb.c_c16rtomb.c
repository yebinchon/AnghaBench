
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int char16_t ;


 int __get_locale () ;
 size_t c16rtomb_l (char*,int ,int *,int ) ;

size_t
c16rtomb(char * __restrict s, char16_t c16, mbstate_t * __restrict ps)
{

 return (c16rtomb_l(s, c16, ps, __get_locale()));
}
