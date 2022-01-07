
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {size_t (* width ) (struct termp*,char) ;size_t viscol; TYPE_1__* tcol; int (* letter ) (struct termp*,int) ;int (* advance ) (struct termp*,size_t) ;} ;
struct TYPE_2__ {size_t col; int* buf; } ;




 size_t stub1 (struct termp*,char) ;
 int stub2 (struct termp*,size_t) ;
 int stub3 (struct termp*,int) ;
 size_t stub4 (struct termp*,char) ;
 size_t stub5 (struct termp*,char) ;
 size_t term_tab_next (size_t) ;

__attribute__((used)) static void
term_field(struct termp *p, size_t vbl, size_t nbr, size_t vbr, size_t vtarget)
{
 size_t ic;
 size_t vis;
 size_t dv;
 size_t vn;

 vis = 0;
 for (ic = p->tcol->col; ic < nbr; ic++) {






  switch (p->tcol->buf[ic]) {
  case '\n':
  case 129:
   continue;
  case '\t':
   vn = term_tab_next(vis);
   vbl += vn - vis;
   vis = vn;
   continue;
  case ' ':
  case 128:
   dv = (*p->width)(p, ' ');
   vbl += dv;
   vis += dv;
   continue;
  default:
   break;
  }






  if (vbl > 0) {
   (*p->advance)(p, vbl);
   p->viscol += vbl;
   vbl = 0;
  }



  (*p->letter)(p, p->tcol->buf[ic]);
  if (p->tcol->buf[ic] == '\b') {
   dv = (*p->width)(p, p->tcol->buf[ic - 1]);
   p->viscol -= dv;
   vis -= dv;
  } else {
   dv = (*p->width)(p, p->tcol->buf[ic]);
   p->viscol += dv;
   vis += dv;
  }
 }
 p->tcol->col = nbr;
}
