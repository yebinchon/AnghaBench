
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int ATTR_AF ;
 int ATTR_AP (int ) ;
 int ATTR_AP_RW ;
 int ATTR_AP_RW_BIT ;
 int ATTR_MASK ;
 int ATTR_SW_MANAGED ;
 int L1_OFFSET ;
 int L2_OFFSET ;
 int L3_OFFSET ;
 int MINCORE_INCORE ;
 int MINCORE_MODIFIED ;
 int MINCORE_MODIFIED_OTHER ;
 int MINCORE_REFERENCED ;
 int MINCORE_REFERENCED_OTHER ;
 int MINCORE_SUPER ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int panic (char*,int) ;
 int pmap_load (int*) ;
 int* pmap_pte (int ,int,int*) ;
 scalar_t__ pmap_pte_dirty (int) ;

int
pmap_mincore(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
 pt_entry_t *pte, tpte;
 vm_paddr_t mask, pa;
 int lvl, val;
 bool managed;

 PMAP_LOCK(pmap);
 pte = pmap_pte(pmap, addr, &lvl);
 if (pte != ((void*)0)) {
  tpte = pmap_load(pte);

  switch (lvl) {
  case 3:
   mask = L3_OFFSET;
   break;
  case 2:
   mask = L2_OFFSET;
   break;
  case 1:
   mask = L1_OFFSET;
   break;
  default:
   panic("pmap_mincore: invalid level %d", lvl);
  }

  managed = (tpte & ATTR_SW_MANAGED) != 0;
  val = MINCORE_INCORE;
  if (lvl != 3)
   val |= MINCORE_SUPER;
  if ((managed && pmap_pte_dirty(tpte)) || (!managed &&
      (tpte & ATTR_AP_RW_BIT) == ATTR_AP(ATTR_AP_RW)))
   val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
  if ((tpte & ATTR_AF) == ATTR_AF)
   val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;

  pa = (tpte & ~ATTR_MASK) | (addr & mask);
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
