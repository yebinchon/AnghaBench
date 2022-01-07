
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {scalar_t__ viscol; TYPE_1__* tcol; int flags; } ;
struct TYPE_2__ {scalar_t__ lastcol; } ;


 int TERMP_NOSPACE ;
 int term_flushln (struct termp*) ;

void
term_newln(struct termp *p)
{

 p->flags |= TERMP_NOSPACE;
 if (p->tcol->lastcol || p->viscol)
  term_flushln(p);
}
