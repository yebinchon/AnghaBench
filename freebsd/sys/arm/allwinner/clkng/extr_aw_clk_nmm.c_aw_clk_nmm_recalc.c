
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct clknode {int dummy; } ;
struct aw_clk_nmm_sc {int m1; int m0; int n; int offset; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int ,int*) ;
 int aw_clk_get_factor (int,int *) ;
 struct aw_clk_nmm_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
aw_clk_nmm_recalc(struct clknode *clk, uint64_t *freq)
{
 struct aw_clk_nmm_sc *sc;
 uint32_t val, n, m0, m1;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(clk);
 READ4(clk, sc->offset, &val);
 DEVICE_UNLOCK(clk);

 n = aw_clk_get_factor(val, &sc->n);
 m0 = aw_clk_get_factor(val, &sc->m0);
 m1 = aw_clk_get_factor(val, &sc->m1);

 *freq = *freq * n / m0 / m1;

 return (0);
}
