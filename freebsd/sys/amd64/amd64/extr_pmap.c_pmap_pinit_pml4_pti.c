
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int pml4_entry_t ;


 int NPML4EPG ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int * pti_pml4 ;

__attribute__((used)) static void
pmap_pinit_pml4_pti(vm_page_t pml4pg)
{
 pml4_entry_t *pm_pml4;
 int i;

 pm_pml4 = (pml4_entry_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pml4pg));
 for (i = 0; i < NPML4EPG; i++)
  pm_pml4[i] = pti_pml4[i];
}
