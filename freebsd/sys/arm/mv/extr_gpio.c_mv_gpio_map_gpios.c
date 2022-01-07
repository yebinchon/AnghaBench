
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mv_gpio_softc {scalar_t__ pin_num; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int EINVAL ;
 struct mv_gpio_softc* device_get_softc (int ) ;
 int mv_gpio_configure (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
mv_gpio_map_gpios(device_t bus, phandle_t dev, phandle_t gparent, int gcells,
    pcell_t *gpios, uint32_t *pin, uint32_t *flags)
{
 struct mv_gpio_softc *sc = device_get_softc(bus);

 if (gpios[0] >= sc->pin_num)
  return (EINVAL);

 *pin = gpios[0];
 *flags = gpios[1];
 mv_gpio_configure(bus, *pin, *flags, ~0);

 return (0);
}
