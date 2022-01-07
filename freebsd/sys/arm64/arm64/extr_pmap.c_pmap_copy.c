
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef scalar_t__ pmap_t ;
typedef int pd_entry_t ;
struct TYPE_8__ {scalar_t__ ref_count; scalar_t__ pindex; } ;


 int ATTR_AF ;
 int ATTR_AP_RW_BIT ;
 int ATTR_DESCR_MASK ;
 int ATTR_MASK ;
 int ATTR_SW_DBM ;
 int ATTR_SW_MANAGED ;
 int ATTR_SW_WIRED ;
 int KASSERT (int,char*) ;
 scalar_t__ L0_OFFSET ;
 scalar_t__ L0_SIZE ;
 scalar_t__ L1_OFFSET ;
 scalar_t__ L1_SIZE ;
 int L2_BLOCK ;
 scalar_t__ L2_OFFSET ;
 scalar_t__ L2_SIZE ;
 int L2_TABLE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_ENTER_NORECLAIM ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 int SLIST_INIT (struct spglist*) ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int atomic_add_long (int *,int) ;
 int dsb (int ) ;
 int ishst ;
 TYPE_1__* pmap_alloc_l2 (scalar_t__,scalar_t__,int *) ;
 TYPE_1__* pmap_alloc_l3 (scalar_t__,scalar_t__,int *) ;
 int pmap_invalidate_page (scalar_t__,scalar_t__) ;
 int* pmap_l0 (scalar_t__,scalar_t__) ;
 int* pmap_l0_to_l1 (int*,scalar_t__) ;
 int* pmap_l1_to_l2 (int*,scalar_t__) ;
 size_t pmap_l2_index (scalar_t__) ;
 int pmap_l2_mappings ;
 scalar_t__ pmap_l2_pindex (scalar_t__) ;
 size_t pmap_l3_index (scalar_t__) ;
 scalar_t__ pmap_load (int*) ;
 scalar_t__ pmap_pv_insert_l2 (scalar_t__,scalar_t__,int,int ,struct rwlock**) ;
 int pmap_resident_count_inc (scalar_t__,int) ;
 int pmap_store (int*,int) ;
 scalar_t__ pmap_try_insert_pv_entry (scalar_t__,scalar_t__,TYPE_1__*,struct rwlock**) ;
 scalar_t__ pmap_unwire_l3 (scalar_t__,scalar_t__,TYPE_1__*,struct spglist*) ;
 int rw_wunlock (struct rwlock*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

void
pmap_copy(pmap_t dst_pmap, pmap_t src_pmap, vm_offset_t dst_addr, vm_size_t len,
    vm_offset_t src_addr)
{
 struct rwlock *lock;
 struct spglist free;
 pd_entry_t *l0, *l1, *l2, srcptepaddr;
 pt_entry_t *dst_pte, mask, nbits, ptetemp, *src_pte;
 vm_offset_t addr, end_addr, va_next;
 vm_page_t dst_l2pg, dstmpte, srcmpte;

 if (dst_addr != src_addr)
  return;
 end_addr = src_addr + len;
 lock = ((void*)0);
 if (dst_pmap < src_pmap) {
  PMAP_LOCK(dst_pmap);
  PMAP_LOCK(src_pmap);
 } else {
  PMAP_LOCK(src_pmap);
  PMAP_LOCK(dst_pmap);
 }
 for (addr = src_addr; addr < end_addr; addr = va_next) {
  l0 = pmap_l0(src_pmap, addr);
  if (pmap_load(l0) == 0) {
   va_next = (addr + L0_SIZE) & ~L0_OFFSET;
   if (va_next < addr)
    va_next = end_addr;
   continue;
  }
  l1 = pmap_l0_to_l1(l0, addr);
  if (pmap_load(l1) == 0) {
   va_next = (addr + L1_SIZE) & ~L1_OFFSET;
   if (va_next < addr)
    va_next = end_addr;
   continue;
  }
  va_next = (addr + L2_SIZE) & ~L2_OFFSET;
  if (va_next < addr)
   va_next = end_addr;
  l2 = pmap_l1_to_l2(l1, addr);
  srcptepaddr = pmap_load(l2);
  if (srcptepaddr == 0)
   continue;
  if ((srcptepaddr & ATTR_DESCR_MASK) == L2_BLOCK) {
   if ((addr & L2_OFFSET) != 0 ||
       addr + L2_SIZE > end_addr)
    continue;
   dst_l2pg = pmap_alloc_l2(dst_pmap, addr, ((void*)0));
   if (dst_l2pg == ((void*)0))
    break;
   l2 = (pd_entry_t *)
       PHYS_TO_DMAP(VM_PAGE_TO_PHYS(dst_l2pg));
   l2 = &l2[pmap_l2_index(addr)];
   if (pmap_load(l2) == 0 &&
       ((srcptepaddr & ATTR_SW_MANAGED) == 0 ||
       pmap_pv_insert_l2(dst_pmap, addr, srcptepaddr,
       PMAP_ENTER_NORECLAIM, &lock))) {
    mask = ATTR_AF | ATTR_SW_WIRED;
    nbits = 0;
    if ((srcptepaddr & ATTR_SW_DBM) != 0)
     nbits |= ATTR_AP_RW_BIT;
    pmap_store(l2, (srcptepaddr & ~mask) | nbits);
    pmap_resident_count_inc(dst_pmap, L2_SIZE /
        PAGE_SIZE);
    atomic_add_long(&pmap_l2_mappings, 1);
   } else
    dst_l2pg->ref_count--;
   continue;
  }
  KASSERT((srcptepaddr & ATTR_DESCR_MASK) == L2_TABLE,
      ("pmap_copy: invalid L2 entry"));
  srcptepaddr &= ~ATTR_MASK;
  srcmpte = PHYS_TO_VM_PAGE(srcptepaddr);
  KASSERT(srcmpte->ref_count > 0,
      ("pmap_copy: source page table page is unused"));
  if (va_next > end_addr)
   va_next = end_addr;
  src_pte = (pt_entry_t *)PHYS_TO_DMAP(srcptepaddr);
  src_pte = &src_pte[pmap_l3_index(addr)];
  dstmpte = ((void*)0);
  for (; addr < va_next; addr += PAGE_SIZE, src_pte++) {
   ptetemp = pmap_load(src_pte);




   if ((ptetemp & ATTR_SW_MANAGED) == 0)
    continue;

   if (dstmpte != ((void*)0)) {
    KASSERT(dstmpte->pindex == pmap_l2_pindex(addr),
        ("dstmpte pindex/addr mismatch"));
    dstmpte->ref_count++;
   } else if ((dstmpte = pmap_alloc_l3(dst_pmap, addr,
       ((void*)0))) == ((void*)0))
    goto out;
   dst_pte = (pt_entry_t *)
       PHYS_TO_DMAP(VM_PAGE_TO_PHYS(dstmpte));
   dst_pte = &dst_pte[pmap_l3_index(addr)];
   if (pmap_load(dst_pte) == 0 &&
       pmap_try_insert_pv_entry(dst_pmap, addr,
       PHYS_TO_VM_PAGE(ptetemp & ~ATTR_MASK), &lock)) {




    mask = ATTR_AF | ATTR_SW_WIRED;
    nbits = 0;
    if ((ptetemp & ATTR_SW_DBM) != 0)
     nbits |= ATTR_AP_RW_BIT;
    pmap_store(dst_pte, (ptetemp & ~mask) | nbits);
    pmap_resident_count_inc(dst_pmap, 1);
   } else {
    SLIST_INIT(&free);
    if (pmap_unwire_l3(dst_pmap, addr, dstmpte,
        &free)) {
     pmap_invalidate_page(dst_pmap, addr);
     vm_page_free_pages_toq(&free, 1);
    }
    goto out;
   }

   if (dstmpte->ref_count >= srcmpte->ref_count)
    break;
  }
 }
out:




 dsb(ishst);

 if (lock != ((void*)0))
  rw_wunlock(lock);
 PMAP_UNLOCK(src_pmap);
 PMAP_UNLOCK(dst_pmap);
}
