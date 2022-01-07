
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;


 int ATTR_TO_L2 (int ) ;
 int PTE1_OFFSET ;
 int PTE2_V ;
 int kern_pte1 (int) ;
 int pt2map_entry (int) ;
 scalar_t__ pte1_is_link (int ) ;
 scalar_t__ pte1_is_section (int ) ;
 int pte1_load (int ) ;
 int pte1_pa (int ) ;
 int pte2_load (int ) ;
 int pte2_pa (int) ;

vm_paddr_t
pmap_dump_kextract(vm_offset_t va, pt2_entry_t *pte2p)
{
 vm_paddr_t pa;
 pt1_entry_t pte1;
 pt2_entry_t pte2;

 pte1 = pte1_load(kern_pte1(va));
 if (pte1_is_section(pte1)) {
  pa = pte1_pa(pte1) | (va & PTE1_OFFSET);
  pte2 = pa | ATTR_TO_L2(pte1) | PTE2_V;
 } else if (pte1_is_link(pte1)) {
  pte2 = pte2_load(pt2map_entry(va));
  pa = pte2_pa(pte2);
 } else {
  pte2 = 0;
  pa = 0;
 }
 if (pte2p != ((void*)0))
  *pte2p = pte2;
 return (pa);
}
