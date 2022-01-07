
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {scalar_t__ pm_type; int pm_pkru; int * pm_pml4u; scalar_t__* pm_pml4; int pm_active; int pm_root; TYPE_1__ pm_stats; } ;


 int CPUID_STDEXT2_PKU ;
 int CPU_EMPTY (int *) ;
 int DMAP_TO_PHYS (int ) ;
 int DMPML4I ;
 int KASSERT (int,char*) ;
 int KPML4BASE ;
 int LMSPML4I ;
 int NKPML4E ;
 int PHYS_TO_VM_PAGE (int ) ;
 size_t PML4PML4I ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int lm_ents ;
 int ndmpdpphys ;
 int rangeset_fini (int *) ;
 int vm_page_free (int ) ;
 int vm_page_free_zero (int ) ;
 int vm_page_unwire_noq (int ) ;
 int vm_radix_is_empty (int *) ;

void
pmap_release(pmap_t pmap)
{
 vm_page_t m;
 int i;

 KASSERT(pmap->pm_stats.resident_count == 0,
     ("pmap_release: pmap resident count %ld != 0",
     pmap->pm_stats.resident_count));
 KASSERT(vm_radix_is_empty(&pmap->pm_root),
     ("pmap_release: pmap has reserved page table page(s)"));
 KASSERT(CPU_EMPTY(&pmap->pm_active),
     ("releasing active pmap %p", pmap));

 m = PHYS_TO_VM_PAGE(DMAP_TO_PHYS((vm_offset_t)pmap->pm_pml4));

 for (i = 0; i < NKPML4E; i++)
  pmap->pm_pml4[KPML4BASE + i] = 0;
 for (i = 0; i < ndmpdpphys; i++)
  pmap->pm_pml4[DMPML4I + i] = 0;
 pmap->pm_pml4[PML4PML4I] = 0;
 for (i = 0; i < lm_ents; i++)
  pmap->pm_pml4[LMSPML4I + i] = 0;

 vm_page_unwire_noq(m);
 vm_page_free_zero(m);

 if (pmap->pm_pml4u != ((void*)0)) {
  m = PHYS_TO_VM_PAGE(DMAP_TO_PHYS((vm_offset_t)pmap->pm_pml4u));
  vm_page_unwire_noq(m);
  vm_page_free(m);
 }
 if (pmap->pm_type == PT_X86 &&
     (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0)
  rangeset_fini(&pmap->pm_pkru);
}
