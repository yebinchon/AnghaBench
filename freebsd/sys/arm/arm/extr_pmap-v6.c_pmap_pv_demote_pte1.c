
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct md_page {int dummy; } ;
typedef int * pv_entry_t ;
typedef int pmap_t ;
struct TYPE_5__ {int pv_list; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 scalar_t__ PAGE_SIZE ;
 TYPE_2__* PHYS_TO_VM_PAGE (int) ;
 int PTE1_OFFSET ;
 scalar_t__ PTE1_SIZE ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int VPO_UNMANAGED ;
 struct md_page* pa_to_pvh (int) ;
 int pmap_insert_entry (int ,scalar_t__,TYPE_2__*) ;
 int * pmap_pvh_remove (struct md_page*,int ,scalar_t__) ;
 scalar_t__ pte1_trunc (scalar_t__) ;
 int pv_next ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static void
pmap_pv_demote_pte1(pmap_t pmap, vm_offset_t va, vm_paddr_t pa)
{
 struct md_page *pvh;
 pv_entry_t pv;
 vm_offset_t va_last;
 vm_page_t m;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 KASSERT((pa & PTE1_OFFSET) == 0,
     ("pmap_pv_demote_pte1: pa is not 1mpage aligned"));





 pvh = pa_to_pvh(pa);
 va = pte1_trunc(va);
 pv = pmap_pvh_remove(pvh, pmap, va);
 KASSERT(pv != ((void*)0), ("pmap_pv_demote_pte1: pv not found"));
 m = PHYS_TO_VM_PAGE(pa);
 TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);

 va_last = va + PTE1_SIZE - PAGE_SIZE;
 do {
  m++;
  KASSERT((m->oflags & VPO_UNMANAGED) == 0,
      ("pmap_pv_demote_pte1: page %p is not managed", m));
  va += PAGE_SIZE;
  pmap_insert_entry(pmap, va, m);
 } while (va < va_last);
}
