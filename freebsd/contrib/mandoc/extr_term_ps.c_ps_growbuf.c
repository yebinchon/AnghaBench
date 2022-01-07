
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {scalar_t__ psmargcur; scalar_t__ psmargsz; int psmarg; } ;


 size_t PS_BUFSLOP ;
 int mandoc_realloc (int ,scalar_t__) ;

__attribute__((used)) static void
ps_growbuf(struct termp *p, size_t sz)
{
 if (p->ps->psmargcur + sz <= p->ps->psmargsz)
  return;

 if (sz < PS_BUFSLOP)
  sz = PS_BUFSLOP;

 p->ps->psmargsz += sz;
 p->ps->psmarg = mandoc_realloc(p->ps->psmarg, p->ps->psmargsz);
}
