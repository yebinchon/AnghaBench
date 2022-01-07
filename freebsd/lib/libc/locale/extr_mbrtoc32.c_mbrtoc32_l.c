
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbstate_t ;
typedef int locale_t ;
typedef int char32_t ;
struct TYPE_2__ {int mbrtoc32; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t mbrtowc_l (int *,char const*,size_t,int *,int ) ;

size_t
mbrtoc32_l(char32_t * __restrict pc32, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps, locale_t locale)
{

 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->mbrtoc32);


 return (mbrtowc_l(pc32, s, n, ps, locale));
}
