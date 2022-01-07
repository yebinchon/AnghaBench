
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_spi_softc {scalar_t__ txcnt; scalar_t__ txlen; int * txbuf; } ;


 int AW_SPI_FIFO_SIZE ;
 int AW_SPI_FSR ;
 int AW_SPI_FSR_TF_CNT_MASK ;
 int AW_SPI_FSR_TF_CNT_SHIFT ;
 int AW_SPI_READ_4 (struct aw_spi_softc*,int ) ;
 int AW_SPI_TXD ;
 int AW_SPI_WRITE_1 (struct aw_spi_softc*,int ,int ) ;

__attribute__((used)) static inline void
aw_spi_fill_txfifo(struct aw_spi_softc *sc)
{
 uint32_t reg, txcnt;
 int i;

 if (sc->txcnt == sc->txlen)
  return;

 reg = AW_SPI_READ_4(sc, AW_SPI_FSR);
 reg &= AW_SPI_FSR_TF_CNT_MASK;
 txcnt = reg >> AW_SPI_FSR_TF_CNT_SHIFT;

 for (i = 0; i < (AW_SPI_FIFO_SIZE - txcnt); i++) {
  AW_SPI_WRITE_1(sc, AW_SPI_TXD, sc->txbuf[sc->txcnt++]);
  if (sc->txcnt == sc->txlen)
   break;
 }

 return;
}
