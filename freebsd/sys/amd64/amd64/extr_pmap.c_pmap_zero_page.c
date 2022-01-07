
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;


 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int pagezero (void*) ;

void
pmap_zero_page(vm_page_t m)
{
 vm_offset_t va = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(m));

 pagezero((void *)va);
}
