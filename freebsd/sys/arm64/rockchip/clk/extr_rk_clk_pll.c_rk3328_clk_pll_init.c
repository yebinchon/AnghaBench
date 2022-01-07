
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_clk_pll_sc {int dummy; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 struct rk_clk_pll_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
rk3328_clk_pll_init(struct clknode *clk, device_t dev)
{
 struct rk_clk_pll_sc *sc;

 sc = clknode_get_softc(clk);

 clknode_init_parent_idx(clk, 0);

 return (0);
}
