
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int flags; scalar_t__ viscol; size_t minbl; scalar_t__ maxrmargin; size_t (* width ) (struct termp*,char) ;size_t col; size_t trailspace; TYPE_1__* tcol; } ;
struct TYPE_2__ {scalar_t__ offset; size_t col; size_t rmargin; size_t lastcol; int* buf; } ;



 size_t SIZE_MAX ;
 int TERMP_BACKAFTER ;
 int TERMP_BACKBEFORE ;
 int TERMP_BRIND ;
 int TERMP_BRNEVER ;
 int TERMP_BRTRSP ;
 int TERMP_CENTER ;
 int TERMP_HANG ;
 int TERMP_MULTICOL ;
 int TERMP_NOBREAK ;
 int TERMP_NOPAD ;
 int TERMP_RIGHT ;
 int endline (struct termp*) ;
 size_t stub1 (struct termp*,char) ;
 int term_field (struct termp*,size_t,size_t,size_t,size_t) ;
 int term_fill (struct termp*,size_t*,size_t*,size_t) ;
 size_t term_len (struct termp*,size_t) ;
 size_t term_tab_next (size_t) ;

void
term_flushln(struct termp *p)
{
 size_t vbl;
 size_t vbr;
 size_t vfield;
 size_t vtarget;
 size_t ic;
 size_t nbr;






 vbl = (p->flags & TERMP_NOPAD) || p->tcol->offset < p->viscol ?
     0 : p->tcol->offset - p->viscol;
 if (p->minbl && vbl < p->minbl)
  vbl = p->minbl;

 if ((p->flags & TERMP_MULTICOL) == 0)
  p->tcol->col = 0;



 for (;;) {
  vfield = p->tcol->rmargin > p->viscol + vbl ?
      p->tcol->rmargin - p->viscol - vbl : 0;
  vtarget = p->flags & TERMP_BRNEVER ? SIZE_MAX :
      (p->flags & TERMP_NOBREAK) == 0 ? vfield :
      p->maxrmargin > p->viscol + vbl ?
      p->maxrmargin - p->viscol - vbl : 0;






  term_fill(p, &nbr, &vbr, vtarget);
  if (nbr == 0)
   break;







  if (vbr < vtarget) {
   if (p->flags & TERMP_CENTER)
    vbl += (vtarget - vbr) / 2;
   else if (p->flags & TERMP_RIGHT)
    vbl += vtarget - vbr;
  }



  term_field(p, vbl, nbr, vbr, vtarget);
  for (ic = p->tcol->col; ic < p->tcol->lastcol; ic++) {
   switch (p->tcol->buf[ic]) {
   case '\t':
    if (p->flags & TERMP_BRTRSP)
     vbr = term_tab_next(vbr);
    continue;
   case ' ':
    if (p->flags & TERMP_BRTRSP)
     vbr += (*p->width)(p, ' ');
    continue;
   case '\n':
   case 128:
    continue;
   default:
    break;
   }
   break;
  }
  if (ic == p->tcol->lastcol)
   break;






  while (p->tcol->col < p->tcol->lastcol &&
      p->tcol->buf[p->tcol->col] == ' ')
   p->tcol->col++;
  if (p->flags & TERMP_MULTICOL)
   return;

  endline(p);
  p->viscol = 0;
  vbl = p->flags & TERMP_BRIND ?
      p->tcol->rmargin : p->tcol->offset;
 }



 p->col = p->tcol->col = p->tcol->lastcol = 0;
 p->minbl = p->trailspace;
 p->flags &= ~(TERMP_BACKAFTER | TERMP_BACKBEFORE | TERMP_NOPAD);

 if (p->flags & TERMP_MULTICOL)
  return;
 if ((p->flags & TERMP_HANG) == 0 &&
     ((p->flags & TERMP_NOBREAK) == 0 ||
      vbr + term_len(p, p->trailspace) > vfield))
  endline(p);
}
