
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;
typedef int pmap_t ;


 int MINCORE_INCORE ;
 int MINCORE_MODIFIED ;
 int MINCORE_MODIFIED_OTHER ;
 int MINCORE_REFERENCED ;
 int MINCORE_REFERENCED_OTHER ;
 int MINCORE_SUPER ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE1_A ;
 int PTE1_OFFSET ;
 int PTE2_A ;
 int* pmap_pte1 (int ,int) ;
 int* pmap_pte2 (int ,int) ;
 int pmap_pte2_release (int*) ;
 scalar_t__ pte1_is_dirty (int) ;
 scalar_t__ pte1_is_link (int) ;
 int pte1_is_managed (int) ;
 scalar_t__ pte1_is_section (int) ;
 int pte1_load (int*) ;
 int pte1_pa (int) ;
 scalar_t__ pte2_is_dirty (int) ;
 int pte2_is_managed (int) ;
 int pte2_load (int*) ;
 int pte2_pa (int) ;
 int trunc_page (int) ;

int
pmap_mincore(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
 pt1_entry_t *pte1p, pte1;
 pt2_entry_t *pte2p, pte2;
 vm_paddr_t pa;
 bool managed;
 int val;

 PMAP_LOCK(pmap);
 pte1p = pmap_pte1(pmap, addr);
 pte1 = pte1_load(pte1p);
 if (pte1_is_section(pte1)) {
  pa = trunc_page(pte1_pa(pte1) | (addr & PTE1_OFFSET));
  managed = pte1_is_managed(pte1);
  val = MINCORE_SUPER | MINCORE_INCORE;
  if (pte1_is_dirty(pte1))
   val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
  if (pte1 & PTE1_A)
   val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
 } else if (pte1_is_link(pte1)) {
  pte2p = pmap_pte2(pmap, addr);
  pte2 = pte2_load(pte2p);
  pmap_pte2_release(pte2p);
  pa = pte2_pa(pte2);
  managed = pte2_is_managed(pte2);
  val = MINCORE_INCORE;
  if (pte2_is_dirty(pte2))
   val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
  if (pte2 & PTE2_A)
   val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
 } else {
  managed = 0;
  val = 0;
 }
 if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
     (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) && managed) {
  *pap = pa;
 }
 PMAP_UNLOCK(pmap);
 return (val);
}
