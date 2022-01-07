
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int dummy; } ;


 int drhd_num ;
 int vtd_iotlb_global_invalidate (struct vtdmap*) ;
 struct vtdmap** vtdmaps ;

__attribute__((used)) static void
vtd_invalidate_tlb(void *dom)
{
 int i;
 struct vtdmap *vtdmap;





 for (i = 0; i < drhd_num; i++) {
  vtdmap = vtdmaps[i];
  vtd_iotlb_global_invalidate(vtdmap);
 }
}
