
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int __get_locale () ;
 size_t wcsnrtombs_l (char*,int const**,size_t,size_t,int *,int ) ;

size_t
wcsnrtombs(char * __restrict dst, const wchar_t ** __restrict src, size_t nwc,
    size_t len, mbstate_t * __restrict ps)
{
 return wcsnrtombs_l(dst, src, nwc, len, ps, __get_locale());
}
