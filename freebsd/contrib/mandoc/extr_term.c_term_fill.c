
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {size_t (* width ) (struct termp*,char) ;TYPE_1__* tcol; } ;
struct TYPE_2__ {size_t col; size_t lastcol; int* buf; } ;





 int abort () ;
 int assert (int) ;
 size_t stub1 (struct termp*,char) ;
 size_t stub2 (struct termp*,char) ;
 size_t stub3 (struct termp*,char) ;
 size_t stub4 (struct termp*,char) ;
 size_t term_tab_next (size_t) ;

__attribute__((used)) static void
term_fill(struct termp *p, size_t *nbr, size_t *vbr, size_t vtarget)
{
 size_t ic;
 size_t vis;
 size_t vn;
 int breakline;
 int graph;

 *nbr = *vbr = vis = 0;
 breakline = graph = 0;
 for (ic = p->tcol->col; ic < p->tcol->lastcol; ic++) {
  switch (p->tcol->buf[ic]) {
  case '\b':
   assert(ic > 0);
   vis -= (*p->width)(p, p->tcol->buf[ic - 1]);
   continue;

  case '\t':
  case ' ':
  case 130:
   switch (p->tcol->buf[ic]) {
   case '\t':
    vn = term_tab_next(vis);
    break;
   case ' ':
    vn = vis + (*p->width)(p, ' ');
    break;
   case 130:
    vn = vis;
    break;
   default:
    abort();
   }

   if (breakline || vn > vtarget)
    break;
   if (graph) {
    *nbr = ic;
    *vbr = vis;
    graph = 0;
   }
   vis = vn;
   continue;

  case '\n':
   breakline = 1;
   continue;

  case 129:
   graph = 1;






   p->tcol->buf[ic] = '-';
   vis += (*p->width)(p, '-');
   if (vis > vtarget) {
    ic++;
    break;
   }
   *nbr = ic + 1;
   *vbr = vis;
   continue;

  case 128:
   p->tcol->buf[ic] = ' ';

  default:
   graph = 1;
   vis += (*p->width)(p, p->tcol->buf[ic]);
   if (vis > vtarget && *nbr > 0)
    return;
   continue;
  }
  break;
 }







 if (graph && (vis <= vtarget || *nbr == 0)) {
  *nbr = ic;
  *vbr = vis;
 }
}
