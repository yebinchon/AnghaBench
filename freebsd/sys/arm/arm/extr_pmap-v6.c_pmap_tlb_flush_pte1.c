
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt1_entry_t ;
typedef int pmap_t ;


 int PTE1_SIZE ;
 int pmap_tlb_flush (int ,int ) ;
 int pmap_tlb_flush_range (int ,int ,int ) ;
 scalar_t__ pte1_is_section (int ) ;
 int pte1_trunc (int ) ;

__attribute__((used)) static inline void
pmap_tlb_flush_pte1(pmap_t pmap, vm_offset_t va, pt1_entry_t npte1)
{


 if (pte1_is_section(npte1))
  pmap_tlb_flush_range(pmap, pte1_trunc(va), PTE1_SIZE);
 else
  pmap_tlb_flush(pmap, pte1_trunc(va));
}
