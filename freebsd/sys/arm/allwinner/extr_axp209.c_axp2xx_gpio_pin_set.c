
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct axp2xx_softc {size_t npins; TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int ctrl_reg; } ;




 int AXP2XX_GPIO_FUNC_MASK ;
 int AXP_LOCK (struct axp2xx_softc*) ;
 int AXP_UNLOCK (struct axp2xx_softc*) ;
 int EINVAL ;
 int EIO ;
 int axp2xx_read (int ,int ,int*,int) ;
 int axp2xx_write (int ,int ,int) ;
 struct axp2xx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axp2xx_gpio_pin_set(device_t dev, uint32_t pin, unsigned int val)
{
 struct axp2xx_softc *sc;
 uint8_t data, func;
 int error;

 sc = device_get_softc(dev);

 if (pin >= sc->npins)
  return (EINVAL);

 AXP_LOCK(sc);
 error = axp2xx_read(dev, sc->pins[pin].ctrl_reg, &data, 1);
 if (error == 0) {
  func = data & AXP2XX_GPIO_FUNC_MASK;
  switch (func) {
  case 128:
  case 129:

   if (pin == 2 && val == 1) {
    error = EINVAL;
    break;
   }
   data &= ~AXP2XX_GPIO_FUNC_MASK;
   data |= val;
   break;
  default:
   error = EIO;
   break;
  }
 }
 if (error == 0)
  error = axp2xx_write(dev, sc->pins[pin].ctrl_reg, data);
 AXP_UNLOCK(sc);

 return (error);
}
