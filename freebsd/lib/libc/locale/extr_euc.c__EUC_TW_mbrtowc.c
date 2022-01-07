
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int SS2 ;
 size_t _EUC_mbrtowc_impl (int *,char const*,size_t,int *,int ,int,int ,int ) ;

__attribute__((used)) static size_t
_EUC_TW_mbrtowc(wchar_t * __restrict pwc, const char * __restrict s,
 size_t n, mbstate_t * __restrict ps)
{
 return (_EUC_mbrtowc_impl(pwc, s, n, ps, SS2, 4, 0, 0));
}
