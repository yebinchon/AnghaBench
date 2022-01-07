
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct termp {scalar_t__ ti; TYPE_2__* tcol; TYPE_1__* ps; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {int flags; scalar_t__ psrow; scalar_t__ lineheight; scalar_t__ bottom; int left; int pscol; } ;


 int PS_MARGINS ;
 int PS_NEWPAGE ;
 int ps_closepage (struct termp*) ;
 int ps_pclose (struct termp*) ;
 int ps_plast (struct termp*) ;

__attribute__((used)) static void
ps_endline(struct termp *p)
{



 ps_plast(p);
 ps_pclose(p);







 if (PS_MARGINS & p->ps->flags)
  return;



 p->ps->pscol = p->ps->left;



 if (PS_NEWPAGE & p->ps->flags)
  return;






 if (p->ps->psrow >= p->ps->lineheight + p->ps->bottom) {
  p->ps->psrow -= p->ps->lineheight;
  return;
 }

 ps_closepage(p);

 p->tcol->offset -= p->ti;
 p->ti = 0;
}
