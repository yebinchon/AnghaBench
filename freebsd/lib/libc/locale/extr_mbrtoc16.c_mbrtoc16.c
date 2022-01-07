
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int char16_t ;


 int __get_locale () ;
 size_t mbrtoc16_l (int *,char const*,size_t,int *,int ) ;

size_t
mbrtoc16(char16_t * __restrict pc16, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{

 return (mbrtoc16_l(pc16, s, n, ps, __get_locale()));
}
