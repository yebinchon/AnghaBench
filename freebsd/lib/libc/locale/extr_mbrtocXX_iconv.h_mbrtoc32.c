
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int charXX_t ;


 int __get_locale () ;
 size_t mbrtocXX_l (int *,char const*,size_t,int *,int ) ;

size_t
mbrtocXX(charXX_t * __restrict pc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{

 return (mbrtocXX_l(pc, s, n, ps, __get_locale()));
}
