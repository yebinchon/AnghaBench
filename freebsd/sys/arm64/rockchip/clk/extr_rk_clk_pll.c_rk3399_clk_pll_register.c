
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_clk_pll_sc {int normal_mode; int frac_rates; int rates; int flags; int gate_shift; int gate_offset; int base_offset; } ;
struct rk_clk_pll_def {int normal_mode; int frac_rates; int rates; int flags; int gate_shift; int gate_offset; int base_offset; int clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct rk_clk_pll_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int rk3399_clk_pll_clknode_class ;

int
rk3399_clk_pll_register(struct clkdom *clkdom, struct rk_clk_pll_def *clkdef)
{
 struct clknode *clk;
 struct rk_clk_pll_sc *sc;

 clk = clknode_create(clkdom, &rk3399_clk_pll_clknode_class,
     &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);

 sc->base_offset = clkdef->base_offset;
 sc->gate_offset = clkdef->gate_offset;
 sc->gate_shift = clkdef->gate_shift;
 sc->flags = clkdef->flags;
 sc->rates = clkdef->rates;
 sc->frac_rates = clkdef->frac_rates;
 sc->normal_mode = clkdef->normal_mode;

 clknode_register(clkdom, clk);

 return (0);
}
