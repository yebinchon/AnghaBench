
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_state {int dummy; } ;
struct grouping_state {scalar_t__ nseps; scalar_t__ nrepeats; int * grouping; int thousep_len; int thousands_sep; int lead; } ;
typedef int locale_t ;
typedef int CHAR ;


 scalar_t__ io_print (struct io_state*,int ,int ,int ) ;
 scalar_t__ io_printandpad (struct io_state*,int const*,int const*,int ,int ,int ) ;
 int zeroes ;

__attribute__((used)) static int
grouping_print(struct grouping_state *gs, struct io_state *iop,
        const CHAR *cp, const CHAR *ep, locale_t locale)
{
 const CHAR *cp0 = cp;

 if (io_printandpad(iop, cp, ep, gs->lead, zeroes, locale))
  return (-1);
 cp += gs->lead;
 while (gs->nseps > 0 || gs->nrepeats > 0) {
  if (gs->nrepeats > 0)
   gs->nrepeats--;
  else {
   gs->grouping--;
   gs->nseps--;
  }
  if (io_print(iop, gs->thousands_sep, gs->thousep_len, locale))
   return (-1);
  if (io_printandpad(iop, cp, ep, *gs->grouping, zeroes, locale))
   return (-1);
  cp += *gs->grouping;
 }
 if (cp > ep)
  cp = ep;
 return (cp - cp0);
}
