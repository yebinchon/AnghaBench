
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct aw_spi_softc {int dummy; } ;


 int AW_SPI_CCR ;
 int AW_SPI_WRITE_4 (struct aw_spi_softc*,int ,int ) ;
 scalar_t__ aw_spi_clock_test_cdr1 (struct aw_spi_softc*,scalar_t__,int *) ;
 scalar_t__ aw_spi_clock_test_cdr2 (struct aw_spi_softc*,scalar_t__,int *) ;

__attribute__((used)) static void
aw_spi_setup_clock(struct aw_spi_softc *sc, uint64_t clock)
{
 uint64_t best_ccr1, best_ccr2;
 uint32_t ccr, ccr1, ccr2;

 best_ccr1 = aw_spi_clock_test_cdr1(sc, clock, &ccr1);
 best_ccr2 = aw_spi_clock_test_cdr2(sc, clock, &ccr2);

 if (best_ccr1 == clock) {
  ccr = ccr1;
 } else if (best_ccr2 == clock) {
  ccr = ccr2;
 } else {
  if ((clock - best_ccr1) < (clock - best_ccr2))
   ccr = ccr1;
  else
   ccr = ccr2;
 }

 AW_SPI_WRITE_4(sc, AW_SPI_CCR, ccr);
}
