
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grouping_state {int* grouping; int nseps; int nrepeats; int lead; int thousands_sep; } ;
typedef int locale_t ;
struct TYPE_2__ {int* grouping; } ;


 int CHAR_MAX ;
 int get_thousep (int ) ;
 TYPE_1__* localeconv_l (int ) ;

__attribute__((used)) static int
grouping_init(struct grouping_state *gs, int ndigits, locale_t locale)
{

 gs->grouping = localeconv_l(locale)->grouping;
 gs->thousands_sep = get_thousep(locale);

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
 return (gs->nseps + gs->nrepeats);
}
