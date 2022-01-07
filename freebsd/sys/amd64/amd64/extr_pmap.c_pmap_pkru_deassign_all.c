
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {scalar_t__ pm_type; int pm_pkru; } ;


 int CPUID_STDEXT2_PKU ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int rangeset_remove_all (int *) ;

__attribute__((used)) static void
pmap_pkru_deassign_all(pmap_t pmap)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if (pmap->pm_type == PT_X86 &&
     (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0)
  rangeset_remove_all(&pmap->pm_pkru);
}
