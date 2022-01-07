
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_softc {int * clk; } ;
typedef int device_t ;


 int clk_release (int *) ;
 struct tegra_softc* device_get_softc (int ) ;
 int uart_bus_detach (int ) ;

__attribute__((used)) static int
tegra_uart_detach(device_t dev)
{
 struct tegra_softc *sc;

 sc = device_get_softc(dev);
 if (sc->clk != ((void*)0)) {
  clk_release(sc->clk);
 }

 return (uart_bus_detach(dev));
}
