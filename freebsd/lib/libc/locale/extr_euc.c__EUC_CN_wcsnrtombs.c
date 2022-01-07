
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int _EUC_CN_wcrtomb ;
 size_t __wcsnrtombs_std (char*,int const**,size_t,size_t,int *,int ) ;

__attribute__((used)) static size_t
_EUC_CN_wcsnrtombs(char * __restrict dst, const wchar_t ** __restrict src,
 size_t nwc, size_t len, mbstate_t * __restrict ps)
{
 return (__wcsnrtombs_std(dst, src, nwc, len, ps, _EUC_CN_wcrtomb));
}
