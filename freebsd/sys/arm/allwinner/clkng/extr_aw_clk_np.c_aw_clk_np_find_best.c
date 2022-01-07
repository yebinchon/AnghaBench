
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct aw_clk_np_sc {int p; int n; } ;


 scalar_t__ abs (int) ;
 int aw_clk_factor_get_max (int *) ;
 int aw_clk_factor_get_min (int *) ;

__attribute__((used)) static uint64_t
aw_clk_np_find_best(struct aw_clk_np_sc *sc, uint64_t fparent, uint64_t *fout,
    uint32_t *factor_n, uint32_t *factor_p)
{
 uint64_t cur, best;
 uint32_t n, p, max_n, max_p, min_n, min_p;

 *factor_n = *factor_p = 0;

 max_n = aw_clk_factor_get_max(&sc->n);
 max_p = aw_clk_factor_get_max(&sc->p);
 min_n = aw_clk_factor_get_min(&sc->n);
 min_p = aw_clk_factor_get_min(&sc->p);

 for (p = min_p; p <= max_p; ) {
  for (n = min_n; n <= max_n; ) {
   cur = fparent * n / p;
   if (abs(*fout - cur) < abs(*fout - best)) {
    best = cur;
    *factor_n = n;
    *factor_p = p;
   }

   n++;
  }
  p++;
 }

 return (best);
}
