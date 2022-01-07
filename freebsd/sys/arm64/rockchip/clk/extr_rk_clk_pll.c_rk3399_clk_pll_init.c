
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_clk_pll_sc {scalar_t__ base_offset; scalar_t__ normal_mode; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int RK3399_CLK_PLL_MODE_MASK ;
 int RK3399_CLK_PLL_MODE_NORMAL ;
 scalar_t__ RK3399_CLK_PLL_MODE_OFFSET ;
 int RK3399_CLK_PLL_MODE_SHIFT ;
 int RK3399_CLK_PLL_WRITE_MASK ;
 int RK_CLK_PLL_MASK_SHIFT ;
 int WRITE4 (struct clknode*,scalar_t__,int) ;
 struct rk_clk_pll_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
rk3399_clk_pll_init(struct clknode *clk, device_t dev)
{
 struct rk_clk_pll_sc *sc;
 uint32_t reg;

 sc = clknode_get_softc(clk);

 if (sc->normal_mode) {

  reg = RK3399_CLK_PLL_MODE_NORMAL << RK3399_CLK_PLL_MODE_SHIFT;
  reg |= RK3399_CLK_PLL_MODE_MASK << RK_CLK_PLL_MASK_SHIFT;
  WRITE4(clk, sc->base_offset + RK3399_CLK_PLL_MODE_OFFSET,
      reg | RK3399_CLK_PLL_WRITE_MASK);
 }

 clknode_init_parent_idx(clk, 0);

 return (0);
}
