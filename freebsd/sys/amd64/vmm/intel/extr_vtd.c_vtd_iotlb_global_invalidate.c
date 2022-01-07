
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtdmap {int ext_cap; } ;
typedef scalar_t__ caddr_t ;


 int VTD_ECAP_IRO (int ) ;
 int volatile VTD_IIR_DRAIN_READS ;
 int volatile VTD_IIR_DRAIN_WRITES ;
 int volatile VTD_IIR_IIRG_GLOBAL ;
 int volatile VTD_IIR_IVT ;
 int vtd_wbflush (struct vtdmap*) ;

__attribute__((used)) static void
vtd_iotlb_global_invalidate(struct vtdmap *vtdmap)
{
 int offset;
 volatile uint64_t *iotlb_reg, val;

 vtd_wbflush(vtdmap);

 offset = VTD_ECAP_IRO(vtdmap->ext_cap) * 16;
 iotlb_reg = (volatile uint64_t *)((caddr_t)vtdmap + offset + 8);

 *iotlb_reg = VTD_IIR_IVT | VTD_IIR_IIRG_GLOBAL |
        VTD_IIR_DRAIN_READS | VTD_IIR_DRAIN_WRITES;

 while (1) {
  val = *iotlb_reg;
  if ((val & VTD_IIR_IVT) == 0)
   break;
 }
}
