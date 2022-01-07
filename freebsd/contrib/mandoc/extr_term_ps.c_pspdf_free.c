
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {struct TYPE_2__* pdfobjs; struct TYPE_2__* psmarg; } ;


 int free (TYPE_1__*) ;
 int term_free (struct termp*) ;

void
pspdf_free(void *arg)
{
 struct termp *p;

 p = (struct termp *)arg;

 free(p->ps->psmarg);
 free(p->ps->pdfobjs);

 free(p->ps);
 term_free(p);
}
