
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmap_invl_gen {scalar_t__ gen; } ;
struct TYPE_3__ {struct pmap_invl_gen md_invl_gen; } ;
struct TYPE_4__ {TYPE_1__ td_md; } ;


 int KASSERT (int,char*) ;
 struct pmap_invl_gen* LIST_NEXT (struct pmap_invl_gen*,int ) ;
 int LIST_REMOVE (struct pmap_invl_gen*,int ) ;
 TYPE_2__* curthread ;
 int invl_gen_mtx ;
 int link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmap_delayed_invl_finish_unblock (scalar_t__) ;

__attribute__((used)) static void
pmap_delayed_invl_finish_l(void)
{
 struct pmap_invl_gen *invl_gen, *next;

 invl_gen = &curthread->td_md.md_invl_gen;
 KASSERT(invl_gen->gen != 0, ("missed invl_start"));
 mtx_lock(&invl_gen_mtx);
 next = LIST_NEXT(invl_gen, link);
 if (next == ((void*)0))
  pmap_delayed_invl_finish_unblock(invl_gen->gen);
 else
  next->gen = invl_gen->gen;
 LIST_REMOVE(invl_gen, link);
 mtx_unlock(&invl_gen_mtx);
 invl_gen->gen = 0;
}
