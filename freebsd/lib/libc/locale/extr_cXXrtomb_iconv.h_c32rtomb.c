
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int charXX_t ;


 int __get_locale () ;
 size_t cXXrtomb_l (char*,int ,int *,int ) ;

size_t
cXXrtomb(char * __restrict s, charXX_t c, mbstate_t * __restrict ps)
{

 return (cXXrtomb_l(s, c, ps, __get_locale()));
}
