
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_clk_armclk_sc {int mux_shift; int mux_width; int mux_mask; int div_shift; int div_width; int div_mask; int nrates; int rates; int alt_parent; int main_parent; int flags; int muxdiv_offset; } ;
struct rk_clk_armclk_def {int mux_shift; int mux_width; int div_shift; int div_width; int nrates; int rates; int alt_parent; int main_parent; int flags; int muxdiv_offset; int clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct rk_clk_armclk_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int rk_clk_armclk_clknode_class ;

int
rk_clk_armclk_register(struct clkdom *clkdom, struct rk_clk_armclk_def *clkdef)
{
 struct clknode *clk;
 struct rk_clk_armclk_sc *sc;

 clk = clknode_create(clkdom, &rk_clk_armclk_clknode_class,
     &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);

 sc->muxdiv_offset = clkdef->muxdiv_offset;

 sc->mux_shift = clkdef->mux_shift;
 sc->mux_width = clkdef->mux_width;
 sc->mux_mask = ((1 << clkdef->mux_width) - 1) << sc->mux_shift;

 sc->div_shift = clkdef->div_shift;
 sc->div_width = clkdef->div_width;
 sc->div_mask = ((1 << clkdef->div_width) - 1) << sc->div_shift;

 sc->flags = clkdef->flags;

 sc->main_parent = clkdef->main_parent;
 sc->alt_parent = clkdef->alt_parent;

 sc->rates = clkdef->rates;
 sc->nrates = clkdef->nrates;

 clknode_register(clkdom, clk);

 return (0);
}
