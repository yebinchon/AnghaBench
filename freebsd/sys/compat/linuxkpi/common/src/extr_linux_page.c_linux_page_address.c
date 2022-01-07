
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ object; int pindex; } ;


 scalar_t__ IDX_TO_OFF (int ) ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 scalar_t__ PMAP_HAS_DMAP ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int VM_PAGE_TO_PHYS (struct page*) ;
 scalar_t__ kernel_object ;
 scalar_t__ kmem_object ;

void *
linux_page_address(struct page *page)
{

 if (page->object != kmem_object && page->object != kernel_object) {
  return (PMAP_HAS_DMAP ?
      ((void *)(uintptr_t)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(page))) :
      ((void*)0));
 }
 return ((void *)(uintptr_t)(VM_MIN_KERNEL_ADDRESS +
     IDX_TO_OFF(page->pindex)));
}
