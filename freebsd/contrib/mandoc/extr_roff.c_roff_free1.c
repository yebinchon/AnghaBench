
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff {scalar_t__ mstackpos; int rstackpos; TYPE_1__* xtab; int * xmbtab; int * rentab; int * strtab; int * regtab; scalar_t__ rstacksz; TYPE_1__* rstack; scalar_t__ last; int * eqn; int last_eqn; int * tbl; int last_tbl; int first_tbl; } ;
struct TYPE_2__ {struct TYPE_2__* p; } ;


 int eqn_free (int ) ;
 int free (TYPE_1__*) ;
 int roff_freereg (int *) ;
 int roff_freestr (int *) ;
 int roff_userret (struct roff*) ;
 int roffnode_pop (struct roff*) ;
 int tbl_free (int ) ;

__attribute__((used)) static void
roff_free1(struct roff *r)
{
 int i;

 tbl_free(r->first_tbl);
 r->first_tbl = r->last_tbl = r->tbl = ((void*)0);

 eqn_free(r->last_eqn);
 r->last_eqn = r->eqn = ((void*)0);

 while (r->mstackpos >= 0)
  roff_userret(r);

 while (r->last)
  roffnode_pop(r);

 free (r->rstack);
 r->rstack = ((void*)0);
 r->rstacksz = 0;
 r->rstackpos = -1;

 roff_freereg(r->regtab);
 r->regtab = ((void*)0);

 roff_freestr(r->strtab);
 roff_freestr(r->rentab);
 roff_freestr(r->xmbtab);
 r->strtab = r->rentab = r->xmbtab = ((void*)0);

 if (r->xtab)
  for (i = 0; i < 128; i++)
   free(r->xtab[i].p);
 free(r->xtab);
 r->xtab = ((void*)0);
}
