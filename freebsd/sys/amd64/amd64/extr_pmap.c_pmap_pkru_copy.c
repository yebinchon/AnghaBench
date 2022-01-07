
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_8__ {int * rs_data_ctx; } ;
struct TYPE_7__ {scalar_t__ pm_type; TYPE_2__ pm_pkru; } ;


 int CPUID_STDEXT2_PKU ;
 int MA_OWNED ;
 int MPASS (int) ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int rangeset_copy (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int
pmap_pkru_copy(pmap_t dst_pmap, pmap_t src_pmap)
{

 PMAP_LOCK_ASSERT(dst_pmap, MA_OWNED);
 PMAP_LOCK_ASSERT(src_pmap, MA_OWNED);
 MPASS(dst_pmap->pm_type == PT_X86);
 MPASS(src_pmap->pm_type == PT_X86);
 MPASS((cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0);
 if (src_pmap->pm_pkru.rs_data_ctx == ((void*)0))
  return (0);
 return (rangeset_copy(&dst_pmap->pm_pkru, &src_pmap->pm_pkru));
}
