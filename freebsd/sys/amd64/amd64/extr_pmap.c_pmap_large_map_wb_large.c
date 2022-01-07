
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_long ;


 int AMDID_PAGE1GB ;
 scalar_t__ NBPDP ;
 scalar_t__ NBPDR ;
 scalar_t__ PAGE_SIZE ;
 int X86_PG_AVAIL1 ;
 int X86_PG_M ;
 int X86_PG_PS ;
 int amd_feature ;
 int atomic_clear_long (int volatile*,int) ;
 int atomic_fcmpset_long (int volatile*,int*,int) ;
 int cpu_spinwait () ;
 int maybe_yield () ;
 int pmap_large_map_flush_range (scalar_t__,scalar_t__) ;
 scalar_t__ pmap_large_map_pde (scalar_t__) ;
 scalar_t__ pmap_large_map_pdpe (scalar_t__) ;
 scalar_t__ pmap_large_map_pte (scalar_t__) ;

__attribute__((used)) static void
pmap_large_map_wb_large(vm_offset_t sva, vm_offset_t eva)
{
 volatile u_long *pe;
 u_long p;
 vm_offset_t va;
 vm_size_t inc;
 bool seen_other;

 for (va = sva; va < eva; va += inc) {
  inc = 0;
  if ((amd_feature & AMDID_PAGE1GB) != 0) {
   pe = (volatile u_long *)pmap_large_map_pdpe(va);
   p = *pe;
   if ((p & X86_PG_PS) != 0)
    inc = NBPDP;
  }
  if (inc == 0) {
   pe = (volatile u_long *)pmap_large_map_pde(va);
   p = *pe;
   if ((p & X86_PG_PS) != 0)
    inc = NBPDR;
  }
  if (inc == 0) {
   pe = (volatile u_long *)pmap_large_map_pte(va);
   p = *pe;
   inc = PAGE_SIZE;
  }
  seen_other = 0;
  for (;;) {
   if ((p & X86_PG_AVAIL1) != 0) {




    cpu_spinwait();
    p = *pe;
    seen_other = 1;
    continue;
   }

   if ((p & X86_PG_M) != 0 || seen_other) {
    if (!atomic_fcmpset_long(pe, &p,
        (p & ~X86_PG_M) | X86_PG_AVAIL1))
     continue;
    pmap_large_map_flush_range(va, inc);
    atomic_clear_long(pe, X86_PG_AVAIL1);
   }
   break;
  }
  maybe_yield();
 }
}
