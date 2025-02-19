
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef scalar_t__ u_int ;
typedef int pt2_entry_t ;


 int PAGE_SIZE ;
 int PTE2_AP_KRW ;
 int PTE2_KERN (scalar_t__,int ,scalar_t__) ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ __predict_false (scalar_t__) ;
 int * pt2map_entry (int ) ;
 scalar_t__ pte2_attr (int ) ;
 int pte2_load (int *) ;
 scalar_t__ pte2_pa (int ) ;
 int pte2_store (int *,int ) ;
 int tlb_flush_range (int ,int) ;
 scalar_t__ vm_page_pte2_attr (int ) ;

void
pmap_qenter(vm_offset_t sva, vm_page_t *ma, int count)
{
 u_int anychanged;
 pt2_entry_t *epte2p, *pte2p, pte2;
 vm_page_t m;
 vm_paddr_t pa;

 anychanged = 0;
 pte2p = pt2map_entry(sva);
 epte2p = pte2p + count;
 while (pte2p < epte2p) {
  m = *ma++;
  pa = VM_PAGE_TO_PHYS(m);
  pte2 = pte2_load(pte2p);
  if ((pte2_pa(pte2) != pa) ||
      (pte2_attr(pte2) != vm_page_pte2_attr(m))) {
   anychanged++;
   pte2_store(pte2p, PTE2_KERN(pa, PTE2_AP_KRW,
       vm_page_pte2_attr(m)));
  }
  pte2p++;
 }
 if (__predict_false(anychanged))
  tlb_flush_range(sva, count * PAGE_SIZE);
}
