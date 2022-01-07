
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef size_t u_int ;
typedef int pd_entry_t ;


 int ATTR_UXN ;
 int KASSERT (int,char*) ;
 int L2_OFFSET ;
 scalar_t__ L2_SIZE ;
 int L2_TABLE ;
 size_t Ln_ENTRIES ;
 int Ln_TABLE_MASK ;
 int PAGE_SIZE ;
 int VM_MAX_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int memset (void*,int ,int) ;
 int pmap_early_vtophys (int,int) ;
 int * pmap_l2 (int ,int) ;
 size_t pmap_l2_index (int) ;
 int pmap_store (int *,int) ;
 scalar_t__ rounddown2 (uintptr_t,int) ;

__attribute__((used)) static vm_offset_t
pmap_bootstrap_l3(vm_offset_t l1pt, vm_offset_t va, vm_offset_t l3_start)
{
 vm_offset_t l3pt;
 vm_paddr_t pa;
 pd_entry_t *l2;
 u_int l2_slot;

 KASSERT((va & L2_OFFSET) == 0, ("Invalid virtual address"));

 l2 = pmap_l2(kernel_pmap, va);
 l2 = (pd_entry_t *)rounddown2((uintptr_t)l2, PAGE_SIZE);
 l2_slot = pmap_l2_index(va);
 l3pt = l3_start;

 for (; va < VM_MAX_KERNEL_ADDRESS; l2_slot++, va += L2_SIZE) {
  KASSERT(l2_slot < Ln_ENTRIES, ("Invalid L2 index"));

  pa = pmap_early_vtophys(l1pt, l3pt);
  pmap_store(&l2[l2_slot],
      (pa & ~Ln_TABLE_MASK) | ATTR_UXN | L2_TABLE);
  l3pt += PAGE_SIZE;
 }


 memset((void *)l3_start, 0, l3pt - l3_start);

 return l3pt;
}
