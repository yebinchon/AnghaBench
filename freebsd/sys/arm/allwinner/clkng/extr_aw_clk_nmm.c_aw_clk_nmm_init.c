
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int dummy; } ;
struct aw_clk_nmm_sc {int dummy; } ;
typedef int device_t ;


 struct aw_clk_nmm_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
aw_clk_nmm_init(struct clknode *clk, device_t dev)
{
 struct aw_clk_nmm_sc *sc;

 sc = clknode_get_softc(clk);

 clknode_init_parent_idx(clk, 0);
 return (0);
}
