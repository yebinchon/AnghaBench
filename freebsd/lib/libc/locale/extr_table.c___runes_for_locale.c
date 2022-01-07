
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_sb_limit; int * runes; } ;
typedef int locale_t ;
typedef int _RuneLocale ;


 int FIX_LOCALE (int ) ;
 struct xlocale_ctype* XLOCALE_CTYPE (int ) ;

_RuneLocale *
__runes_for_locale(locale_t locale, int *mb_sb_limit)
{
 FIX_LOCALE(locale);
 struct xlocale_ctype *c = XLOCALE_CTYPE(locale);
 *mb_sb_limit = c->__mb_sb_limit;
 return c->runes;
}
