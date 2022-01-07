
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_AF ;
 int ATTR_AP (int ) ;
 int ATTR_AP_RO ;
 int ATTR_DESCR_MASK ;
 int ATTR_MASK ;
 int ATTR_SW_MANAGED ;
 int ATTR_SW_WIRED ;
 int KASSERT (int,char*) ;
 int L0_OFFSET ;
 int L0_SIZE ;
 int L1_OFFSET ;
 int L1_SIZE ;
 int L2_BLOCK ;
 int L2_OFFSET ;
 int L2_SIZE ;
 int L2_TABLE ;
 int L3_PAGE ;
 scalar_t__ L3_SIZE ;
 int MADV_DONTNEED ;
 int MADV_FREE ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int atomic_fcmpset_long (int*,int*,int) ;
 int cpu_spinwait () ;
 int pmap_clear_bits (int*,int) ;
 int pmap_demote_l2_locked (int ,int*,int,struct rwlock**) ;
 int pmap_invalidate_range (int ,int,int) ;
 int* pmap_l0 (int ,int) ;
 int* pmap_l0_to_l1 (int*,int) ;
 int* pmap_l1_to_l2 (int*,int) ;
 int* pmap_l2_to_l3 (int*,int) ;
 int pmap_load (int*) ;
 scalar_t__ pmap_pte_dirty (int) ;
 int pmap_remove_l3 (int ,int*,int,int,int *,struct rwlock**) ;
 int rw_wunlock (struct rwlock*) ;
 int vm_page_dirty (int ) ;

void
pmap_advise(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, int advice)
{
 struct rwlock *lock;
 vm_offset_t va, va_next;
 vm_page_t m;
 pd_entry_t *l0, *l1, *l2, oldl2;
 pt_entry_t *l3, oldl3;

 if (advice != MADV_DONTNEED && advice != MADV_FREE)
  return;

 PMAP_LOCK(pmap);
 for (; sva < eva; sva = va_next) {
  l0 = pmap_l0(pmap, sva);
  if (pmap_load(l0) == 0) {
   va_next = (sva + L0_SIZE) & ~L0_OFFSET;
   if (va_next < sva)
    va_next = eva;
   continue;
  }
  l1 = pmap_l0_to_l1(l0, sva);
  if (pmap_load(l1) == 0) {
   va_next = (sva + L1_SIZE) & ~L1_OFFSET;
   if (va_next < sva)
    va_next = eva;
   continue;
  }
  va_next = (sva + L2_SIZE) & ~L2_OFFSET;
  if (va_next < sva)
   va_next = eva;
  l2 = pmap_l1_to_l2(l1, sva);
  oldl2 = pmap_load(l2);
  if (oldl2 == 0)
   continue;
  if ((oldl2 & ATTR_DESCR_MASK) == L2_BLOCK) {
   if ((oldl2 & ATTR_SW_MANAGED) == 0)
    continue;
   lock = ((void*)0);
   if (!pmap_demote_l2_locked(pmap, l2, sva, &lock)) {
    if (lock != ((void*)0))
     rw_wunlock(lock);




    continue;
   }
   if ((oldl2 & ATTR_SW_WIRED) == 0) {
    va = eva;
    if (va > va_next)
     va = va_next;
    va -= PAGE_SIZE;
    KASSERT(va >= sva,
        ("pmap_advise: no address gap"));
    l3 = pmap_l2_to_l3(l2, va);
    KASSERT(pmap_load(l3) != 0,
        ("pmap_advise: invalid PTE"));
    pmap_remove_l3(pmap, l3, va, pmap_load(l2),
        ((void*)0), &lock);
   }
   if (lock != ((void*)0))
    rw_wunlock(lock);
  }
  KASSERT((pmap_load(l2) & ATTR_DESCR_MASK) == L2_TABLE,
      ("pmap_advise: invalid L2 entry after demotion"));
  if (va_next > eva)
   va_next = eva;
  va = va_next;
  for (l3 = pmap_l2_to_l3(l2, sva); sva != va_next; l3++,
      sva += L3_SIZE) {
   oldl3 = pmap_load(l3);
   if ((oldl3 & (ATTR_SW_MANAGED | ATTR_DESCR_MASK)) !=
       (ATTR_SW_MANAGED | L3_PAGE))
    goto maybe_invlrng;
   else if (pmap_pte_dirty(oldl3)) {
    if (advice == MADV_DONTNEED) {





     m = PHYS_TO_VM_PAGE(oldl3 & ~ATTR_MASK);
     vm_page_dirty(m);
    }
    while (!atomic_fcmpset_long(l3, &oldl3,
        (oldl3 & ~ATTR_AF) | ATTR_AP(ATTR_AP_RO)))
     cpu_spinwait();
   } else if ((oldl3 & ATTR_AF) != 0)
    pmap_clear_bits(l3, ATTR_AF);
   else
    goto maybe_invlrng;
   if (va == va_next)
    va = sva;
   continue;
maybe_invlrng:
   if (va != va_next) {
    pmap_invalidate_range(pmap, va, sva);
    va = va_next;
   }
  }
  if (va != va_next)
   pmap_invalidate_range(pmap, va, sva);
 }
 PMAP_UNLOCK(pmap);
}
