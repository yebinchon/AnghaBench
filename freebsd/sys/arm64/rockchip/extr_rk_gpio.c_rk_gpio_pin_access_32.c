
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_gpio_softc {int dummy; } ;
typedef int device_t ;


 int RK_GPIO_LOCK (struct rk_gpio_softc*) ;
 int RK_GPIO_READ (struct rk_gpio_softc*,int ) ;
 int RK_GPIO_SWPORTA_DR ;
 int RK_GPIO_UNLOCK (struct rk_gpio_softc*) ;
 int RK_GPIO_WRITE (struct rk_gpio_softc*,int ,int) ;
 struct rk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
rk_gpio_pin_access_32(device_t dev, uint32_t first_pin, uint32_t clear_pins,
    uint32_t change_pins, uint32_t *orig_pins)
{
 struct rk_gpio_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 RK_GPIO_LOCK(sc);
 reg = RK_GPIO_READ(sc, RK_GPIO_SWPORTA_DR);
 if (orig_pins)
  *orig_pins = reg;

 if ((clear_pins | change_pins) != 0) {
  reg = (reg & ~clear_pins) ^ change_pins;
  RK_GPIO_WRITE(sc, RK_GPIO_SWPORTA_DR, reg);
 }
 RK_GPIO_UNLOCK(sc);

 return (0);
}
