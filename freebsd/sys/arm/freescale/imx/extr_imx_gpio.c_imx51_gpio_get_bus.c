
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx51_gpio_softc {int sc_busdev; } ;
typedef int device_t ;


 struct imx51_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
imx51_gpio_get_bus(device_t dev)
{
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);

 return (sc->sc_busdev);
}
