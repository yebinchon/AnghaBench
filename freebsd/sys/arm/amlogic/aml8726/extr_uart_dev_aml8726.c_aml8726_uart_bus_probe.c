
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwiflow; int sc_hwoflow; int sc_dev; int sc_bas; } ;


 int aml8726_uart_probe (int *) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
aml8726_uart_bus_probe(struct uart_softc *sc)
{
 int error;

 error = aml8726_uart_probe(&sc->sc_bas);
 if (error)
  return (error);

 sc->sc_rxfifosz = 64;
 sc->sc_txfifosz = 64;
 sc->sc_hwiflow = 1;
 sc->sc_hwoflow = 1;

 device_set_desc(sc->sc_dev, "Amlogic aml8726 UART");

 return (0);
}
