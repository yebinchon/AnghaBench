
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int ccr; } ;


 int VTD_CCR_CIRG_GLOBAL ;
 int VTD_CCR_ICC ;

__attribute__((used)) static void
vtd_ctx_global_invalidate(struct vtdmap *vtdmap)
{

 vtdmap->ccr = VTD_CCR_ICC | VTD_CCR_CIRG_GLOBAL;
 while ((vtdmap->ccr & VTD_CCR_ICC) != 0)
  ;
}
