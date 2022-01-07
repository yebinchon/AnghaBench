
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgate_sc {int flags; int idx; int clkdev; } ;
struct pgate_def {int flags; int idx; int clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 int clknode_get_device (struct clknode*) ;
 struct pgate_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int tegra124_pgate_class ;

__attribute__((used)) static int
pgate_register(struct clkdom *clkdom, struct pgate_def *clkdef)
{
 struct clknode *clk;
 struct pgate_sc *sc;

 clk = clknode_create(clkdom, &tegra124_pgate_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->clkdev = clknode_get_device(clk);
 sc->idx = clkdef->idx;
 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);
 return (0);
}
