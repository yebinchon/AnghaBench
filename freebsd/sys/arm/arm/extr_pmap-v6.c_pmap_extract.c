
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;
typedef int pmap_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE1_OFFSET ;
 int PTE2_OFFSET ;
 int pmap_pte1 (int ,int) ;
 int * pmap_pte2 (int ,int) ;
 int pmap_pte2_release (int *) ;
 scalar_t__ pte1_is_link (int ) ;
 scalar_t__ pte1_is_section (int ) ;
 int pte1_load (int ) ;
 int pte1_pa (int ) ;
 int pte2_load (int *) ;
 int pte2_pa (int ) ;

vm_paddr_t
pmap_extract(pmap_t pmap, vm_offset_t va)
{
 vm_paddr_t pa;
 pt1_entry_t pte1;
 pt2_entry_t *pte2p;

 PMAP_LOCK(pmap);
 pte1 = pte1_load(pmap_pte1(pmap, va));
 if (pte1_is_section(pte1))
  pa = pte1_pa(pte1) | (va & PTE1_OFFSET);
 else if (pte1_is_link(pte1)) {
  pte2p = pmap_pte2(pmap, va);
  pa = pte2_pa(pte2_load(pte2p)) | (va & PTE2_OFFSET);
  pmap_pte2_release(pte2p);
 } else
  pa = 0;
 PMAP_UNLOCK(pmap);
 return (pa);
}
