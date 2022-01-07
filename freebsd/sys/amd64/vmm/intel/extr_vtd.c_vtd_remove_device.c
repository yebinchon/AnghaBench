
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct vtdmap {int dummy; } ;


 size_t PCI_RID2BUS (int ) ;
 int VTD_RID2IDX (int ) ;
 scalar_t__** ctx_tables ;
 int drhd_num ;
 int vtd_ctx_global_invalidate (struct vtdmap*) ;
 int vtd_iotlb_global_invalidate (struct vtdmap*) ;
 struct vtdmap** vtdmaps ;

__attribute__((used)) static void
vtd_remove_device(void *arg, uint16_t rid)
{
 int i, idx;
 uint64_t *ctxp;
 struct vtdmap *vtdmap;
 uint8_t bus;

 bus = PCI_RID2BUS(rid);
 ctxp = ctx_tables[bus];
 idx = VTD_RID2IDX(rid);




 ctxp[idx] = 0;
 ctxp[idx + 1] = 0;







 for (i = 0; i < drhd_num; i++) {
  vtdmap = vtdmaps[i];
  vtd_ctx_global_invalidate(vtdmap);
  vtd_iotlb_global_invalidate(vtdmap);
 }
}
