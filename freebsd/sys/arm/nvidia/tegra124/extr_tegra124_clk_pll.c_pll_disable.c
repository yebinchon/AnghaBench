
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pll_sc {scalar_t__ type; int base_reg; } ;


 int PLL_BASE_BYPASS ;
 int PLL_BASE_ENABLE ;
 scalar_t__ PLL_E ;
 int RD4 (struct pll_sc*,int ,int *) ;
 int WR4 (struct pll_sc*,int ,int ) ;

__attribute__((used)) static int
pll_disable(struct pll_sc *sc)
{
 uint32_t reg;

 RD4(sc, sc->base_reg, &reg);
 if (sc->type != PLL_E)
  reg |= PLL_BASE_BYPASS;
 reg &= ~PLL_BASE_ENABLE;
 WR4(sc, sc->base_reg, reg);
 return (0);
}
