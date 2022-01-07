
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_5__ {scalar_t__ re_end; } ;
struct pmap_pkru_range {scalar_t__ pkru_keyidx; TYPE_1__ pkru_rs_el; } ;
typedef TYPE_2__* pmap_t ;
struct TYPE_6__ {scalar_t__ pm_type; int pm_pkru; } ;


 int CPUID_STDEXT2_PKU ;
 int MA_OWNED ;
 int MPASS (int) ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 scalar_t__ PT_X86 ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int cpu_stdext_feature2 ;
 struct pmap_pkru_range* rangeset_lookup (int *,scalar_t__) ;

__attribute__((used)) static bool
pmap_pkru_same(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 struct pmap_pkru_range *ppr, *prev_ppr;
 vm_offset_t va;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if (pmap->pm_type != PT_X86 ||
     (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) == 0 ||
     sva >= VM_MAXUSER_ADDRESS)
  return (1);
 MPASS(eva <= VM_MAXUSER_ADDRESS);
 for (va = sva, prev_ppr = ((void*)0); va < eva;) {
  ppr = rangeset_lookup(&pmap->pm_pkru, va);
  if ((ppr == ((void*)0)) ^ (prev_ppr == ((void*)0)))
   return (0);
  if (ppr == ((void*)0)) {
   va += PAGE_SIZE;
   continue;
  }
  if (prev_ppr->pkru_keyidx != ppr->pkru_keyidx)
   return (0);
  va = ppr->pkru_rs_el.re_end;
 }
 return (1);
}
