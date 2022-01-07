
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_slcr_softc {int dummy; } ;


 int WR4 (struct zy7_slcr_softc*,int ,int) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;
 int ZY7_SLCR_GEM0_CLK_CTRL ;
 int ZY7_SLCR_GEM1_CLK_CTRL ;
 int ZY7_SLCR_GEM_CLK_CTRL_CLKACT ;
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX ;
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_SHIFT ;
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_MAX ;
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_SHIFT ;
 int ZY7_SLCR_GEM_CLK_CTRL_SRCSEL_IO_PLL ;
 int io_pll_frequency ;
 int zy7_slcr_lock (struct zy7_slcr_softc*) ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;
 int zy7_slcr_unlock (struct zy7_slcr_softc*) ;

int
cgem_set_ref_clk(int unit, int frequency)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
 int div0, div1;

 if (!sc)
  return (-1);




 for (div1 = 1; div1 <= ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX; div1++) {
  div0 = (io_pll_frequency + div1 * frequency / 2) /
   div1 / frequency;
  if (div0 > 0 && div0 <= ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_MAX &&
      ((io_pll_frequency / div0 / div1) + 500) / 1000 ==
      (frequency + 500) / 1000)
   break;
 }

 if (div1 > ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX)
  return (-1);

 ZSLCR_LOCK(sc);


 zy7_slcr_unlock(sc);


 WR4(sc, unit ? ZY7_SLCR_GEM1_CLK_CTRL : ZY7_SLCR_GEM0_CLK_CTRL,
     (div1 << ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_SHIFT) |
     (div0 << ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_SHIFT) |
     ZY7_SLCR_GEM_CLK_CTRL_SRCSEL_IO_PLL |
     ZY7_SLCR_GEM_CLK_CTRL_CLKACT);


 zy7_slcr_lock(sc);

 ZSLCR_UNLOCK(sc);

 return (0);
}
