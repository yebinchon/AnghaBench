
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int __get_locale () ;
 size_t mbsnrtowcs_l (int *,char const**,size_t,size_t,int *,int ) ;

size_t
mbsnrtowcs(wchar_t * __restrict dst, const char ** __restrict src,
    size_t nms, size_t len, mbstate_t * __restrict ps)
{
 return mbsnrtowcs_l(dst, src, nms, len, ps, __get_locale());
}
