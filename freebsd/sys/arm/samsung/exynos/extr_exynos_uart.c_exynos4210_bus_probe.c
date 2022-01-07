
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_txfifosz; int sc_rxfifosz; } ;



int
exynos4210_bus_probe(struct uart_softc *sc)
{

 sc->sc_txfifosz = 16;
 sc->sc_rxfifosz = 16;

 return (0);
}
