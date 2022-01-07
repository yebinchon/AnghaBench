
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_spi_softc {int sc_flags; scalar_t__ sc_written; scalar_t__ sc_len; scalar_t__ sc_read; int sc_dev; } ;


 int BCM_SPI_BUSY ;
 int BCM_SPI_LOCK (struct bcm_spi_softc*) ;
 int BCM_SPI_UNLOCK (struct bcm_spi_softc*) ;
 int SPI_CS ;
 int SPI_CS_INTD ;
 int SPI_CS_INTR ;
 int SPI_CS_TA ;
 int bcm_spi_drain_fifo (struct bcm_spi_softc*) ;
 int bcm_spi_fill_fifo (struct bcm_spi_softc*) ;
 int bcm_spi_modifyreg (struct bcm_spi_softc*,int ,int,int ) ;
 int wakeup (int ) ;

__attribute__((used)) static void
bcm_spi_intr(void *arg)
{
 struct bcm_spi_softc *sc;

 sc = (struct bcm_spi_softc *)arg;
 BCM_SPI_LOCK(sc);


 if ((sc->sc_flags & BCM_SPI_BUSY) == 0) {
  BCM_SPI_UNLOCK(sc);
  return;
 }


 bcm_spi_fill_fifo(sc);


 bcm_spi_drain_fifo(sc);


 if (sc->sc_written == sc->sc_len && sc->sc_read == sc->sc_len) {

  bcm_spi_modifyreg(sc, SPI_CS,
      SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD, 0);
  wakeup(sc->sc_dev);
 }

 BCM_SPI_UNLOCK(sc);
}
