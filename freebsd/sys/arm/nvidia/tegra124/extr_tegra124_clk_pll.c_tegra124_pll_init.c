
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pll_sc {int lock_enable; scalar_t__ type; int misc_reg; int base_reg; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int PLL_BASE_ENABLE ;
 scalar_t__ PLL_REFE ;
 int RD4 (struct pll_sc*,int ,int*) ;
 int WR4 (struct pll_sc*,int ,int) ;
 struct pll_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
tegra124_pll_init(struct clknode *clk, device_t dev)
{
 struct pll_sc *sc;
 uint32_t reg;

 sc = clknode_get_softc(clk);


 RD4(sc, sc->base_reg, &reg);
 if (reg & PLL_BASE_ENABLE) {
  RD4(sc, sc->misc_reg, &reg);
  reg |= sc->lock_enable;
  WR4(sc, sc->misc_reg, reg);
 }
 if (sc->type == PLL_REFE) {
  RD4(sc, sc->misc_reg, &reg);
  reg &= ~(1 << 29);
  WR4(sc, sc->misc_reg, reg);
 }

 clknode_init_parent_idx(clk, 0);
 return(0);
}
