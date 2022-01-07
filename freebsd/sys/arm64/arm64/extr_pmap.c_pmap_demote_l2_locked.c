
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
struct TYPE_5__ {scalar_t__ valid; int ref_count; } ;


 int ATTR_AF ;
 int ATTR_AP (int ) ;
 int ATTR_AP_RO ;
 int ATTR_AP_RW_BIT ;
 int ATTR_DESCR_MASK ;
 int ATTR_MASK ;
 int ATTR_SW_DBM ;
 int ATTR_SW_MANAGED ;
 int ATTR_SW_WIRED ;
 int CACHED_MEMORY ;
 int CTR2 (int ,char*,scalar_t__,int ) ;
 int CTR3 (int ,char*,scalar_t__,int ,int) ;
 int DMAP_TO_PHYS (scalar_t__) ;
 int KASSERT (int,char*) ;
 int KTR_PMAP ;
 int L2_BLOCK ;
 scalar_t__ L2_OFFSET ;
 scalar_t__ L2_SIZE ;
 int L2_TABLE ;
 int L3_OFFSET ;
 int L3_PAGE ;
 scalar_t__ Ln_ENTRIES ;
 int MA_OWNED ;
 int NL3PG ;
 scalar_t__ PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 scalar_t__ VIRT_IN_DMAP (scalar_t__) ;
 int VM_ALLOC_INTERRUPT ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int atomic_add_long (int *,int) ;
 scalar_t__ kva_alloc (int ) ;
 int kva_free (scalar_t__,int ) ;
 int pmap_demote_l2_abort (int ,scalar_t__,int*,struct rwlock**) ;
 int pmap_fill_l3 (int*,int) ;
 int pmap_kenter (scalar_t__,int ,int,int ) ;
 int pmap_kremove (scalar_t__) ;
 int pmap_l2_demotions ;
 int pmap_l2_pindex (scalar_t__) ;
 int pmap_load (int*) ;
 int pmap_pv_demote_l2 (int ,scalar_t__,int,struct rwlock**) ;
 TYPE_1__* pmap_remove_pt_page (int ,scalar_t__) ;
 int pmap_resident_count_inc (int ,int) ;
 int pmap_update_entry (int ,int*,int,scalar_t__,int ) ;
 int reserve_pv_entries (int ,scalar_t__,struct rwlock**) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static pt_entry_t *
pmap_demote_l2_locked(pmap_t pmap, pt_entry_t *l2, vm_offset_t va,
    struct rwlock **lockp)
{
 pt_entry_t *l3, newl3, oldl2;
 vm_offset_t tmpl2;
 vm_paddr_t l3phys;
 vm_page_t ml3;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 l3 = ((void*)0);
 oldl2 = pmap_load(l2);
 KASSERT((oldl2 & ATTR_DESCR_MASK) == L2_BLOCK,
     ("pmap_demote_l2: Demoting a non-block entry"));
 va &= ~L2_OFFSET;

 tmpl2 = 0;
 if (va <= (vm_offset_t)l2 && va + L2_SIZE > (vm_offset_t)l2) {
  tmpl2 = kva_alloc(PAGE_SIZE);
  if (tmpl2 == 0)
   return (((void*)0));
 }





 if ((oldl2 & ATTR_AF) == 0) {
  KASSERT((oldl2 & ATTR_SW_WIRED) == 0,
      ("pmap_demote_l2: a wired mapping is missing ATTR_AF"));
  pmap_demote_l2_abort(pmap, va, l2, lockp);
  CTR2(KTR_PMAP, "pmap_demote_l2: failure for va %#lx in pmap %p",
      va, pmap);
  goto fail;
 }

 if ((ml3 = pmap_remove_pt_page(pmap, va)) == ((void*)0)) {
  KASSERT((oldl2 & ATTR_SW_WIRED) == 0,
      ("pmap_demote_l2: page table page for a wired mapping"
      " is missing"));
  KASSERT(va < VM_MAXUSER_ADDRESS || VIRT_IN_DMAP(va),
      ("pmap_demote_l2: No saved mpte for va %#lx", va));
  ml3 = vm_page_alloc(((void*)0), pmap_l2_pindex(va),
      (VIRT_IN_DMAP(va) ? VM_ALLOC_INTERRUPT : VM_ALLOC_NORMAL) |
      VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);





  if (ml3 == ((void*)0)) {
   pmap_demote_l2_abort(pmap, va, l2, lockp);
   CTR2(KTR_PMAP, "pmap_demote_l2: failure for va %#lx"
       " in pmap %p", va, pmap);
   goto fail;
  }

  if (va < VM_MAXUSER_ADDRESS) {
   ml3->ref_count = NL3PG;
   pmap_resident_count_inc(pmap, 1);
  }
 }
 l3phys = VM_PAGE_TO_PHYS(ml3);
 l3 = (pt_entry_t *)PHYS_TO_DMAP(l3phys);
 newl3 = (oldl2 & ~ATTR_DESCR_MASK) | L3_PAGE;
 KASSERT((oldl2 & (ATTR_AP_RW_BIT | ATTR_SW_DBM)) !=
     (ATTR_AP(ATTR_AP_RO) | ATTR_SW_DBM),
     ("pmap_demote_l2: L2 entry is writeable but not dirty"));
 if (ml3->valid == 0 || (l3[0] & ATTR_MASK) != (newl3 & ATTR_MASK))
  pmap_fill_l3(l3, newl3);




 if (tmpl2 != 0) {
  pmap_kenter(tmpl2, PAGE_SIZE,
      DMAP_TO_PHYS((vm_offset_t)l2) & ~L3_OFFSET, CACHED_MEMORY);
  l2 = (pt_entry_t *)(tmpl2 + ((vm_offset_t)l2 & PAGE_MASK));
 }
 if ((oldl2 & ATTR_SW_MANAGED) != 0)
  reserve_pv_entries(pmap, Ln_ENTRIES - 1, lockp);





 pmap_update_entry(pmap, l2, l3phys | L2_TABLE, va, PAGE_SIZE);




 if ((oldl2 & ATTR_SW_MANAGED) != 0)
  pmap_pv_demote_l2(pmap, va, oldl2 & ~ATTR_MASK, lockp);

 atomic_add_long(&pmap_l2_demotions, 1);
 CTR3(KTR_PMAP, "pmap_demote_l2: success for va %#lx"
     " in pmap %p %lx", va, pmap, l3[0]);

fail:
 if (tmpl2 != 0) {
  pmap_kremove(tmpl2);
  kva_free(tmpl2, PAGE_SIZE);
 }

 return (l3);

}
