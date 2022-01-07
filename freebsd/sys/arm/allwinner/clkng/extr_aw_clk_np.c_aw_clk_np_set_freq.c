
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct clknode {int dummy; } ;
struct TYPE_2__ {int mask; int shift; } ;
struct aw_clk_np_sc {int flags; int lock_retries; int lock_shift; int offset; TYPE_1__ p; TYPE_1__ n; } ;


 int AW_CLK_HAS_LOCK ;
 int CLK_SET_DRYRUN ;
 int CLK_SET_ROUND_DOWN ;
 int CLK_SET_ROUND_UP ;
 int DELAY (int) ;
 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int ERANGE ;
 int READ4 (struct clknode*,int ,int*) ;
 int WRITE4 (struct clknode*,int ,int) ;
 int aw_clk_factor_get_value (TYPE_1__*,int) ;
 scalar_t__ aw_clk_np_find_best (struct aw_clk_np_sc*,scalar_t__,scalar_t__*,int*,int*) ;
 struct aw_clk_np_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
aw_clk_np_set_freq(struct clknode *clk, uint64_t fparent, uint64_t *fout,
    int flags, int *stop)
{
 struct aw_clk_np_sc *sc;
 uint64_t cur, best;
 uint32_t val, n, p, best_n, best_p;
 int retry;

 sc = clknode_get_softc(clk);

 best = cur = 0;

 best = aw_clk_np_find_best(sc, fparent, fout,
     &best_n, &best_p);

 if ((flags & CLK_SET_DRYRUN) != 0) {
  *fout = best;
  *stop = 1;
  return (0);
 }

 if ((best < *fout) &&
   ((flags & CLK_SET_ROUND_DOWN) == 0)) {
  *stop = 1;
  return (ERANGE);
 }
 if ((best > *fout) &&
   ((flags & CLK_SET_ROUND_UP) == 0)) {
  *stop = 1;
  return (ERANGE);
 }

 DEVICE_LOCK(clk);
 READ4(clk, sc->offset, &val);

 n = aw_clk_factor_get_value(&sc->n, best_n);
 p = aw_clk_factor_get_value(&sc->p, best_p);
 val &= ~sc->n.mask;
 val &= ~sc->p.mask;
 val |= n << sc->n.shift;
 val |= p << sc->p.shift;

 WRITE4(clk, sc->offset, val);
 DEVICE_UNLOCK(clk);

 if ((sc->flags & AW_CLK_HAS_LOCK) != 0) {
  for (retry = 0; retry < sc->lock_retries; retry++) {
   READ4(clk, sc->offset, &val);
   if ((val & (1 << sc->lock_shift)) != 0)
    break;
   DELAY(1000);
  }
 }

 *fout = best;
 *stop = 1;

 return (0);
}
