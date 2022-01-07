
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_softc {scalar_t__ txidx; scalar_t__ txlen; scalar_t__ fifocnt; int intreg; int * txbuf; } ;


 int ECSPI_TXDATA ;
 scalar_t__ FIFO_SIZE ;
 int INTREG_TDREN ;
 int INTREG_TEEN ;
 int WR4 (struct spi_softc*,int ,int ) ;

__attribute__((used)) static void
spi_fill_txfifo(struct spi_softc *sc)
{

 while (sc->txidx < sc->txlen && sc->fifocnt < FIFO_SIZE) {
  WR4(sc, ECSPI_TXDATA, sc->txbuf[sc->txidx++]);
  ++sc->fifocnt;
 }





 if (sc->txidx == sc->txlen)
  sc->intreg = (sc->intreg & ~INTREG_TDREN) | INTREG_TEEN;
}
