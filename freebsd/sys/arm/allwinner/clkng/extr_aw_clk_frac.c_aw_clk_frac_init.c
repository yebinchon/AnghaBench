
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clknode {int dummy; } ;
struct aw_clk_frac_sc {int flags; int mux_mask; int mux_shift; int offset; } ;
typedef int device_t ;


 int AW_CLK_HAS_MUX ;
 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int ,int*) ;
 struct aw_clk_frac_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int) ;
 int dprintf (char*,int) ;

__attribute__((used)) static int
aw_clk_frac_init(struct clknode *clk, device_t dev)
{
 struct aw_clk_frac_sc *sc;
 uint32_t val, idx;

 sc = clknode_get_softc(clk);

 idx = 0;
 if ((sc->flags & AW_CLK_HAS_MUX) != 0) {
  DEVICE_LOCK(clk);
  READ4(clk, sc->offset, &val);
  DEVICE_UNLOCK(clk);

  idx = (val & sc->mux_mask) >> sc->mux_shift;
 }

 dprintf("init parent idx %d\n", idx);
 clknode_init_parent_idx(clk, idx);
 return (0);
}
