
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_clk_armclk_sc {int mux_mask; int mux_shift; int muxdiv_offset; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int ,int*) ;
 struct rk_clk_armclk_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int) ;

__attribute__((used)) static int
rk_clk_armclk_init(struct clknode *clk, device_t dev)
{
 struct rk_clk_armclk_sc *sc;
 uint32_t val, idx;

 sc = clknode_get_softc(clk);

 idx = 0;
 DEVICE_LOCK(clk);
 READ4(clk, sc->muxdiv_offset, &val);
 DEVICE_UNLOCK(clk);

 idx = (val & sc->mux_mask) >> sc->mux_shift;

 clknode_init_parent_idx(clk, idx);

 return (0);
}
