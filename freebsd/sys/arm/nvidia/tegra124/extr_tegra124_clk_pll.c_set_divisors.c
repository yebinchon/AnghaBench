
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mnp_bits {int p_width; int p_shift; int n_width; int m_width; } ;
struct pll_sc {struct mnp_bits mnp_bits; } ;


 int PLL_BASE_DIVM_SHIFT ;
 int PLL_BASE_DIVN_SHIFT ;
 int set_masked (int ,int ,int ,int ) ;

__attribute__((used)) static uint32_t
set_divisors(struct pll_sc *sc, uint32_t val, uint32_t m, uint32_t n,
    uint32_t p)
{
 struct mnp_bits *mnp_bits;

 mnp_bits = &sc->mnp_bits;
 val = set_masked(val, m, PLL_BASE_DIVM_SHIFT, mnp_bits->m_width);
 val = set_masked(val, n, PLL_BASE_DIVN_SHIFT, mnp_bits->n_width);
 val = set_masked(val, p, mnp_bits->p_shift, mnp_bits->p_width);
 return (val);
}
