
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int _EUC_KR_mbrtowc ;
 size_t __mbsnrtowcs_std (int *,char const**,size_t,size_t,int *,int ) ;

__attribute__((used)) static size_t
_EUC_KR_mbsnrtowcs(wchar_t * __restrict dst,
    const char ** __restrict src,
    size_t nms, size_t len, mbstate_t * __restrict ps)
{
 return (__mbsnrtowcs_std(dst, src, nms, len, ps, _EUC_KR_mbrtowc));
}
