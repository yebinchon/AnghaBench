
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int char32_t ;


 int __get_locale () ;
 size_t mbrtoc32_l (int *,char const*,size_t,int *,int ) ;

size_t
mbrtoc32(char32_t * __restrict pc32, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{

 return (mbrtoc32_l(pc32, s, n, ps, __get_locale()));
}
