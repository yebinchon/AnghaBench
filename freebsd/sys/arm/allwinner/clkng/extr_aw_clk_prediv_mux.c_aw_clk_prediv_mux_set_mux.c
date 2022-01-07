
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clknode {int dummy; } ;
struct aw_clk_prediv_mux_sc {int mux_mask; int mux_shift; int offset; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int ,int*) ;
 int WRITE4 (struct clknode*,int ,int) ;
 struct aw_clk_prediv_mux_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
aw_clk_prediv_mux_set_mux(struct clknode *clk, int index)
{
 struct aw_clk_prediv_mux_sc *sc;
 uint32_t val;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(clk);
 READ4(clk, sc->offset, &val);
 val &= ~sc->mux_mask;
 val |= index << sc->mux_shift;
 WRITE4(clk, sc->offset, val);
 DEVICE_UNLOCK(clk);

 return (0);
}
