
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


 int AXP2XX_GPIO_FUNC_DRVHI ;
 int AXP2XX_GPIO_FUNC_DRVLO ;
 int AXP2XX_GPIO_FUNC_INPUT ;
 int AXP2XX_GPIO_FUNC_MASK ;
 int AXP_LOCK (struct axp2xx_softc*) ;
 int AXP_UNLOCK (struct axp2xx_softc*) ;
 int EINVAL ;
 size_t GPIO_PIN_INPUT ;
 size_t GPIO_PIN_OUTPUT ;
 int axp2xx_read (int ,int ,int*,int) ;
 struct axp2xx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axp2xx_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
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
  if (func == AXP2XX_GPIO_FUNC_INPUT)
   *flags = GPIO_PIN_INPUT;
  else if (func == AXP2XX_GPIO_FUNC_DRVLO ||
      func == AXP2XX_GPIO_FUNC_DRVHI)
   *flags = GPIO_PIN_OUTPUT;
  else
   *flags = 0;
 }
 AXP_UNLOCK(sc);

 return (error);
}
