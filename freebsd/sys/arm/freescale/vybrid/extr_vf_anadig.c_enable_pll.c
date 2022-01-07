
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anadig_softc {int dummy; } ;


 int ANADIG_PLL3_CTRL ;
 int ANADIG_PLL7_CTRL ;
 int ANADIG_PLL_LOCKED ;
 int CTRL_BYPASS ;
 int CTRL_PLL_EN ;
 int CTRL_PWR ;
 int EN_USB_CLKS ;
 int READ4 (struct anadig_softc*,int) ;
 int WRITE4 (struct anadig_softc*,int,int) ;

__attribute__((used)) static int
enable_pll(struct anadig_softc *sc, int pll_ctrl)
{
 int reg;

 reg = READ4(sc, pll_ctrl);
 reg &= ~(CTRL_BYPASS | CTRL_PWR);
 if (pll_ctrl == ANADIG_PLL3_CTRL || pll_ctrl == ANADIG_PLL7_CTRL) {

  reg |= (CTRL_PWR | EN_USB_CLKS);
 }
 WRITE4(sc, pll_ctrl, reg);


 while (!(READ4(sc, pll_ctrl) & ANADIG_PLL_LOCKED))
  ;

 reg = READ4(sc, pll_ctrl);
 reg |= (CTRL_PLL_EN);
 WRITE4(sc, pll_ctrl, reg);

 return (0);
}
