
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {size_t defrmargin; int (* endline ) (struct termp*) ;int (* letter ) (struct termp*,char) ;} ;


 int stub1 (struct termp*) ;
 int stub2 (struct termp*,char) ;
 int stub3 (struct termp*) ;
 int stub4 (struct termp*) ;

void
terminal_sepline(void *arg)
{
 struct termp *p;
 size_t i;

 p = (struct termp *)arg;
 (*p->endline)(p);
 for (i = 0; i < p->defrmargin; i++)
  (*p->letter)(p, '-');
 (*p->endline)(p);
 (*p->endline)(p);
}
