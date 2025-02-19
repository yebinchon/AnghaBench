
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct aw_clk_mipi_sc {int m; int k; int n; } ;


 scalar_t__ aw_clk_factor_get_max (int *) ;
 scalar_t__ aw_clk_factor_get_min (int *) ;

__attribute__((used)) static uint64_t
aw_clk_mipi_find_best(struct aw_clk_mipi_sc *sc, uint64_t fparent, uint64_t *fout,
    uint32_t *factor_k, uint32_t *factor_m, uint32_t *factor_n)
{
 uint64_t cur, best;
 uint32_t n, k, m;

 best = 0;
 *factor_n = 0;
 *factor_k = 0;
 *factor_m = 0;

 for (n = aw_clk_factor_get_min(&sc->n); n <= aw_clk_factor_get_max(&sc->n); ) {
  for (k = aw_clk_factor_get_min(&sc->k); k <= aw_clk_factor_get_max(&sc->k); ) {
   for (m = aw_clk_factor_get_min(&sc->m); m <= aw_clk_factor_get_max(&sc->m); ) {
    cur = (fparent * n * k) / m;
    if ((*fout - cur) < (*fout - best)) {
     best = cur;
     *factor_n = n;
     *factor_k = k;
     *factor_m = m;
    }
    if (best == *fout)
     return (best);
     m++;
   }
    k++;
  }
   n++;
 }

 return best;
}
