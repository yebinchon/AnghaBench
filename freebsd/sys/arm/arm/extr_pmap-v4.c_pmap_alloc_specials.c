
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct l2_bucket {int * l2b_kva; } ;
typedef int pt_entry_t ;


 int PAGE_SIZE ;
 int kernel_pmap ;
 size_t l2pte_index (scalar_t__) ;
 int panic (char*,scalar_t__) ;
 struct l2_bucket* pmap_get_l2_bucket (int ,scalar_t__) ;

__attribute__((used)) static void
pmap_alloc_specials(vm_offset_t *availp, int pages, vm_offset_t *vap,
    pt_entry_t **ptep)
{
 vm_offset_t va = *availp;
 struct l2_bucket *l2b;

 if (ptep) {
  l2b = pmap_get_l2_bucket(kernel_pmap, va);
  if (l2b == ((void*)0))
   panic("pmap_alloc_specials: no l2b for 0x%x", va);

  *ptep = &l2b->l2b_kva[l2pte_index(va)];
 }

 *vap = va;
 *availp = va + (PAGE_SIZE * pages);
}
