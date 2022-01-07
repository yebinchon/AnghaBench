
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct aw_clk_frac_sc {int min_freq; int max_freq; int m; int n; } ;


 scalar_t__ abs (int) ;
 int aw_clk_factor_get_max (int *) ;
 int aw_clk_factor_get_min (int *) ;

__attribute__((used)) static uint64_t
aw_clk_frac_find_best(struct aw_clk_frac_sc *sc, uint64_t fparent, uint64_t fout,
    uint32_t *factor_n, uint32_t *factor_m)
{
 uint64_t cur, best;
 uint32_t m, n, max_m, max_n, min_m, min_n;

 *factor_n = *factor_m = 0;
 best = cur = 0;

 max_m = aw_clk_factor_get_max(&sc->m);
 max_n = aw_clk_factor_get_max(&sc->n);
 min_m = aw_clk_factor_get_min(&sc->m);
 min_n = sc->min_freq / fparent;

 for (n = min_n; n <= max_n; n++) {
  for (m = min_m; m <= max_m; m++) {
   cur = fparent * n / m;
   if (cur < sc->min_freq) {
    continue;
   }
   if (cur > sc->max_freq) {
    continue;
   }
   if (cur == fout) {
    *factor_n = n;
    *factor_m = m;
    return (cur);
   }
   if (abs((fout - cur)) < abs((fout - best))) {
    best = cur;
    *factor_n = n;
    *factor_m = m;
   }
  }
 }

 return (best);
}
