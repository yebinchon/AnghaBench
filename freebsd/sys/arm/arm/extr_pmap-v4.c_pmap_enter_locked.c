
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;


typedef int vm_prot_t ;
typedef struct vm_page* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int u_int ;
struct TYPE_27__ {int pvh_attrs; scalar_t__ pv_memattr; int pv_kva; int pv_list; } ;
struct vm_page {int oflags; TYPE_3__ md; int object; } ;
struct pv_entry {int pv_flags; } ;
struct l2_bucket {int* l2b_kva; int l2b_phys; int l2b_occupancy; } ;
typedef int pt_entry_t ;
typedef TYPE_4__* pmap_t ;
typedef int pd_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_29__ {scalar_t__ pv_pa; } ;
struct TYPE_25__ {int resident_count; } ;
struct TYPE_28__ {int pm_domain; TYPE_2__* pm_l1; TYPE_1__ pm_stats; } ;
struct TYPE_26__ {int* l1_kva; } ;
struct TYPE_24__ {int clean_sva; int clean_eva; } ;


 int KASSERT (int,char*) ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int L1_C_DOM (int ) ;
 int L1_C_PROTO ;
 size_t L1_IDX (int) ;
 int L2_S_PROTO ;
 int L2_S_PROT_U ;
 int L2_S_PROT_W ;
 int L2_TYPE_INV ;
 int L2_TYPE_MASK ;
 int PAGE_SIZE ;
 int PDEBUG (int,int ) ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 struct vm_page* PHYS_TO_VM_PAGE (scalar_t__) ;
 int PMAP_ASSERT_LOCKED (TYPE_4__*) ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_ENTER_QUICK_LOCKED ;
 int PMAP_ENTER_WIRED ;
 int PMAP_LOCK (TYPE_4__*) ;
 int PMAP_UNLOCK (TYPE_4__*) ;
 int PTE_SYNC (int*) ;
 int PVF_EXEC ;
 int PVF_MOD ;
 int PVF_NC ;
 int PVF_REF ;
 int PVF_UNMAN ;
 int PVF_WIRED ;
 int PVF_WRITE ;
 scalar_t__ PV_BEEN_EXECD (int) ;
 scalar_t__ PV_BEEN_REFD (int) ;
 int RA_WLOCKED ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TRUE ;
 scalar_t__ VM_MEMATTR_UNCACHEABLE ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int VM_PAGE_OBJECT_BUSY_ASSERT (struct vm_page*) ;
 scalar_t__ VM_PAGE_TO_PHYS (struct vm_page*) ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_WRITE ;
 int VPO_UNMANAGED ;
 int cpu_dcache_wb_range (int,int ) ;
 int cpu_l2cache_wb_range (int,int ) ;
 TYPE_4__* kernel_pmap ;
 TYPE_19__ kmi ;
 size_t l2pte_index (int) ;
 scalar_t__ l2pte_pa (int) ;
 scalar_t__ l2pte_valid (int) ;
 struct l2_bucket* pmap_alloc_l2_bucket (TYPE_4__*,int) ;
 int pmap_dcache_wb_range (TYPE_4__*,int,int ,int ,int) ;
 int pmap_enter_pv (struct vm_page*,struct pv_entry*,TYPE_4__*,int,int) ;
 int pmap_fix_cache (struct vm_page*,TYPE_4__*,int) ;
 int pmap_free_pv_entry (struct pv_entry*) ;
 struct l2_bucket* pmap_get_l2_bucket (TYPE_4__*,int) ;
 struct pv_entry* pmap_get_pv_entry () ;
 struct l2_bucket* pmap_grow_l2_bucket (TYPE_4__*,int) ;
 int pmap_idcache_wbinv_range (TYPE_4__*,int,int ) ;
 scalar_t__ pmap_is_current (TYPE_4__*) ;
 int pmap_modify_pv (struct vm_page*,TYPE_4__*,int,int,int) ;
 struct pv_entry* pmap_remove_pv (struct vm_page*,TYPE_4__*,int) ;
 int pmap_tlb_flushD_SE (TYPE_4__*,int) ;
 int pmap_tlb_flushID_SE (TYPE_4__*,int) ;
 int printf (char*,int,int,int,int,int) ;
 int pte_l2_s_cache_mode ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 TYPE_5__ systempage ;
 int vector_page ;
 int vm_page_aflag_set (struct vm_page*,int ) ;
 int vm_page_dirty (struct vm_page*) ;
 int vm_wait (int *) ;

__attribute__((used)) static int
pmap_enter_locked(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    u_int flags)
{
 struct l2_bucket *l2b = ((void*)0);
 struct vm_page *opg;
 struct pv_entry *pve = ((void*)0);
 pt_entry_t *ptep, npte, opte;
 u_int nflags;
 u_int oflags;
 vm_paddr_t pa;

 PMAP_ASSERT_LOCKED(pmap);
 rw_assert(&pvh_global_lock, RA_WLOCKED);
 if (va == vector_page) {
  pa = systempage.pv_pa;
  m = ((void*)0);
 } else {
  if ((m->oflags & VPO_UNMANAGED) == 0) {
   if ((flags & PMAP_ENTER_QUICK_LOCKED) == 0)
    VM_PAGE_OBJECT_BUSY_ASSERT(m);
   else
    VM_OBJECT_ASSERT_LOCKED(m->object);
  }
  pa = VM_PAGE_TO_PHYS(m);
 }
 nflags = 0;
 if (prot & VM_PROT_WRITE)
  nflags |= PVF_WRITE;
 if (prot & VM_PROT_EXECUTE)
  nflags |= PVF_EXEC;
 if ((flags & PMAP_ENTER_WIRED) != 0)
  nflags |= PVF_WIRED;
 PDEBUG(1, printf("pmap_enter: pmap = %08x, va = %08x, m = %08x, prot = %x, "
     "flags = %x\n", (uint32_t) pmap, va, (uint32_t) m, prot, flags));

 if (pmap == kernel_pmap) {
  l2b = pmap_get_l2_bucket(pmap, va);
  if (l2b == ((void*)0))
   l2b = pmap_grow_l2_bucket(pmap, va);
 } else {
do_l2b_alloc:
  l2b = pmap_alloc_l2_bucket(pmap, va);
  if (l2b == ((void*)0)) {
   if ((flags & PMAP_ENTER_NOSLEEP) == 0) {
    PMAP_UNLOCK(pmap);
    rw_wunlock(&pvh_global_lock);
    vm_wait(((void*)0));
    rw_wlock(&pvh_global_lock);
    PMAP_LOCK(pmap);
    goto do_l2b_alloc;
   }
   return (KERN_RESOURCE_SHORTAGE);
  }
 }

 ptep = &l2b->l2b_kva[l2pte_index(va)];

 opte = *ptep;
 npte = pa;
 oflags = 0;
 if (opte) {





  if (l2pte_pa(opte) != pa)
   opg = PHYS_TO_VM_PAGE(l2pte_pa(opte));
  else
   opg = m;
 } else
  opg = ((void*)0);

 if ((prot & (VM_PROT_ALL)) ||
     (!m || m->md.pvh_attrs & PVF_REF)) {







  npte |= L2_S_PROTO;

  nflags |= PVF_REF;

  if (m && ((prot & VM_PROT_WRITE) != 0 ||
      (m->md.pvh_attrs & PVF_MOD))) {






   nflags |= PVF_MOD;
   if (!(m->md.pvh_attrs & PVF_MOD))
    vm_page_dirty(m);
  }
  if (m && opte)
   vm_page_aflag_set(m, PGA_REFERENCED);
 } else {



  npte |= L2_TYPE_INV;
 }

 if (prot & VM_PROT_WRITE) {
  npte |= L2_S_PROT_W;
  if (m != ((void*)0) &&
      (m->oflags & VPO_UNMANAGED) == 0)
   vm_page_aflag_set(m, PGA_WRITEABLE);
 }
 if (m->md.pv_memattr != VM_MEMATTR_UNCACHEABLE)
  npte |= pte_l2_s_cache_mode;
 if (m && m == opg) {



  oflags = pmap_modify_pv(m, pmap, va,
      PVF_WRITE | PVF_EXEC | PVF_WIRED |
      PVF_MOD | PVF_REF, nflags);





  if (pmap_is_current(pmap) &&
      (oflags & PVF_NC) == 0 &&
      (opte & L2_S_PROT_W) != 0 &&
      (prot & VM_PROT_WRITE) == 0 &&
      (opte & L2_TYPE_MASK) != L2_TYPE_INV) {
   cpu_dcache_wb_range(va, PAGE_SIZE);
   cpu_l2cache_wb_range(va, PAGE_SIZE);
  }
 } else {




  if (opg) {





   if ((pve = pmap_remove_pv(opg, pmap, va))) {




       oflags = pve->pv_flags;






       if ((oflags & PVF_NC) == 0 && l2pte_valid(opte)) {
    if (PV_BEEN_EXECD(oflags)) {
     pmap_idcache_wbinv_range(pmap, va,
         PAGE_SIZE);
    } else
     if (PV_BEEN_REFD(oflags)) {
      pmap_dcache_wb_range(pmap, va,
          PAGE_SIZE, TRUE,
          (oflags & PVF_WRITE) == 0);
     }
       }





       if (m && (m->oflags & VPO_UNMANAGED) &&
      !m->md.pv_kva &&
     TAILQ_EMPTY(&m->md.pv_list)) {
    pmap_free_pv_entry(pve);
    pve = ((void*)0);
       }
   } else if (m &&
     (!(m->oflags & VPO_UNMANAGED) || m->md.pv_kva ||
      !TAILQ_EMPTY(&m->md.pv_list)))
    pve = pmap_get_pv_entry();
  } else if (m &&
      (!(m->oflags & VPO_UNMANAGED) || m->md.pv_kva ||
      !TAILQ_EMPTY(&m->md.pv_list)))
   pve = pmap_get_pv_entry();

  if (m) {
   if ((m->oflags & VPO_UNMANAGED)) {
    if (!TAILQ_EMPTY(&m->md.pv_list) ||
        m->md.pv_kva) {
     KASSERT(pve != ((void*)0), ("No pv"));
     nflags |= PVF_UNMAN;
     pmap_enter_pv(m, pve, pmap, va, nflags);
    } else
     m->md.pv_kva = va;
   } else {
    KASSERT(va < kmi.clean_sva ||
        va >= kmi.clean_eva,
  ("pmap_enter: managed mapping within the clean submap"));
     KASSERT(pve != ((void*)0), ("No pv"));
     pmap_enter_pv(m, pve, pmap, va, nflags);
   }
  }
 }



 if (pmap != kernel_pmap && va != vector_page) {
  npte |= L2_S_PROT_U;
 }




 if (opte == 0) {
  l2b->l2b_occupancy++;
  pmap->pm_stats.resident_count++;
 }





 if (npte != opte) {
  boolean_t is_cached = pmap_is_current(pmap);

  *ptep = npte;
  if (is_cached) {




   PTE_SYNC(ptep);
   if (L1_IDX(va) != L1_IDX(vector_page) &&
       l2pte_valid(npte)) {






    pd_entry_t *pl1pd, l1pd;

    pl1pd = &pmap->pm_l1->l1_kva[L1_IDX(va)];
    l1pd = l2b->l2b_phys | L1_C_DOM(pmap->pm_domain) |
        L1_C_PROTO;
    if (*pl1pd != l1pd) {
     *pl1pd = l1pd;
     PTE_SYNC(pl1pd);
    }
   }
  }

  if (PV_BEEN_EXECD(oflags))
   pmap_tlb_flushID_SE(pmap, va);
  else if (PV_BEEN_REFD(oflags))
   pmap_tlb_flushD_SE(pmap, va);


  if (m)
   pmap_fix_cache(m, pmap, va);
 }
 return (KERN_SUCCESS);
}
