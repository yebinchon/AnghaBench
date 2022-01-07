
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_page_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {int pm_l0_paddr; int pm_cookie; int pm_root; TYPE_1__ pm_stats; } ;


 int ASID_FIRST_AVAILABLE ;
 int COOKIE_TO_ASID (int ) ;
 scalar_t__ COOKIE_TO_EPOCH (int ) ;
 int KASSERT (int,char*) ;
 int PHYS_TO_VM_PAGE (int ) ;
 scalar_t__ asid_epoch ;
 int asid_set ;
 int asid_set_mutex ;
 int asid_set_size ;
 int bit_clear (int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int vm_page_free_zero (int ) ;
 int vm_page_unwire_noq (int ) ;
 int vm_radix_is_empty (int *) ;

void
pmap_release(pmap_t pmap)
{
 vm_page_t m;
 int asid;

 KASSERT(pmap->pm_stats.resident_count == 0,
     ("pmap_release: pmap resident count %ld != 0",
     pmap->pm_stats.resident_count));
 KASSERT(vm_radix_is_empty(&pmap->pm_root),
     ("pmap_release: pmap has reserved page table page(s)"));

 mtx_lock_spin(&asid_set_mutex);
 if (COOKIE_TO_EPOCH(pmap->pm_cookie) == asid_epoch) {
  asid = COOKIE_TO_ASID(pmap->pm_cookie);
  KASSERT(asid >= ASID_FIRST_AVAILABLE && asid < asid_set_size,
      ("pmap_release: pmap cookie has out-of-range asid"));
  bit_clear(asid_set, asid);
 }
 mtx_unlock_spin(&asid_set_mutex);

 m = PHYS_TO_VM_PAGE(pmap->pm_l0_paddr);
 vm_page_unwire_noq(m);
 vm_page_free_zero(m);
}
