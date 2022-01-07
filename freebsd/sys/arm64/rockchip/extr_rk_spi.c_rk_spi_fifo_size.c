
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_spi_softc {int dummy; } ;


 int RK_SPI_READ_4 (struct rk_spi_softc*,int ) ;
 int RK_SPI_TXFTLR ;
 int RK_SPI_WRITE_4 (struct rk_spi_softc*,int ,int) ;

__attribute__((used)) static uint32_t
rk_spi_fifo_size(struct rk_spi_softc *sc)
{
 uint32_t txftlr, reg;

 for (txftlr = 2; txftlr < 32; txftlr++) {
  RK_SPI_WRITE_4(sc, RK_SPI_TXFTLR, txftlr);
  reg = RK_SPI_READ_4(sc, RK_SPI_TXFTLR);
  if (reg != txftlr)
   break;
 }
 RK_SPI_WRITE_4(sc, RK_SPI_TXFTLR, 0);

 if (txftlr == 31)
  return 0;

 return txftlr;
}
