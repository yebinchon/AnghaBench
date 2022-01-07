
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int pml4_entry_t ;
struct TYPE_2__ {int* pm_pml4; } ;


 int DMPDPphys ;
 int DMPML4I ;
 int KPDPphys ;
 int KPML4BASE ;
 int LMSPML4I ;
 int NKPML4E ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 size_t PML4PML4I ;
 int VM_PAGE_TO_PHYS (int ) ;
 int X86_PG_A ;
 int X86_PG_M ;
 int X86_PG_RW ;
 int X86_PG_V ;
 TYPE_1__* kernel_pmap ;
 int lm_ents ;
 int ndmpdpphys ;
 int ptoa (int) ;

void
pmap_pinit_pml4(vm_page_t pml4pg)
{
 pml4_entry_t *pm_pml4;
 int i;

 pm_pml4 = (pml4_entry_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pml4pg));


 for (i = 0; i < NKPML4E; i++) {
  pm_pml4[KPML4BASE + i] = (KPDPphys + ptoa(i)) | X86_PG_RW |
      X86_PG_V;
 }
 for (i = 0; i < ndmpdpphys; i++) {
  pm_pml4[DMPML4I + i] = (DMPDPphys + ptoa(i)) | X86_PG_RW |
      X86_PG_V;
 }


 pm_pml4[PML4PML4I] = VM_PAGE_TO_PHYS(pml4pg) | X86_PG_V | X86_PG_RW |
     X86_PG_A | X86_PG_M;


 for (i = 0; i < lm_ents; i++)
  pm_pml4[LMSPML4I + i] = kernel_pmap->pm_pml4[LMSPML4I + i];
}
