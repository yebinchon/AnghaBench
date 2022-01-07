
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct pmap_invl_gen {scalar_t__ gen; struct pmap_invl_gen* next; } ;


 int KASSERT (int,char*) ;
 uintptr_t PMAP_INVL_GEN_NEXT_INVALID ;
 scalar_t__ atomic_load_long (scalar_t__*) ;
 int atomic_thread_fence_rel () ;
 int pmap_di_load_invl (struct pmap_invl_gen*,struct pmap_invl_gen*) ;
 int pmap_di_store_invl (struct pmap_invl_gen*,struct pmap_invl_gen*,struct pmap_invl_gen*) ;

__attribute__((used)) static bool
pmap_delayed_invl_finish_u_crit(struct pmap_invl_gen *invl_gen,
    struct pmap_invl_gen *p)
{
 struct pmap_invl_gen prev, new_prev;
 u_long mygen;







 mygen = atomic_load_long(&invl_gen->gen);

 if (!pmap_di_load_invl(p, &prev) || prev.next != invl_gen)
  return (0);

 KASSERT(prev.gen < mygen,
     ("invalid di gen sequence %lu %lu", prev.gen, mygen));
 new_prev.gen = mygen;
 new_prev.next = (void *)((uintptr_t)invl_gen->next &
     ~PMAP_INVL_GEN_NEXT_INVALID);


 atomic_thread_fence_rel();

 return (pmap_di_store_invl(p, &prev, &new_prev));
}
