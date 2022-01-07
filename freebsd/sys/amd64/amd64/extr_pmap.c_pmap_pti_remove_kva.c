
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_long ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 int MPASS (int) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int X86_PG_V ;
 int kernel_pmap ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;
 int* pmap_pti_pte (scalar_t__,int *) ;
 int pmap_pti_unwire_pte (int*,scalar_t__) ;
 int pte_clear (int*) ;
 int pti ;
 int pti_obj ;
 scalar_t__ rounddown2 (scalar_t__,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,scalar_t__) ;

void
pmap_pti_remove_kva(vm_offset_t sva, vm_offset_t eva)
{
 pt_entry_t *pte;
 vm_offset_t va;

 if (!pti)
  return;
 sva = rounddown2(sva, PAGE_SIZE);
 MPASS(sva > VM_MAXUSER_ADDRESS);
 eva = roundup2(eva, PAGE_SIZE);
 MPASS(sva < eva);
 VM_OBJECT_WLOCK(pti_obj);
 for (va = sva; va < eva; va += PAGE_SIZE) {
  pte = pmap_pti_pte(va, ((void*)0));
  KASSERT((*pte & X86_PG_V) != 0,
      ("invalid pte va %#lx pte %#lx pt %#lx", va,
      (u_long)pte, *pte));
  pte_clear(pte);
  pmap_pti_unwire_pte(pte, va);
 }
 pmap_invalidate_range(kernel_pmap, sva, eva);
 VM_OBJECT_WUNLOCK(pti_obj);
}
