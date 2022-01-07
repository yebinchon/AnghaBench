
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_slcr_softc {int dummy; } ;


 int RD4 (struct zy7_slcr_softc*,int ) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;



 int ZY7_SLCR_FPGA_CLK_CTRL (int) ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT ;
 int arm_pll_frequency ;
 int ddr_pll_frequency ;
 int io_pll_frequency ;
 int zy7_pl_fclk_get_source (int) ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;

int
zy7_pl_fclk_get_freq(int unit)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
 int div0, div1;
 int base_frequency;
 int frequency;
 uint32_t reg;
 int source;

 if (!sc)
  return (-1);

 source = zy7_pl_fclk_get_source(unit);
 switch (source) {
  case 128:
   base_frequency = io_pll_frequency;
   break;

  case 130:
   base_frequency = arm_pll_frequency;
   break;

  case 129:
   base_frequency = ddr_pll_frequency;
   break;

  default:
   return (-1);
 }

 ZSLCR_LOCK(sc);


 reg = RD4(sc, ZY7_SLCR_FPGA_CLK_CTRL(unit));
 div1 = (reg & ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK) >>
     ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT;
 div0 = (reg & ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK) >>
     ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT;

 ZSLCR_UNLOCK(sc);

 if (div0 == 0)
  div0 = 1;

 if (div1 == 0)
  div1 = 1;

 frequency = (base_frequency / div0 / div1);

 frequency = (frequency + 500) / 1000;
 frequency = frequency * 1000;

 return (frequency);
}
