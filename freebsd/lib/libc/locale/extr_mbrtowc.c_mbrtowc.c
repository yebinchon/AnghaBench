
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int __get_locale () ;
 size_t mbrtowc_l (int *,char const*,size_t,int *,int ) ;

size_t
mbrtowc(wchar_t * __restrict pwc, const char * __restrict s,
    size_t n, mbstate_t * __restrict ps)
{
 return mbrtowc_l(pwc, s, n, ps, __get_locale());
}
