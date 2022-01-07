
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mnp_bits {int p_width; int p_shift; int n_width; int m_width; } ;
struct pll_sc {int base_reg; struct mnp_bits mnp_bits; } ;


 int PLL_BASE_DIVM_SHIFT ;
 int PLL_BASE_DIVN_SHIFT ;
 int RD4 (struct pll_sc*,int ,int *) ;
 int get_masked (int ,int ,int ) ;

__attribute__((used)) static void
get_divisors(struct pll_sc *sc, uint32_t *m, uint32_t *n, uint32_t *p)
{
 uint32_t val;
 struct mnp_bits *mnp_bits;

 mnp_bits = &sc->mnp_bits;
 RD4(sc, sc->base_reg, &val);
 *m = get_masked(val, PLL_BASE_DIVM_SHIFT, mnp_bits->m_width);
 *n = get_masked(val, PLL_BASE_DIVN_SHIFT, mnp_bits->n_width);
 *p = get_masked(val, mnp_bits->p_shift, mnp_bits->p_width);
}
