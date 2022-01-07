
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 size_t wcsxfrm_l (int *,int const*,size_t,int ) ;

size_t
wcsxfrm(wchar_t * __restrict dest, const wchar_t * __restrict src, size_t len)
{
 return wcsxfrm_l(dest, src, len, __get_locale());
}
