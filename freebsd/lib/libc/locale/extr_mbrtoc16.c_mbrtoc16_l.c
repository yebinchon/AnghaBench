
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int mbstate_t ;
typedef int locale_t ;
typedef int char32_t ;
typedef int char16_t ;
struct TYPE_3__ {int trail_surrogate; int c32_mbstate; } ;
typedef TYPE_1__ _Char16State ;
struct TYPE_4__ {int mbrtoc16; } ;


 int FIX_LOCALE (int ) ;
 TYPE_2__* XLOCALE_CTYPE (int ) ;
 size_t mbrtoc32_l (int*,char const*,size_t,int *,int ) ;

size_t
mbrtoc16_l(char16_t * __restrict pc16, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps, locale_t locale)
{
 _Char16State *cs;
 char32_t c32;
 ssize_t len;

 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->mbrtoc16);
 cs = (_Char16State *)ps;






 if (pc16 == ((void*)0) || s == ((void*)0)) {
  cs->trail_surrogate = 0;
  return (mbrtoc32_l(((void*)0), s, n, &cs->c32_mbstate, locale));
 }


 if (cs->trail_surrogate >= 0xdc00 && cs->trail_surrogate <= 0xdfff) {
  *pc16 = cs->trail_surrogate;
  cs->trail_surrogate = 0;
  return ((size_t)-3);
 }

 len = mbrtoc32_l(&c32, s, n, &cs->c32_mbstate, locale);
 if (len >= 0) {
  if (c32 < 0x10000) {

   *pc16 = c32;
  } else {

   c32 -= 0x10000;
   *pc16 = 0xd800 | (c32 >> 10);
   cs->trail_surrogate = 0xdc00 | (c32 & 0x3ff);
  }
 }
 return (len);
}
