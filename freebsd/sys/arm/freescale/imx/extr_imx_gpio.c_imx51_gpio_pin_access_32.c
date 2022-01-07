
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct imx51_gpio_softc {int sc_mtx; } ;
typedef int device_t ;


 int EINVAL ;
 int IMX_GPIO_DR_REG ;
 scalar_t__ READ4 (struct imx51_gpio_softc*,int ) ;
 int WRITE4 (struct imx51_gpio_softc*,int ,scalar_t__) ;
 struct imx51_gpio_softc* device_get_softc (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static int
imx51_gpio_pin_access_32(device_t dev, uint32_t first_pin, uint32_t clear_pins,
    uint32_t change_pins, uint32_t *orig_pins)
{
 struct imx51_gpio_softc *sc;

 if (first_pin != 0)
  return (EINVAL);

 sc = device_get_softc(dev);

 if (orig_pins != ((void*)0))
  *orig_pins = READ4(sc, IMX_GPIO_DR_REG);

 if ((clear_pins | change_pins) != 0) {
  mtx_lock_spin(&sc->sc_mtx);
  WRITE4(sc, IMX_GPIO_DR_REG,
      (READ4(sc, IMX_GPIO_DR_REG) & ~clear_pins) ^ change_pins);
  mtx_unlock_spin(&sc->sc_mtx);
 }

 return (0);
}
