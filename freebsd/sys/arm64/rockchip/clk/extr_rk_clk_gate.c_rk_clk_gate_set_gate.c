
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_clk_gate_sc {int ungated; int mask; int shift; int on_value; int off_value; int offset; } ;
struct clknode {int dummy; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int MD4 (struct clknode*,int ,int,int) ;
 int RD4 (struct clknode*,int ,int *) ;
 int RK_CLK_GATE_MASK ;
 struct rk_clk_gate_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
rk_clk_gate_set_gate(struct clknode *clk, bool enable)
{
 uint32_t reg;
 struct rk_clk_gate_sc *sc;
 int rv;

 sc = clknode_get_softc(clk);
 sc->ungated = enable;
 DEVICE_LOCK(clk);
 rv = MD4(clk, sc->offset, sc->mask << sc->shift,
     ((sc->ungated ? sc->on_value : sc->off_value) << sc->shift) |
     RK_CLK_GATE_MASK);
 if (rv != 0) {
  DEVICE_UNLOCK(clk);
  return (rv);
 }
 RD4(clk, sc->offset, &reg);
 DEVICE_UNLOCK(clk);
 return(0);
}
