
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_gpio_softc {TYPE_2__* padconf; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;
struct TYPE_4__ {int npins; TYPE_1__* pins; } ;
struct TYPE_3__ {scalar_t__ port; scalar_t__ pin; } ;


 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_map_gpios(device_t bus, phandle_t dev, phandle_t gparent, int gcells,
    pcell_t *gpios, uint32_t *pin, uint32_t *flags)
{
 struct aw_gpio_softc *sc;
 int i;

 sc = device_get_softc(bus);


 for (i = 0; i < sc->padconf->npins; i++)
  if (sc->padconf->pins[i].port == gpios[0] &&
      sc->padconf->pins[i].pin == gpios[1]) {
   *pin = i;
   break;
  }
 *flags = gpios[gcells - 1];

 return (0);
}
