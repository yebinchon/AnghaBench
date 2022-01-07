
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_dev; scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; void* sc_rxfifosz; void* sc_txfifosz; } ;


 void* UART_FIFO_SIZE ;
 int device_set_desc (int ,char*) ;

int
cdnc_uart_bus_probe(struct uart_softc *sc)
{

 sc->sc_txfifosz = UART_FIFO_SIZE;
 sc->sc_rxfifosz = UART_FIFO_SIZE;
 sc->sc_hwiflow = 0;
 sc->sc_hwoflow = 0;

 device_set_desc(sc->sc_dev, "Cadence UART");

 return (0);
}
