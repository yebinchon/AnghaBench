
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct l2_bucket {int* l2b_kva; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_4__ {int pvh_attrs; } ;
struct TYPE_5__ {int oflags; TYPE_1__ md; } ;


 int L2_S_PROT_W ;
 int MINCORE_INCORE ;
 int MINCORE_MODIFIED ;
 int MINCORE_MODIFIED_OTHER ;
 int MINCORE_REFERENCED ;
 int MINCORE_REFERENCED_OTHER ;
 TYPE_2__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PVF_REF ;
 int VPO_UNMANAGED ;
 size_t l2pte_index (int ) ;
 int l2pte_pa (int) ;
 int l2pte_valid (int) ;
 struct l2_bucket* pmap_get_l2_bucket (int ,int ) ;

int
pmap_mincore(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
 struct l2_bucket *l2b;
 pt_entry_t *ptep, pte;
 vm_paddr_t pa;
 vm_page_t m;
 int val;
 boolean_t managed;

 PMAP_LOCK(pmap);
 l2b = pmap_get_l2_bucket(pmap, addr);
        if (l2b == ((void*)0)) {
  PMAP_UNLOCK(pmap);
  return (0);
        }
 ptep = &l2b->l2b_kva[l2pte_index(addr)];
 pte = *ptep;
 if (!l2pte_valid(pte)) {
  PMAP_UNLOCK(pmap);
  return (0);
 }
 val = MINCORE_INCORE;
 if (pte & L2_S_PROT_W)
  val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
        managed = 0;
 pa = l2pte_pa(pte);
        m = PHYS_TO_VM_PAGE(pa);
        if (m != ((void*)0) && !(m->oflags & VPO_UNMANAGED))
                managed = 1;
 if (managed) {
  if ((m->md.pvh_attrs & PVF_REF) != 0)
   val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
 }
 if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
     (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) && managed) {
  *pap = pa;
 }
 PMAP_UNLOCK(pmap);
 return (val);
}
