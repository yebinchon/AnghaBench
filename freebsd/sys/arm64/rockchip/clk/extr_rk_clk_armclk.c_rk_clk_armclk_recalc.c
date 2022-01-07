
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct rk_clk_armclk_sc {int muxdiv_offset; int div_mask; int div_shift; } ;
struct clknode {int dummy; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int,int*) ;
 struct rk_clk_armclk_sc* clknode_get_softc (struct clknode*) ;
 int dprintf (char*,int,int) ;

__attribute__((used)) static int
rk_clk_armclk_recalc(struct clknode *clk, uint64_t *freq)
{
 struct rk_clk_armclk_sc *sc;
 uint32_t reg, div;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(clk);

 READ4(clk, sc->muxdiv_offset, &reg);
 dprintf("Read: muxdiv_offset=%x, val=%x\n", sc->muxdiv_offset, reg);

 DEVICE_UNLOCK(clk);

 div = ((reg & sc->div_mask) >> sc->div_shift) + 1;
 dprintf("parent_freq=%ju, div=%u\n", *freq, div);

 *freq = *freq / div;

 return (0);
}
