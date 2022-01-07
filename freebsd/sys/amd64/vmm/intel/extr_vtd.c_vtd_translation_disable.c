
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int gsr; scalar_t__ gcr; } ;


 int VTD_GSR_TES ;

__attribute__((used)) static void
vtd_translation_disable(struct vtdmap *vtdmap)
{

 vtdmap->gcr = 0;
 while ((vtdmap->gsr & VTD_GSR_TES) != 0)
  ;
}
