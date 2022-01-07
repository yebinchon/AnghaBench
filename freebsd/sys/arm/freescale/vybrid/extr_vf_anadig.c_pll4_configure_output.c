
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct anadig_softc {int dummy; } ;


 int ANADIG_PLL4_CTRL ;
 int ANADIG_PLL4_DENOM ;
 int ANADIG_PLL4_NUM ;
 int PLL4_CTRL_DIV_SEL_M ;
 int PLL4_CTRL_DIV_SEL_S ;
 int READ4 (struct anadig_softc*,int ) ;
 int WRITE4 (struct anadig_softc*,int ,int) ;
 struct anadig_softc* anadig_sc ;

uint32_t
pll4_configure_output(uint32_t mfi, uint32_t mfn, uint32_t mfd)
{
 struct anadig_softc *sc;
 int reg;

 sc = anadig_sc;





 reg = READ4(sc, ANADIG_PLL4_CTRL);
 reg &= ~(PLL4_CTRL_DIV_SEL_M << PLL4_CTRL_DIV_SEL_S);
 reg |= (mfi << PLL4_CTRL_DIV_SEL_S);
 WRITE4(sc, ANADIG_PLL4_CTRL, reg);
 WRITE4(sc, ANADIG_PLL4_NUM, mfn);
 WRITE4(sc, ANADIG_PLL4_DENOM, mfd);

 return (0);
}
