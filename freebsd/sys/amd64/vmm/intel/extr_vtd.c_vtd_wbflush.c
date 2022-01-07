
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int gsr; int gcr; int cap; int ext_cap; } ;


 scalar_t__ VTD_CAP_RWBF (int ) ;
 scalar_t__ VTD_ECAP_COHERENCY (int ) ;
 int VTD_GCR_WBF ;
 int VTD_GSR_WBFS ;
 int pmap_invalidate_cache () ;

__attribute__((used)) static void
vtd_wbflush(struct vtdmap *vtdmap)
{

 if (VTD_ECAP_COHERENCY(vtdmap->ext_cap) == 0)
  pmap_invalidate_cache();

 if (VTD_CAP_RWBF(vtdmap->cap)) {
  vtdmap->gcr = VTD_GCR_WBF;
  while ((vtdmap->gsr & VTD_GSR_WBFS) != 0)
   ;
 }
}
