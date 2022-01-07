
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef size_t u_int ;
typedef int pd_entry_t ;


 int KASSERT (int,char*) ;
 int L1_OFFSET ;
 scalar_t__ L1_SIZE ;
 int L1_TABLE ;
 size_t Ln_ENTRIES ;
 int Ln_TABLE_MASK ;
 int PAGE_SIZE ;
 int VM_MAX_KERNEL_ADDRESS ;
 int memset (void*,int ,int) ;
 int pmap_early_vtophys (int,int) ;
 size_t pmap_l1_index (int) ;
 int pmap_store (int *,int) ;

__attribute__((used)) static vm_offset_t
pmap_bootstrap_l2(vm_offset_t l1pt, vm_offset_t va, vm_offset_t l2_start)
{
 vm_offset_t l2pt;
 vm_paddr_t pa;
 pd_entry_t *l1;
 u_int l1_slot;

 KASSERT((va & L1_OFFSET) == 0, ("Invalid virtual address"));

 l1 = (pd_entry_t *)l1pt;
 l1_slot = pmap_l1_index(va);
 l2pt = l2_start;

 for (; va < VM_MAX_KERNEL_ADDRESS; l1_slot++, va += L1_SIZE) {
  KASSERT(l1_slot < Ln_ENTRIES, ("Invalid L1 index"));

  pa = pmap_early_vtophys(l1pt, l2pt);
  pmap_store(&l1[l1_slot],
      (pa & ~Ln_TABLE_MASK) | L1_TABLE);
  l2pt += PAGE_SIZE;
 }


 memset((void *)l2_start, 0, l2pt - l2_start);

 return l2pt;
}
