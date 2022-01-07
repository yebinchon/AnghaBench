
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int VM_PAGE_TO_PHYS (int ) ;
 int pmap_zero_page_generic (int ,int,int) ;

void
pmap_zero_page_area(vm_page_t m, int off, int size)
{

 pmap_zero_page_generic(VM_PAGE_TO_PHYS(m), off, size);
}
