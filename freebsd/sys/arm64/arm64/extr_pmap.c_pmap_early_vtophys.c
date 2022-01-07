
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef size_t u_int ;
typedef int pt_entry_t ;


 int ATTR_MASK ;
 int L2_OFFSET ;
 int* pmap_early_page_idx (int,int,size_t*,size_t*) ;

__attribute__((used)) static vm_paddr_t
pmap_early_vtophys(vm_offset_t l1pt, vm_offset_t va)
{
 u_int l1_slot, l2_slot;
 pt_entry_t *l2;

 l2 = pmap_early_page_idx(l1pt, va, &l1_slot, &l2_slot);

 return ((l2[l2_slot] & ~ATTR_MASK) + (va & L2_OFFSET));
}
