
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int gsr; int gcr; int rta; } ;


 int VTD_GCR_SRTP ;
 int VTD_GSR_RTPS ;
 int drhd_num ;
 int root_table ;
 int vtd_ctx_global_invalidate (struct vtdmap*) ;
 int vtd_iotlb_global_invalidate (struct vtdmap*) ;
 int vtd_translation_enable (struct vtdmap*) ;
 int vtd_wbflush (struct vtdmap*) ;
 struct vtdmap** vtdmaps ;
 int vtophys (int ) ;

__attribute__((used)) static void
vtd_enable(void)
{
 int i;
 struct vtdmap *vtdmap;

 for (i = 0; i < drhd_num; i++) {
  vtdmap = vtdmaps[i];
  vtd_wbflush(vtdmap);


  vtdmap->rta = vtophys(root_table);
  vtdmap->gcr = VTD_GCR_SRTP;
  while ((vtdmap->gsr & VTD_GSR_RTPS) == 0)
   ;

  vtd_ctx_global_invalidate(vtdmap);
  vtd_iotlb_global_invalidate(vtdmap);

  vtd_translation_enable(vtdmap);
 }
}
