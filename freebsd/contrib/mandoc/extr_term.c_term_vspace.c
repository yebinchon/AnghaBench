
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {scalar_t__ skipvsp; int (* endline ) (struct termp*) ;scalar_t__ minbl; scalar_t__ viscol; } ;


 int stub1 (struct termp*) ;
 int term_newln (struct termp*) ;

void
term_vspace(struct termp *p)
{

 term_newln(p);
 p->viscol = 0;
 p->minbl = 0;
 if (0 < p->skipvsp)
  p->skipvsp--;
 else
  (*p->endline)(p);
}
