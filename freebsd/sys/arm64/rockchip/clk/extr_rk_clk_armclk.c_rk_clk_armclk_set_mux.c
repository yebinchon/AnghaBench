
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_clk_armclk_sc {int mux_shift; int mux_mask; int muxdiv_offset; } ;
struct clknode {int dummy; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int RK_ARMCLK_WRITE_MASK_SHIFT ;
 int WRITE4 (struct clknode*,int ,int) ;
 struct rk_clk_armclk_sc* clknode_get_softc (struct clknode*) ;
 int dprintf (char*,int,...) ;

__attribute__((used)) static int
rk_clk_armclk_set_mux(struct clknode *clk, int index)
{
 struct rk_clk_armclk_sc *sc;
 uint32_t val = 0;

 sc = clknode_get_softc(clk);

 dprintf("Set mux to %d\n", index);
 DEVICE_LOCK(clk);
 val |= index << sc->mux_shift;
 val |= sc->mux_mask << RK_ARMCLK_WRITE_MASK_SHIFT;
 dprintf("Write: muxdiv_offset=%x, val=%x\n", sc->muxdiv_offset, val);
 WRITE4(clk, sc->muxdiv_offset, val);
 DEVICE_UNLOCK(clk);

 return (0);
}
