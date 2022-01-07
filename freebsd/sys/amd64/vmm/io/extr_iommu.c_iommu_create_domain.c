
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 void* IOMMU_CREATE_DOMAIN (int ) ;
 scalar_t__ atomic_cmpset_int (int volatile*,int ,int) ;
 int atomic_store_rel_int (int volatile*,int) ;
 int cpu_spinwait () ;
 int iommu_init () ;

void *
iommu_create_domain(vm_paddr_t maxaddr)
{
 static volatile int iommu_initted;

 if (iommu_initted < 2) {
  if (atomic_cmpset_int(&iommu_initted, 0, 1)) {
   iommu_init();
   atomic_store_rel_int(&iommu_initted, 2);
  } else
   while (iommu_initted == 1)
    cpu_spinwait();
 }
 return (IOMMU_CREATE_DOMAIN(maxaddr));
}
