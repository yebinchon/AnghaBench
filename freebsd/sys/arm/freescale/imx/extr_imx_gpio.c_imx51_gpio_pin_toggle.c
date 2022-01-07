
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct imx51_gpio_softc {scalar_t__ gpio_npins; int sc_mtx; } ;
typedef int device_t ;


 int EINVAL ;
 int IMX_GPIO_DR_REG ;
 unsigned int READ4 (struct imx51_gpio_softc*,int ) ;
 int WRITE4 (struct imx51_gpio_softc*,int ,unsigned int) ;
 struct imx51_gpio_softc* device_get_softc (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static int
imx51_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (pin >= sc->gpio_npins)
  return (EINVAL);

 mtx_lock_spin(&sc->sc_mtx);
 WRITE4(sc, IMX_GPIO_DR_REG,
     (READ4(sc, IMX_GPIO_DR_REG) ^ (1U << pin)));
 mtx_unlock_spin(&sc->sc_mtx);

 return (0);
}
