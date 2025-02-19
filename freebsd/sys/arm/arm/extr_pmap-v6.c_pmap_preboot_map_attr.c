
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int vm_memattr_t ;
typedef scalar_t__ u_int ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;


 scalar_t__ ATTR_TO_L1 (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int PTE1_KERN (int,scalar_t__,scalar_t__) ;
 int PTE1_OFFSET ;
 scalar_t__ PTE1_SIZE ;
 scalar_t__ PTE2_AP_KR ;
 scalar_t__ PTE2_AP_KRW ;
 int PTE2_KERN (int,scalar_t__,scalar_t__) ;
 scalar_t__ PTE2_NX ;
 scalar_t__ PTE2_X ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_WRITE ;
 int * kern_pte1 (int) ;
 int * pmap_preboot_vtopte2 (int) ;
 int pte1_store (int *,int ) ;
 int pte2_store (int *,int ) ;
 scalar_t__ round_page (int ) ;
 scalar_t__ vm_memattr_to_pte2 (int ) ;

void
pmap_preboot_map_attr(vm_paddr_t pa, vm_offset_t va, vm_size_t size,
    vm_prot_t prot, vm_memattr_t attr)
{
 u_int num;
 u_int l1_attr, l1_prot, l2_prot, l2_attr;
 pt1_entry_t *pte1p;
 pt2_entry_t *pte2p;

 l2_prot = prot & VM_PROT_WRITE ? PTE2_AP_KRW : PTE2_AP_KR;
 l2_prot |= (prot & VM_PROT_EXECUTE) ? PTE2_X : PTE2_NX;
 l2_attr = vm_memattr_to_pte2(attr);
 l1_prot = ATTR_TO_L1(l2_prot);
 l1_attr = ATTR_TO_L1(l2_attr);


 num = round_page(size);
 while (num > 0) {
  if ((((va | pa) & PTE1_OFFSET) == 0) && (num >= PTE1_SIZE)) {
   pte1p = kern_pte1(va);
   pte1_store(pte1p, PTE1_KERN(pa, l1_prot, l1_attr));
   va += PTE1_SIZE;
   pa += PTE1_SIZE;
   num -= PTE1_SIZE;
  } else {
   pte2p = pmap_preboot_vtopte2(va);
   pte2_store(pte2p, PTE2_KERN(pa, l2_prot, l2_attr));
   va += PAGE_SIZE;
   pa += PAGE_SIZE;
   num -= PAGE_SIZE;
  }
 }
}
