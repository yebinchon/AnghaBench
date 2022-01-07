
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct clknode {int dummy; } ;
struct aw_clk_nm_sc {int flags; int prediv; int n; int m; int offset; } ;


 int AW_CLK_HAS_PREDIV ;
 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int ,int*) ;
 int aw_clk_get_factor (int,int *) ;
 struct aw_clk_nm_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
aw_clk_nm_recalc(struct clknode *clk, uint64_t *freq)
{
 struct aw_clk_nm_sc *sc;
 uint32_t val, m, n, prediv;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(clk);
 READ4(clk, sc->offset, &val);
 DEVICE_UNLOCK(clk);

 m = aw_clk_get_factor(val, &sc->m);
 n = aw_clk_get_factor(val, &sc->n);
 if (sc->flags & AW_CLK_HAS_PREDIV)
  prediv = aw_clk_get_factor(val, &sc->prediv);
 else
  prediv = 1;

 *freq = *freq / prediv / n / m;

 return (0);
}
