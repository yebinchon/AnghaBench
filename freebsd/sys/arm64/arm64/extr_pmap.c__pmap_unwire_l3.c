
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_6__ {scalar_t__ pindex; } ;


 int ATTR_MASK ;
 int MA_OWNED ;
 scalar_t__ NUL1E ;
 scalar_t__ NUL2E ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int TRUE ;
 int pmap_add_delayed_free_list (TYPE_1__*,struct spglist*,int ) ;
 int pmap_clear (int*) ;
 int pmap_invalidate_page (int ,int ) ;
 int* pmap_l0 (int ,int ) ;
 int* pmap_l1 (int ,int ) ;
 int* pmap_l2 (int ,int ) ;
 int pmap_load (int*) ;
 int pmap_resident_count_dec (int ,int) ;
 int pmap_unwire_l3 (int ,int ,TYPE_1__*,struct spglist*) ;

__attribute__((used)) static void
_pmap_unwire_l3(pmap_t pmap, vm_offset_t va, vm_page_t m, struct spglist *free)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);



 if (m->pindex >= (NUL2E + NUL1E)) {

  pd_entry_t *l0;

  l0 = pmap_l0(pmap, va);
  pmap_clear(l0);
 } else if (m->pindex >= NUL2E) {

  pd_entry_t *l1;

  l1 = pmap_l1(pmap, va);
  pmap_clear(l1);
 } else {

  pd_entry_t *l2;

  l2 = pmap_l2(pmap, va);
  pmap_clear(l2);
 }
 pmap_resident_count_dec(pmap, 1);
 if (m->pindex < NUL2E) {

  pd_entry_t *l1, tl1;
  vm_page_t l2pg;

  l1 = pmap_l1(pmap, va);
  tl1 = pmap_load(l1);
  l2pg = PHYS_TO_VM_PAGE(tl1 & ~ATTR_MASK);
  pmap_unwire_l3(pmap, va, l2pg, free);
 } else if (m->pindex < (NUL2E + NUL1E)) {

  pd_entry_t *l0, tl0;
  vm_page_t l1pg;

  l0 = pmap_l0(pmap, va);
  tl0 = pmap_load(l0);
  l1pg = PHYS_TO_VM_PAGE(tl0 & ~ATTR_MASK);
  pmap_unwire_l3(pmap, va, l1pg, free);
 }
 pmap_invalidate_page(pmap, va);





 pmap_add_delayed_free_list(m, free, TRUE);
}
