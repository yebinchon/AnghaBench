
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_spi_softc {scalar_t__ txcnt; scalar_t__ txlen; scalar_t__ transfer; } ;


 int AW_SPI_IER ;
 int AW_SPI_IER_RF_FULL ;
 int AW_SPI_IER_TC ;
 int AW_SPI_IER_TF_EMP ;
 int AW_SPI_ISR ;
 int AW_SPI_READ_4 (struct aw_spi_softc*,int ) ;
 int AW_SPI_WRITE_4 (struct aw_spi_softc*,int ,int) ;
 int aw_spi_fill_txfifo (struct aw_spi_softc*) ;
 int aw_spi_read_rxfifo (struct aw_spi_softc*) ;
 int wakeup (struct aw_spi_softc*) ;

__attribute__((used)) static void
aw_spi_intr(void *arg)
{
 struct aw_spi_softc *sc;
 uint32_t intr;

 sc = (struct aw_spi_softc *)arg;

 intr = AW_SPI_READ_4(sc, AW_SPI_ISR);

 if (intr & AW_SPI_IER_RF_FULL)
  aw_spi_read_rxfifo(sc);

 if (intr & AW_SPI_IER_TF_EMP) {
  aw_spi_fill_txfifo(sc);




  if (sc->txcnt == sc->txlen)
   AW_SPI_WRITE_4(sc, AW_SPI_IER, AW_SPI_IER_TC |
       AW_SPI_IER_RF_FULL);
 }

 if (intr & AW_SPI_IER_TC) {

  aw_spi_read_rxfifo(sc);


  AW_SPI_WRITE_4(sc, AW_SPI_IER, 0);
  sc->transfer = 0;
  wakeup(sc);
 }


 AW_SPI_WRITE_4(sc, AW_SPI_ISR, intr);
}
