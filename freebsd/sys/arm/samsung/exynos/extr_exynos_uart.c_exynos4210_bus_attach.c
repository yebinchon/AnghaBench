
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; } ;



__attribute__((used)) static int
exynos4210_bus_attach(struct uart_softc *sc)
{

 sc->sc_hwiflow = 0;
 sc->sc_hwoflow = 0;

 return (0);
}
