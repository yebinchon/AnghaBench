
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_mux_sc {int flags; int src_div2; int src_pllx; int base_reg; int clkdev; } ;
struct super_mux_def {int flags; int src_div2; int src_pllx; int base_reg; int clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 int clknode_get_device (struct clknode*) ;
 struct super_mux_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int tegra124_super_mux_class ;

__attribute__((used)) static int
super_mux_register(struct clkdom *clkdom, struct super_mux_def *clkdef)
{
 struct clknode *clk;
 struct super_mux_sc *sc;

 clk = clknode_create(clkdom, &tegra124_super_mux_class,
     &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->clkdev = clknode_get_device(clk);
 sc->base_reg = clkdef->base_reg;
 sc->src_pllx = clkdef->src_pllx;
 sc->src_div2 = clkdef->src_div2;
 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);
 return (0);
}
