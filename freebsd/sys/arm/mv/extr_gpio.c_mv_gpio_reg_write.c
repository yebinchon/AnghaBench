
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mv_gpio_softc {scalar_t__ offset; int bsh; int bst; } ;
typedef int device_t ;


 int bus_space_write_4 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static void
mv_gpio_reg_write(device_t dev, uint32_t reg, uint32_t val)
{
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 bus_space_write_4(sc->bst, sc->bsh, sc->offset + reg, val);
}
