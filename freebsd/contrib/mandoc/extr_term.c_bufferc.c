
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int flags; int col; TYPE_1__* tcol; int (* letter ) (struct termp*,char) ;} ;
struct TYPE_2__ {int maxcols; int lastcol; char* buf; } ;


 char ASCII_NBRSP ;
 int TERMP_NOBUF ;
 int adjbuf (TYPE_1__*,int) ;
 int stub1 (struct termp*,char) ;

__attribute__((used)) static void
bufferc(struct termp *p, char c)
{
 if (p->flags & TERMP_NOBUF) {
  (*p->letter)(p, c);
  return;
 }
 if (p->col + 1 >= p->tcol->maxcols)
  adjbuf(p->tcol, p->col + 1);
 if (p->tcol->lastcol <= p->col || (c != ' ' && c != ASCII_NBRSP))
  p->tcol->buf[p->col] = c;
 if (p->tcol->lastcol < ++p->col)
  p->tcol->lastcol = p->col;
}
