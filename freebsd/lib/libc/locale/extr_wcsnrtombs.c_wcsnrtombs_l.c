
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __wcsnrtombs ) (char*,int const**,size_t,size_t,int *) ;int wcsnrtombs; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (char*,int const**,size_t,size_t,int *) ;

size_t
wcsnrtombs_l(char * __restrict dst, const wchar_t ** __restrict src, size_t nwc,
    size_t len, mbstate_t * __restrict ps, locale_t locale)
{
 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->wcsnrtombs);
 return (XLOCALE_CTYPE(locale)->__wcsnrtombs(dst, src, nwc, len, ps));
}
