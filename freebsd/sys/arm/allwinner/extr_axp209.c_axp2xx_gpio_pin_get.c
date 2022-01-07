
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct axp2xx_softc {size_t npins; TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int status_mask; unsigned int status_shift; int status_reg; int ctrl_reg; } ;





 int AXP2XX_GPIO_FUNC_MASK ;
 int AXP_LOCK (struct axp2xx_softc*) ;
 int AXP_UNLOCK (struct axp2xx_softc*) ;
 int EINVAL ;
 int EIO ;
 int axp2xx_read (int ,int ,int*,int) ;
 struct axp2xx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axp2xx_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
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
  case 129:
   *val = 0;
   break;
  case 130:
   *val = 1;
   break;
  case 128:
   error = axp2xx_read(dev, sc->pins[pin].status_reg,
       &data, 1);
   if (error == 0) {
    *val = (data & sc->pins[pin].status_mask);
    *val >>= sc->pins[pin].status_shift;
   }
   break;
  default:
   error = EIO;
   break;
  }
 }
 AXP_UNLOCK(sc);

 return (error);
}
