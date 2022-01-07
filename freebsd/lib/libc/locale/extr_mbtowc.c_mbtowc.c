
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 int mbtowc_l (int *,char const*,size_t,int ) ;

int
mbtowc(wchar_t * __restrict pwc, const char * __restrict s, size_t n)
{
 return mbtowc_l(pwc, s, n, __get_locale());
}
