
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_spi_softc {scalar_t__ sc_written; scalar_t__ sc_len; scalar_t__ sc_read; int sc_dev; int sc_flags; } ;


 int MCSPI_IRQSTATUS ;
 int MCSPI_IRQ_EOW ;
 int MCSPI_IRQ_RX0_FULL ;
 int MCSPI_IRQ_TX0_EMPTY ;
 int TI_SPI_DONE ;
 int TI_SPI_LOCK (struct ti_spi_softc*) ;
 int TI_SPI_READ (struct ti_spi_softc*,int ) ;
 int TI_SPI_UNLOCK (struct ti_spi_softc*) ;
 int TI_SPI_WRITE (struct ti_spi_softc*,int ,int) ;
 int ti_spi_drain_fifo (struct ti_spi_softc*) ;
 int ti_spi_fill_fifo (struct ti_spi_softc*) ;
 int wakeup (int ) ;

__attribute__((used)) static void
ti_spi_intr(void *arg)
{
 int eow;
 struct ti_spi_softc *sc;
 uint32_t status;

 eow = 0;
 sc = (struct ti_spi_softc *)arg;
 TI_SPI_LOCK(sc);
 status = TI_SPI_READ(sc, MCSPI_IRQSTATUS);







 if (status & MCSPI_IRQ_TX0_EMPTY)
  ti_spi_fill_fifo(sc);
 if (status & MCSPI_IRQ_RX0_FULL)
  ti_spi_drain_fifo(sc);

 if (status & MCSPI_IRQ_EOW)
  eow = 1;


 TI_SPI_WRITE(sc, MCSPI_IRQSTATUS, status);


 if (sc->sc_written == sc->sc_len && sc->sc_read == sc->sc_len) {
  sc->sc_flags |= TI_SPI_DONE;
  wakeup(sc->sc_dev);
 }

 TI_SPI_UNLOCK(sc);
}
