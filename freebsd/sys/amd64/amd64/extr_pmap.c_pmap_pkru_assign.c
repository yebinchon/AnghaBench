
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_int ;
struct pmap_pkru_range {int pkru_flags; int pkru_keyidx; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {scalar_t__ pm_type; int pm_pkru; } ;


 int AMD64_PKRU_EXCL ;
 int AMD64_PKRU_PERSIST ;
 int CPUID_STDEXT2_PKU ;
 int EBUSY ;
 int ENOMEM ;
 int MA_OWNED ;
 int MPASS (int) ;
 int M_NOWAIT ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int pmap_pkru_ranges_zone ;
 int rangeset_check_empty (int *,int ,int ) ;
 int rangeset_insert (int *,int ,int ,struct pmap_pkru_range*) ;
 struct pmap_pkru_range* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct pmap_pkru_range*) ;

__attribute__((used)) static int
pmap_pkru_assign(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, u_int keyidx,
    int flags)
{
 struct pmap_pkru_range *ppr;
 int error;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 MPASS(pmap->pm_type == PT_X86);
 MPASS((cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0);
 if ((flags & AMD64_PKRU_EXCL) != 0 &&
     !rangeset_check_empty(&pmap->pm_pkru, sva, eva))
  return (EBUSY);
 ppr = uma_zalloc(pmap_pkru_ranges_zone, M_NOWAIT);
 if (ppr == ((void*)0))
  return (ENOMEM);
 ppr->pkru_keyidx = keyidx;
 ppr->pkru_flags = flags & AMD64_PKRU_PERSIST;
 error = rangeset_insert(&pmap->pm_pkru, sva, eva, ppr);
 if (error != 0)
  uma_zfree(pmap_pkru_ranges_zone, ppr);
 return (error);
}
