
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int MA_OWNED ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int pmap_global_bit (int ) ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;
 int* pmap_pde_to_pte (int *,scalar_t__) ;
 scalar_t__ pmap_remove_pte (int ,int*,scalar_t__,int ,struct spglist*,struct rwlock**) ;

__attribute__((used)) static bool
pmap_remove_ptes(pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    pd_entry_t *pde, struct spglist *free, struct rwlock **lockp)
{
 pt_entry_t PG_G, *pte;
 vm_offset_t va;
 bool anyvalid;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 PG_G = pmap_global_bit(pmap);
 anyvalid = 0;
 va = eva;
 for (pte = pmap_pde_to_pte(pde, sva); sva != eva; pte++,
     sva += PAGE_SIZE) {
  if (*pte == 0) {
   if (va != eva) {
    pmap_invalidate_range(pmap, va, sva);
    va = eva;
   }
   continue;
  }
  if ((*pte & PG_G) == 0)
   anyvalid = 1;
  else if (va == eva)
   va = sva;
  if (pmap_remove_pte(pmap, pte, sva, *pde, free, lockp)) {
   sva += PAGE_SIZE;
   break;
  }
 }
 if (va != eva)
  pmap_invalidate_range(pmap, va, sva);
 return (anyvalid);
}
