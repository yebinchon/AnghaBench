
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct clknode {int dummy; } ;
struct TYPE_2__ {int mode_sel; int freq_sel; int freq1; int freq0; } ;
struct aw_clk_frac_sc {int n; int m; TYPE_1__ frac; int offset; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int READ4 (struct clknode*,int ,int*) ;
 int aw_clk_get_factor (int,int *) ;
 struct aw_clk_frac_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
aw_clk_frac_recalc(struct clknode *clk, uint64_t *freq)
{
 struct aw_clk_frac_sc *sc;
 uint32_t val, m, n;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(clk);
 READ4(clk, sc->offset, &val);
 DEVICE_UNLOCK(clk);

 if ((val & sc->frac.mode_sel) == 0) {
  if (val & sc->frac.freq_sel)
   *freq = sc->frac.freq1;
  else
   *freq = sc->frac.freq0;
 } else {
  m = aw_clk_get_factor(val, &sc->m);
  n = aw_clk_get_factor(val, &sc->n);
  *freq = *freq * n / m;
 }

 return (0);
}
