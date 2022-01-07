
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct aw_spi_softc {int mod_freq; } ;


 int AW_SPI_CCR_CDR2_MASK ;
 int AW_SPI_CCR_CDR2_SHIFT ;
 int AW_SPI_CCR_DRS ;

__attribute__((used)) static uint64_t
aw_spi_clock_test_cdr2(struct aw_spi_softc *sc, uint64_t clock, uint32_t *ccr)
{
 uint64_t cur, best = 0;
 int i, max, best_div;

 max = ((AW_SPI_CCR_CDR2_MASK) >> AW_SPI_CCR_CDR2_SHIFT);
 for (i = 0; i < max; i++) {
  cur = sc->mod_freq / (2 * i + 1);
  if ((clock - cur) < (clock - best)) {
   best = cur;
   best_div = i;
  }
 }

 *ccr = AW_SPI_CCR_DRS | (best_div << AW_SPI_CCR_CDR2_SHIFT);
 return (best);
}
