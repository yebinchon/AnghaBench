
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_long ;
typedef size_t u_int ;
struct TYPE_8__ {int pvh_attrs; } ;
struct vm_page {TYPE_1__ md; } ;
struct pv_entry {int pv_flags; } ;
struct l2_dtable {struct l2_bucket* l2_bucket; } ;
struct l2_bucket {int* l2b_kva; int l2b_phys; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_10__ {TYPE_2__* pm_l1; int pm_domain; struct l2_dtable** pm_l2; } ;
struct TYPE_9__ {int* l1_kva; int l1_domain_use_count; } ;


 int Debugger () ;
 int L1_C_DOM (int ) ;
 int L1_C_PROTO ;
 size_t L1_IDX (scalar_t__) ;
 size_t L2_BUCKET (size_t) ;
 size_t L2_IDX (size_t) ;
 int L2_S_PROTO ;
 int L2_S_PROT_U ;
 int L2_S_PROT_W ;
 int L2_TYPE_INV ;
 int L2_TYPE_MASK ;
 struct vm_page* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (TYPE_3__*) ;
 int PMAP_UNLOCK (TYPE_3__*) ;
 int PTE_SYNC (int*) ;
 int PVF_MOD ;
 int PVF_REF ;
 int PVF_WRITE ;
 int VM_PROT_WRITE ;
 int cpu_cpwait () ;
 int cpu_tlb_flushID_SE (scalar_t__) ;
 size_t l2pte_index (scalar_t__) ;
 int l2pte_pa (int) ;
 int last_fault_code ;
 struct pv_entry* pmap_find_pv (struct vm_page*,TYPE_3__*,scalar_t__) ;
 int printf (char*,...) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 scalar_t__ vector_page ;
 int vm_page_dirty (struct vm_page*) ;

int
pmap_fault_fixup(pmap_t pm, vm_offset_t va, vm_prot_t ftype, int user)
{
 struct l2_dtable *l2;
 struct l2_bucket *l2b;
 pd_entry_t *pl1pd, l1pd;
 pt_entry_t *ptep, pte;
 vm_paddr_t pa;
 u_int l1idx;
 int rv = 0;

 l1idx = L1_IDX(va);
 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pm);
 l2 = pm->pm_l2[L2_IDX(l1idx)];
 if (l2 == ((void*)0))
  goto out;




 l2b = &l2->l2_bucket[L2_BUCKET(l1idx)];
 if (l2b->l2b_kva == ((void*)0))
  goto out;




 ptep = &l2b->l2b_kva[l2pte_index(va)];
 pte = *ptep;
 if (pte == 0)
  goto out;




 if (user && (pte & L2_S_PROT_U) == 0)
  goto out;
 if (va == vector_page)
  goto out;

 pa = l2pte_pa(pte);

 if ((ftype & VM_PROT_WRITE) && (pte & L2_S_PROT_W) == 0) {




  struct pv_entry *pv;
  struct vm_page *pg;


  if ((pg = PHYS_TO_VM_PAGE(pa)) == ((void*)0)) {
   goto out;
  }


  pv = pmap_find_pv(pg, pm, va);
  if (pv == ((void*)0)) {
   goto out;
  }
  if ((pv->pv_flags & PVF_WRITE) == 0) {
   goto out;
  }

  pg->md.pvh_attrs |= PVF_REF | PVF_MOD;
  vm_page_dirty(pg);
  pv->pv_flags |= PVF_REF | PVF_MOD;
  *ptep = (pte & ~L2_TYPE_MASK) | L2_S_PROTO | L2_S_PROT_W;
  PTE_SYNC(ptep);
  rv = 1;
 } else
 if ((pte & L2_TYPE_MASK) == L2_TYPE_INV) {




  struct pv_entry *pv;
  struct vm_page *pg;


  if ((pg = PHYS_TO_VM_PAGE(pa)) == ((void*)0))
   goto out;


  pv = pmap_find_pv(pg, pm, va);
  if (pv == ((void*)0))
   goto out;

  pg->md.pvh_attrs |= PVF_REF;
  pv->pv_flags |= PVF_REF;


  *ptep = (pte & ~L2_TYPE_MASK) | L2_S_PROTO;
  PTE_SYNC(ptep);
  rv = 1;
 }





 pl1pd = &pm->pm_l1->l1_kva[l1idx];
 l1pd = l2b->l2b_phys | L1_C_DOM(pm->pm_domain) | L1_C_PROTO;
 if (*pl1pd != l1pd) {
  *pl1pd = l1pd;
  PTE_SYNC(pl1pd);
  rv = 1;
 }
 cpu_tlb_flushID_SE(va);
 cpu_cpwait();

 rv = 1;

out:
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pm);
 return (rv);
}
