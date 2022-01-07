
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
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int pred_pkru_on_remove ;
 int rangeset_remove_pred (int *,int ,int ,int ) ;

__attribute__((used)) static void
pmap_pkru_on_remove(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if (pmap->pm_type == PT_X86 &&
     (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0) {
  rangeset_remove_pred(&pmap->pm_pkru, sva, eva,
      pred_pkru_on_remove);
 }
}
