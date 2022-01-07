
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbstate_t ;
typedef int locale_t ;
typedef int char32_t ;
typedef int char16_t ;
struct TYPE_3__ {int lead_surrogate; int c32_mbstate; } ;
typedef TYPE_1__ _Char16State ;
struct TYPE_4__ {int c16rtomb; } ;


 int EILSEQ ;
 int FIX_LOCALE (int ) ;
 TYPE_2__* XLOCALE_CTYPE (int ) ;
 size_t c32rtomb_l (char*,int,int *,int ) ;
 int errno ;

size_t
c16rtomb_l(char * __restrict s, char16_t c16, mbstate_t * __restrict ps,
    locale_t locale)
{
 _Char16State *cs;
 char32_t c32;

 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->c16rtomb);
 cs = (_Char16State *)ps;


 if (s == ((void*)0)) {
  c32 = 0;
 } else if (cs->lead_surrogate >= 0xd800 &&
     cs->lead_surrogate <= 0xdbff) {

  if (c16 < 0xdc00 || c16 > 0xdfff) {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  c32 = 0x10000 + ((cs->lead_surrogate & 0x3ff) << 10 |
      (c16 & 0x3ff));
 } else if (c16 >= 0xd800 && c16 <= 0xdbff) {

  cs->lead_surrogate = c16;
  return (0);
 } else {

  c32 = c16;
 }
 cs->lead_surrogate = 0;

 return (c32rtomb_l(s, c32, &cs->c32_mbstate, locale));
}
