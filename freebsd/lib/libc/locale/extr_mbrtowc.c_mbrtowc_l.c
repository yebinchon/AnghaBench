
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __mbrtowc ) (int *,char const*,size_t,int *) ;int mbrtowc; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (int *,char const*,size_t,int *) ;

size_t
mbrtowc_l(wchar_t * __restrict pwc, const char * __restrict s,
    size_t n, mbstate_t * __restrict ps, locale_t locale)
{
 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->mbrtowc);
 return (XLOCALE_CTYPE(locale)->__mbrtowc(pwc, s, n, ps));
}
