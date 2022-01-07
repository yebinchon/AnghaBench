
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOMMU_INVALIDATE_TLB (void*) ;

void
iommu_invalidate_tlb(void *domain)
{

 IOMMU_INVALIDATE_TLB(domain);
}
