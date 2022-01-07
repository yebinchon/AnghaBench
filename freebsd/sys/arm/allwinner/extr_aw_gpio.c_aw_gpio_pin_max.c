
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aw_gpio_softc {TYPE_1__* padconf; } ;
typedef int device_t ;
struct TYPE_2__ {int npins; } ;


 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_max(device_t dev, int *maxpin)
{
 struct aw_gpio_softc *sc;

 sc = device_get_softc(dev);

 *maxpin = sc->padconf->npins - 1;
 return (0);
}
