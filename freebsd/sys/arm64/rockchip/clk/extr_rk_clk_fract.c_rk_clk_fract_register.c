
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_clk_fract_sc {int offset; int flags; } ;
struct rk_clk_fract_def {int offset; int flags; int clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct rk_clk_fract_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int rk_clk_fract_class ;

int
rk_clk_fract_register(struct clkdom *clkdom, struct rk_clk_fract_def *clkdef)
{
 struct clknode *clk;
 struct rk_clk_fract_sc *sc;

 clk = clknode_create(clkdom, &rk_clk_fract_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->flags = clkdef->flags;
 sc->offset = clkdef->offset;

 clknode_register(clkdom, clk);
 return (0);
}
