
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 scalar_t__ PAGE_SIZE ;
 int VM_MAXUSER_ADDRESS ;
 int VM_MEMATTR_DEFAULT ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int X86_PG_A ;
 int X86_PG_G ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int kernel_pmap ;
 int pg_nx ;
 int pmap_cache_bits (int ,int ,int ) ;
 int pmap_kextract (int ) ;
 int * pmap_pti_pde (int ) ;
 int* pmap_pti_pte (int ,int*) ;
 int pmap_pti_unwire_pde (int *,int) ;
 int pmap_pti_wire_pte (int*) ;
 int pte_store (int*,int) ;
 int pti_finalized ;
 int pti_obj ;
 int round_page (int ) ;
 int trunc_page (int ) ;

__attribute__((used)) static void
pmap_pti_add_kva_locked(vm_offset_t sva, vm_offset_t eva, bool exec)
{
 vm_paddr_t pa;
 pd_entry_t *pde;
 pt_entry_t *pte, ptev;
 bool unwire_pde;

 VM_OBJECT_ASSERT_WLOCKED(pti_obj);

 sva = trunc_page(sva);
 MPASS(sva > VM_MAXUSER_ADDRESS);
 eva = round_page(eva);
 MPASS(sva < eva);
 for (; sva < eva; sva += PAGE_SIZE) {
  pte = pmap_pti_pte(sva, &unwire_pde);
  pa = pmap_kextract(sva);
  ptev = pa | X86_PG_RW | X86_PG_V | X86_PG_A | X86_PG_G |
      (exec ? 0 : pg_nx) | pmap_cache_bits(kernel_pmap,
      VM_MEMATTR_DEFAULT, FALSE);
  if (*pte == 0) {
   pte_store(pte, ptev);
   pmap_pti_wire_pte(pte);
  } else {
   KASSERT(!pti_finalized,
       ("pti overlap after fin %#lx %#lx %#lx",
       sva, *pte, ptev));
   KASSERT(*pte == ptev,
       ("pti non-identical pte after fin %#lx %#lx %#lx",
       sva, *pte, ptev));
  }
  if (unwire_pde) {
   pde = pmap_pti_pde(sva);
   pmap_pti_unwire_pde(pde, 1);
  }
 }
}
