
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int pmap_zero_page_generic (int ,int ,int ) ;

void
pmap_zero_page(vm_page_t m)
{
 pmap_zero_page_generic(VM_PAGE_TO_PHYS(m), 0, PAGE_SIZE);
}
