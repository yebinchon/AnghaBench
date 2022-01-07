
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;


 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int pagecopy (void*,void*) ;

void
pmap_copy_page(vm_page_t msrc, vm_page_t mdst)
{
 vm_offset_t src = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(msrc));
 vm_offset_t dst = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(mdst));

 pagecopy((void *)src, (void *)dst);
}
