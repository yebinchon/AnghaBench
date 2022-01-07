
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __wcsnrtombs ) (char*,int const**,int ,size_t,int *) ;int wcsrtombs; } ;


 int FIX_LOCALE (int ) ;
 int SIZE_T_MAX ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (char*,int const**,int ,size_t,int *) ;

size_t
wcsrtombs_l(char * __restrict dst, const wchar_t ** __restrict src, size_t len,
    mbstate_t * __restrict ps, locale_t locale)
{
 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->wcsrtombs);
 return (XLOCALE_CTYPE(locale)->__wcsnrtombs(dst, src, SIZE_T_MAX, len, ps));
}
