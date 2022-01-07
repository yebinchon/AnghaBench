
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int pmap_invalidate_page (int ,int ) ;
 int* pmap_pde_to_pte (int*,int ) ;
 int pmap_remove_pte (int ,int*,int ,int,struct spglist*,struct rwlock**) ;
 int pmap_valid_bit (int ) ;
 int rw_wunlock (struct rwlock*) ;

__attribute__((used)) static void
pmap_remove_page(pmap_t pmap, vm_offset_t va, pd_entry_t *pde,
    struct spglist *free)
{
 struct rwlock *lock;
 pt_entry_t *pte, PG_V;

 PG_V = pmap_valid_bit(pmap);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if ((*pde & PG_V) == 0)
  return;
 pte = pmap_pde_to_pte(pde, va);
 if ((*pte & PG_V) == 0)
  return;
 lock = ((void*)0);
 pmap_remove_pte(pmap, pte, va, *pde, free, &lock);
 if (lock != ((void*)0))
  rw_wunlock(lock);
 pmap_invalidate_page(pmap, va);
}
