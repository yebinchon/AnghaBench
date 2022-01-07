
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pt1_entry_t ;
typedef scalar_t__ pmap_t ;


 int ATTR_TO_L1 (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MA_OWNED ;
 int PMAP_ENTER_NORECLAIM ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (scalar_t__,int ) ;
 int PTE1 (int ,int,int ) ;
 int PTE1_NG ;
 int PTE1_NM ;
 int PTE1_NX ;
 int PTE1_RO ;
 int PTE1_U ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (int ) ;
 int VM_PROT_EXECUTE ;
 scalar_t__ kernel_pmap ;
 scalar_t__ pmap_enter_pte1 (scalar_t__,scalar_t__,int ,int,int ) ;
 int vm_page_pte2_attr (int ) ;

__attribute__((used)) static bool
pmap_enter_1mpage(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{
 pt1_entry_t pte1;
 vm_paddr_t pa;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 pa = VM_PAGE_TO_PHYS(m);
 pte1 = PTE1(pa, PTE1_NM | PTE1_RO, ATTR_TO_L1(vm_page_pte2_attr(m)));
 if ((prot & VM_PROT_EXECUTE) == 0)
  pte1 |= PTE1_NX;
 if (va < VM_MAXUSER_ADDRESS)
  pte1 |= PTE1_U;
 if (pmap != kernel_pmap)
  pte1 |= PTE1_NG;
 return (pmap_enter_pte1(pmap, va, pte1, PMAP_ENTER_NOSLEEP |
     PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, m) == KERN_SUCCESS);
}
