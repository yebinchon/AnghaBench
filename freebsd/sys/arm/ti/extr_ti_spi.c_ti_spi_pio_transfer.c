
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_spi_softc {scalar_t__ sc_len; scalar_t__ sc_written; } ;


 int EIO ;
 int ti_spi_drain_fifo (struct ti_spi_softc*) ;
 int ti_spi_fill_fifo (struct ti_spi_softc*) ;

__attribute__((used)) static int
ti_spi_pio_transfer(struct ti_spi_softc *sc)
{

 while (sc->sc_len - sc->sc_written > 0) {
  if (ti_spi_fill_fifo(sc) == -1)
   return (EIO);
  if (ti_spi_drain_fifo(sc) == -1)
   return (EIO);
 }

 return (0);
}
