
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int gsr; int gcr; } ;


 int VTD_GCR_TE ;
 int VTD_GSR_TES ;

__attribute__((used)) static void
vtd_translation_enable(struct vtdmap *vtdmap)
{

 vtdmap->gcr = VTD_GCR_TE;
 while ((vtdmap->gsr & VTD_GSR_TES) == 0)
  ;
}
