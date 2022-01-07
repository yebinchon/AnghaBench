
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {scalar_t__ pm_type; int pm_pkru; } ;


 int CPUID_STDEXT2_PKU ;
 int MA_OWNED ;
 int MPASS (int) ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int rangeset_remove (int *,int ,int ) ;

__attribute__((used)) static int
pmap_pkru_deassign(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 MPASS(pmap->pm_type == PT_X86);
 MPASS((cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0);
 return (rangeset_remove(&pmap->pm_pkru, sva, eva));
}
