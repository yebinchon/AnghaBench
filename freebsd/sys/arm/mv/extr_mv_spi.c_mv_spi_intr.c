
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_spi_softc {int sc_flags; scalar_t__ sc_written; scalar_t__ sc_len; scalar_t__ sc_read; int sc_dev; } ;


 int MV_SPI_BUSY ;
 int MV_SPI_LOCK (struct mv_spi_softc*) ;
 int MV_SPI_UNLOCK (struct mv_spi_softc*) ;
 int mv_spi_rx_byte (struct mv_spi_softc*) ;
 int mv_spi_tx_byte (struct mv_spi_softc*) ;
 int wakeup (int ) ;

__attribute__((used)) static void
mv_spi_intr(void *arg)
{
 struct mv_spi_softc *sc;

 sc = (struct mv_spi_softc *)arg;
 MV_SPI_LOCK(sc);


 if ((sc->sc_flags & MV_SPI_BUSY) == 0) {
  MV_SPI_UNLOCK(sc);
  return;
 }


 mv_spi_rx_byte(sc);


 mv_spi_tx_byte(sc);


 if (sc->sc_written == sc->sc_len && sc->sc_read == sc->sc_len)
  wakeup(sc->sc_dev);

 MV_SPI_UNLOCK(sc);
}
