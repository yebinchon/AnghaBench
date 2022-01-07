
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int KENTER_CACHE ;
 int KENTER_USER ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int kernel_pmap ;
 int pmap_fault_fixup (int ,int ,int,int) ;
 int pmap_kenter_internal (int ,int ,int) ;

void
pmap_kenter_user(vm_offset_t va, vm_paddr_t pa)
{

 pmap_kenter_internal(va, pa, KENTER_CACHE|KENTER_USER);





 pmap_fault_fixup(kernel_pmap, va, VM_PROT_READ|VM_PROT_WRITE, 1);
}
