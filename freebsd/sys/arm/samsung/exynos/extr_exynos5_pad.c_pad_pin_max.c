
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pad_softc {int gpio_npins; } ;
typedef int device_t ;


 struct pad_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pad_pin_max(device_t dev, int *maxpin)
{
 struct pad_softc *sc;

 sc = device_get_softc(dev);

 *maxpin = sc->gpio_npins - 1;
 return (0);
}
