
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int ATTR_DESCR_TYPE_BLOCK ;
 int ATTR_DESCR_TYPE_MASK ;
 int ATTR_MASK ;
 int DMAP_MAX_ADDRESS ;
 int DMAP_MIN_ADDRESS ;
 int DMAP_TO_PHYS (int) ;
 int L1_OFFSET ;
 int L2_OFFSET ;
 int L3_OFFSET ;
 int kernel_pmap ;
 int* pmap_l1 (int ,int) ;
 int* pmap_l1_to_l2 (int*,int) ;
 int* pmap_l2_to_l3 (int*,int) ;
 int pmap_load (int*) ;

vm_paddr_t
pmap_kextract(vm_offset_t va)
{
 pt_entry_t *pte, tpte;

 if (va >= DMAP_MIN_ADDRESS && va < DMAP_MAX_ADDRESS)
  return (DMAP_TO_PHYS(va));
 pte = pmap_l1(kernel_pmap, va);
 if (pte == ((void*)0))
  return (0);







 tpte = pmap_load(pte);
 if (tpte == 0)
  return (0);
 if ((tpte & ATTR_DESCR_TYPE_MASK) == ATTR_DESCR_TYPE_BLOCK)
  return ((tpte & ~ATTR_MASK) | (va & L1_OFFSET));
 pte = pmap_l1_to_l2(&tpte, va);
 tpte = pmap_load(pte);
 if (tpte == 0)
  return (0);
 if ((tpte & ATTR_DESCR_TYPE_MASK) == ATTR_DESCR_TYPE_BLOCK)
  return ((tpte & ~ATTR_MASK) | (va & L2_OFFSET));
 pte = pmap_l2_to_l3(&tpte, va);
 tpte = pmap_load(pte);
 if (tpte == 0)
  return (0);
 return ((tpte & ~ATTR_MASK) | (va & L3_OFFSET));
}
