
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int ATTR_DESCR_MASK ;
 int ATTR_MASK ;
 int ATTR_SW_MANAGED ;
 int CACHED_MEMORY ;
 int CTR2 (int ,char*,scalar_t__,int ) ;
 int DMAP_TO_PHYS (scalar_t__) ;
 int KASSERT (int,char*) ;
 int KTR_PMAP ;
 int L1_BLOCK ;
 scalar_t__ L1_OFFSET ;
 scalar_t__ L1_SIZE ;
 int L1_TABLE ;
 int L2_BLOCK ;
 scalar_t__ L2_SIZE ;
 int L3_OFFSET ;
 int Ln_ENTRIES ;
 int MA_OWNED ;
 scalar_t__ PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int VM_ALLOC_INTERRUPT ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_PAGE_TO_PHYS (int *) ;
 scalar_t__ kva_alloc (int ) ;
 int kva_free (scalar_t__,int ) ;
 int pmap_kenter (scalar_t__,int ,int,int ) ;
 int pmap_kremove (scalar_t__) ;
 int pmap_load (int*) ;
 int pmap_update_entry (int ,int*,int,scalar_t__,int ) ;
 int * vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static pt_entry_t *
pmap_demote_l1(pmap_t pmap, pt_entry_t *l1, vm_offset_t va)
{
 pt_entry_t *l2, newl2, oldl1;
 vm_offset_t tmpl1;
 vm_paddr_t l2phys, phys;
 vm_page_t ml2;
 int i;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 oldl1 = pmap_load(l1);
 KASSERT((oldl1 & ATTR_DESCR_MASK) == L1_BLOCK,
     ("pmap_demote_l1: Demoting a non-block entry"));
 KASSERT((va & L1_OFFSET) == 0,
     ("pmap_demote_l1: Invalid virtual address %#lx", va));
 KASSERT((oldl1 & ATTR_SW_MANAGED) == 0,
     ("pmap_demote_l1: Level 1 table shouldn't be managed"));

 tmpl1 = 0;
 if (va <= (vm_offset_t)l1 && va + L1_SIZE > (vm_offset_t)l1) {
  tmpl1 = kva_alloc(PAGE_SIZE);
  if (tmpl1 == 0)
   return (((void*)0));
 }

 if ((ml2 = vm_page_alloc(((void*)0), 0, VM_ALLOC_INTERRUPT |
     VM_ALLOC_NOOBJ | VM_ALLOC_WIRED)) == ((void*)0)) {
  CTR2(KTR_PMAP, "pmap_demote_l1: failure for va %#lx"
      " in pmap %p", va, pmap);
  return (((void*)0));
 }

 l2phys = VM_PAGE_TO_PHYS(ml2);
 l2 = (pt_entry_t *)PHYS_TO_DMAP(l2phys);


 phys = oldl1 & ~ATTR_MASK;

 newl2 = oldl1 & ATTR_MASK;


 for (i = 0; i < Ln_ENTRIES; i++) {
  l2[i] = newl2 | phys;
  phys += L2_SIZE;
 }
 KASSERT(l2[0] == ((oldl1 & ~ATTR_DESCR_MASK) | L2_BLOCK),
     ("Invalid l2 page (%lx != %lx)", l2[0],
     (oldl1 & ~ATTR_DESCR_MASK) | L2_BLOCK));

 if (tmpl1 != 0) {
  pmap_kenter(tmpl1, PAGE_SIZE,
      DMAP_TO_PHYS((vm_offset_t)l1) & ~L3_OFFSET, CACHED_MEMORY);
  l1 = (pt_entry_t *)(tmpl1 + ((vm_offset_t)l1 & PAGE_MASK));
 }

 pmap_update_entry(pmap, l1, l2phys | L1_TABLE, va, PAGE_SIZE);

 if (tmpl1 != 0) {
  pmap_kremove(tmpl1);
  kva_free(tmpl1, PAGE_SIZE);
 }

 return (l2);
}
