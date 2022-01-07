
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct pmap_pkru_range {int pkru_keyidx; } ;
typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {scalar_t__ pm_type; int pm_pkru; } ;


 int CPUID_STDEXT2_PKU ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ PT_X86 ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int X86_PG_PKU (int ) ;
 int cpu_stdext_feature2 ;
 struct pmap_pkru_range* rangeset_lookup (int *,scalar_t__) ;

__attribute__((used)) static pt_entry_t
pmap_pkru_get(pmap_t pmap, vm_offset_t va)
{
 struct pmap_pkru_range *ppr;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if (pmap->pm_type != PT_X86 ||
     (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) == 0 ||
     va >= VM_MAXUSER_ADDRESS)
  return (0);
 ppr = rangeset_lookup(&pmap->pm_pkru, va);
 if (ppr != ((void*)0))
  return (X86_PG_PKU(ppr->pkru_keyidx));
 return (0);
}
