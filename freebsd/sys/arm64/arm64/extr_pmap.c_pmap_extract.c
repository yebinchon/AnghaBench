
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int ATTR_DESCR_MASK ;
 int ATTR_MASK ;
 int KASSERT (int,char*) ;
 int L1_BLOCK ;
 int L1_OFFSET ;
 int L2_BLOCK ;
 int L2_OFFSET ;
 int L3_OFFSET ;
 int L3_PAGE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_load (int*) ;
 int* pmap_pte (int ,int,int*) ;

vm_paddr_t
pmap_extract(pmap_t pmap, vm_offset_t va)
{
 pt_entry_t *pte, tpte;
 vm_paddr_t pa;
 int lvl;

 pa = 0;
 PMAP_LOCK(pmap);




 pte = pmap_pte(pmap, va, &lvl);
 if (pte != ((void*)0)) {
  tpte = pmap_load(pte);
  pa = tpte & ~ATTR_MASK;
  switch(lvl) {
  case 1:
   KASSERT((tpte & ATTR_DESCR_MASK) == L1_BLOCK,
       ("pmap_extract: Invalid L1 pte found: %lx",
       tpte & ATTR_DESCR_MASK));
   pa |= (va & L1_OFFSET);
   break;
  case 2:
   KASSERT((tpte & ATTR_DESCR_MASK) == L2_BLOCK,
       ("pmap_extract: Invalid L2 pte found: %lx",
       tpte & ATTR_DESCR_MASK));
   pa |= (va & L2_OFFSET);
   break;
  case 3:
   KASSERT((tpte & ATTR_DESCR_MASK) == L3_PAGE,
       ("pmap_extract: Invalid L3 pte found: %lx",
       tpte & ATTR_DESCR_MASK));
   pa |= (va & L3_OFFSET);
   break;
  }
 }
 PMAP_UNLOCK(pmap);
 return (pa);
}
