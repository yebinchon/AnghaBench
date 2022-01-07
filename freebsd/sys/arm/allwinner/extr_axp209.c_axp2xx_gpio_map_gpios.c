
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct axp2xx_softc {scalar_t__ npins; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int EINVAL ;
 struct axp2xx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axp2xx_gpio_map_gpios(device_t bus, phandle_t dev, phandle_t gparent,
    int gcells, pcell_t *gpios, uint32_t *pin, uint32_t *flags)
{
 struct axp2xx_softc *sc;

 sc = device_get_softc(bus);

 if (gpios[0] >= sc->npins)
  return (EINVAL);

 *pin = gpios[0];
 *flags = gpios[1];

 return (0);
}
