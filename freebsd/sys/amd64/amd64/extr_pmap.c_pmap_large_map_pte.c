
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;
struct TYPE_2__ {int ref_count; } ;


 int DMAP_TO_PHYS (uintptr_t) ;
 int MPASS (int) ;
 int PG_FRAME ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int VM_PAGE_TO_PHYS (int *) ;
 int X86_PG_A ;
 int X86_PG_PS ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int pg_nx ;
 int * pmap_large_map_getptp () ;
 int* pmap_large_map_pde (int ) ;
 int pmap_pte_index (int ) ;

__attribute__((used)) static pt_entry_t *
pmap_large_map_pte(vm_offset_t va)
{
 pd_entry_t *pde;
 vm_page_t m;
 vm_paddr_t mphys;

retry:
 pde = pmap_large_map_pde(va);
 if (*pde == 0) {
  m = pmap_large_map_getptp();
  if (m == ((void*)0))
   goto retry;
  mphys = VM_PAGE_TO_PHYS(m);
  *pde = mphys | X86_PG_A | X86_PG_RW | X86_PG_V | pg_nx;
  PHYS_TO_VM_PAGE(DMAP_TO_PHYS((uintptr_t)pde))->ref_count++;
 } else {
  MPASS((*pde & X86_PG_PS) == 0);
  mphys = *pde & PG_FRAME;
 }
 return ((pt_entry_t *)PHYS_TO_DMAP(mphys) + pmap_pte_index(va));
}
