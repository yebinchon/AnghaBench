
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int MPASS (int) ;
 int PG_FRAME ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int VM_PAGE_TO_PHYS (int *) ;
 int X86_PG_A ;
 int X86_PG_PS ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int pg_nx ;
 int * pmap_large_map_getptp () ;
 int* pmap_large_map_pdpe (int ) ;
 int pmap_pde_index (int ) ;

__attribute__((used)) static pd_entry_t *
pmap_large_map_pde(vm_offset_t va)
{
 pdp_entry_t *pdpe;
 vm_page_t m;
 vm_paddr_t mphys;

retry:
 pdpe = pmap_large_map_pdpe(va);
 if (*pdpe == 0) {
  m = pmap_large_map_getptp();
  if (m == ((void*)0))
   goto retry;
  mphys = VM_PAGE_TO_PHYS(m);
  *pdpe = mphys | X86_PG_A | X86_PG_RW | X86_PG_V | pg_nx;
 } else {
  MPASS((*pdpe & X86_PG_PS) == 0);
  mphys = *pdpe & PG_FRAME;
 }
 return ((pd_entry_t *)PHYS_TO_DMAP(mphys) + pmap_pde_index(va));
}
