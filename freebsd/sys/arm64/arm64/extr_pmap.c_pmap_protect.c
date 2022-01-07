
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_AP (int ) ;
 int ATTR_AP_RO ;
 int ATTR_AP_RW_BIT ;
 int ATTR_DESCR_MASK ;
 int ATTR_MASK ;
 int ATTR_SW_DBM ;
 int ATTR_SW_MANAGED ;
 int ATTR_XN ;
 int KASSERT (int,char*) ;
 int L0_OFFSET ;
 int L0_SIZE ;
 int L1_OFFSET ;
 int L1_SIZE ;
 int L2_BLOCK ;
 int L2_OFFSET ;
 int L2_SIZE ;
 int L2_TABLE ;
 scalar_t__ L3_SIZE ;
 int PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_WRITE ;
 int atomic_fcmpset_64 (int*,int*,int) ;
 int * pmap_demote_l2 (int ,int*,int) ;
 int pmap_invalidate_range (int ,int,int) ;
 int* pmap_l0 (int ,int) ;
 int* pmap_l0_to_l1 (int*,int) ;
 int* pmap_l1_to_l2 (int*,int) ;
 int* pmap_l2_to_l3 (int*,int) ;
 int pmap_l3_valid (int) ;
 int pmap_load (int*) ;
 int pmap_protect_l2 (int ,int*,int,int,int) ;
 scalar_t__ pmap_pte_dirty (int) ;
 int pmap_remove (int ,int,int) ;
 int vm_page_dirty (int ) ;

void
pmap_protect(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
 vm_offset_t va, va_next;
 pd_entry_t *l0, *l1, *l2;
 pt_entry_t *l3p, l3, mask, nbits;

 KASSERT((prot & ~VM_PROT_ALL) == 0, ("invalid prot %x", prot));
 if (prot == VM_PROT_NONE) {
  pmap_remove(pmap, sva, eva);
  return;
 }

 mask = nbits = 0;
 if ((prot & VM_PROT_WRITE) == 0) {
  mask |= ATTR_AP_RW_BIT | ATTR_SW_DBM;
  nbits |= ATTR_AP(ATTR_AP_RO);
 }
 if ((prot & VM_PROT_EXECUTE) == 0) {
  mask |= ATTR_XN;
  nbits |= ATTR_XN;
 }
 if (mask == 0)
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
  if (pmap_load(l2) == 0)
   continue;

  if ((pmap_load(l2) & ATTR_DESCR_MASK) == L2_BLOCK) {
   if (sva + L2_SIZE == va_next && eva >= va_next) {
    pmap_protect_l2(pmap, l2, sva, mask, nbits);
    continue;
   } else if (pmap_demote_l2(pmap, l2, sva) == ((void*)0))
    continue;
  }
  KASSERT((pmap_load(l2) & ATTR_DESCR_MASK) == L2_TABLE,
      ("pmap_protect: Invalid L2 entry after demotion"));

  if (va_next > eva)
   va_next = eva;

  va = va_next;
  for (l3p = pmap_l2_to_l3(l2, sva); sva != va_next; l3p++,
      sva += L3_SIZE) {
   l3 = pmap_load(l3p);
retry:
   if (!pmap_l3_valid(l3) || (l3 & mask) == nbits) {
    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
    continue;
   }





   if ((l3 & ATTR_SW_MANAGED) != 0 &&
       (nbits & ATTR_AP(ATTR_AP_RO)) != 0 &&
       pmap_pte_dirty(l3))
    vm_page_dirty(PHYS_TO_VM_PAGE(l3 & ~ATTR_MASK));

   if (!atomic_fcmpset_64(l3p, &l3, (l3 & ~mask) | nbits))
    goto retry;
   if (va == va_next)
    va = sva;
  }
  if (va != va_next)
   pmap_invalidate_range(pmap, va, sva);
 }
 PMAP_UNLOCK(pmap);
}
