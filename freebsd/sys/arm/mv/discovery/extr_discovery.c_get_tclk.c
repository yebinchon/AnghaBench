
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MV_MPP_BASE ;
 int SAMPLE_AT_RESET_HI ;
 int TCLK_166MHZ ;
 int TCLK_200MHZ ;
 int TCLK_MASK ;
 int TCLK_SHIFT ;
 int bus_space_read_4 (int ,int ,int ) ;
 int fdtbus_bs_tag ;
 int panic (char*) ;

uint32_t
get_tclk(void)
{
 uint32_t sar;





 sar = bus_space_read_4(fdtbus_bs_tag, MV_MPP_BASE, SAMPLE_AT_RESET_HI);
 sar = (sar & TCLK_MASK) >> TCLK_SHIFT;

 switch (sar) {
 case 0:
  return (TCLK_166MHZ);
 case 1:
  return (TCLK_200MHZ);
 default:
  panic("Unknown TCLK settings!");
 }
}
