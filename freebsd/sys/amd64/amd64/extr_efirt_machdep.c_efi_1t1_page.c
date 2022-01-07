
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int efi_1t1_idx ;
 int obj_1t1_pt ;
 int vm_page_grab (int ,int ,int) ;

__attribute__((used)) static vm_page_t
efi_1t1_page(void)
{

 return (vm_page_grab(obj_1t1_pt, efi_1t1_idx++, VM_ALLOC_NOBUSY |
     VM_ALLOC_WIRED | VM_ALLOC_ZERO));
}
