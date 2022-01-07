
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {int* grouping; int thousands_sep; } ;
struct grouping_state {int* grouping; int thousep_len; int nseps; int nrepeats; int lead; int thousands_sep; } ;
typedef int locale_t ;


 int CHAR_MAX ;
 struct lconv* localeconv_l (int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
grouping_init(struct grouping_state *gs, int ndigits, locale_t loc)
{
 struct lconv *locale;

 locale = localeconv_l(loc);
 gs->grouping = locale->grouping;
 gs->thousands_sep = locale->thousands_sep;
 gs->thousep_len = strlen(gs->thousands_sep);

 gs->nseps = gs->nrepeats = 0;
 gs->lead = ndigits;
 while (*gs->grouping != CHAR_MAX) {
  if (gs->lead <= *gs->grouping)
   break;
  gs->lead -= *gs->grouping;
  if (*(gs->grouping+1)) {
   gs->nseps++;
   gs->grouping++;
  } else
   gs->nrepeats++;
 }
 return ((gs->nseps + gs->nrepeats) * gs->thousep_len);
}
