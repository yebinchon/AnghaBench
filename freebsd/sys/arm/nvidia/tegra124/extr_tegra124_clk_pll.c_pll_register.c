
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_sc {int mnp_bits; int pdiv_table; int flags; int iddq_mask; int iddq_reg; int lock_enable; int lock_mask; int misc_reg; int base_reg; int type; int clkdev; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct clk_pll_def {int mnp_bits; int pdiv_table; int flags; int iddq_mask; int iddq_reg; int lock_enable; int lock_mask; int misc_reg; int base_reg; int type; int clkdef; } ;


 int ENXIO ;
 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 int clknode_get_device (struct clknode*) ;
 struct pll_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int tegra124_pll_class ;

__attribute__((used)) static int
pll_register(struct clkdom *clkdom, struct clk_pll_def *clkdef)
{
 struct clknode *clk;
 struct pll_sc *sc;

 clk = clknode_create(clkdom, &tegra124_pll_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (ENXIO);

 sc = clknode_get_softc(clk);
 sc->clkdev = clknode_get_device(clk);
 sc->type = clkdef->type;
 sc->base_reg = clkdef->base_reg;
 sc->misc_reg = clkdef->misc_reg;
 sc->lock_mask = clkdef->lock_mask;
 sc->lock_enable = clkdef->lock_enable;
 sc->iddq_reg = clkdef->iddq_reg;
 sc->iddq_mask = clkdef->iddq_mask;
 sc->flags = clkdef->flags;
 sc->pdiv_table = clkdef->pdiv_table;
 sc->mnp_bits = clkdef->mnp_bits;
 clknode_register(clkdom, clk);
 return (0);
}
