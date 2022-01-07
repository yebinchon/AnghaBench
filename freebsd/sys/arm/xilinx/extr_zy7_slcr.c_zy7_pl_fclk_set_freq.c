
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_slcr_softc {int dummy; } ;


 int RD4 (struct zy7_slcr_softc*,int ) ;
 int WR4 (struct zy7_slcr_softc*,int ,int) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;



 int ZY7_SLCR_FPGA_CLK_CTRL (int) ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT ;
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX ;
 int arm_pll_frequency ;
 int ddr_pll_frequency ;
 int io_pll_frequency ;
 int zy7_pl_fclk_get_source (int) ;
 int zy7_slcr_lock (struct zy7_slcr_softc*) ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;
 int zy7_slcr_unlock (struct zy7_slcr_softc*) ;

int
zy7_pl_fclk_set_freq(int unit, int frequency)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
 int div0, div1;
 int base_frequency;
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




 for (div1 = 1; div1 <= ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX; div1++) {
  div0 = (base_frequency + div1 * frequency / 2) /
   div1 / frequency;
  if (div0 > 0 && div0 <= ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX &&
      ((base_frequency / div0 / div1) + 500) / 1000 ==
      (frequency + 500) / 1000)
   break;
 }

 if (div1 > ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX)
  return (-1);

 ZSLCR_LOCK(sc);


 zy7_slcr_unlock(sc);


 reg = RD4(sc, ZY7_SLCR_FPGA_CLK_CTRL(unit));
 reg &= ~(ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK |
     ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK);
 reg |= (div1 << ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT) |
     (div0 << ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT);
 WR4(sc, ZY7_SLCR_FPGA_CLK_CTRL(unit), reg);


 zy7_slcr_lock(sc);

 ZSLCR_UNLOCK(sc);

 return (base_frequency / div0 / div1);
}
