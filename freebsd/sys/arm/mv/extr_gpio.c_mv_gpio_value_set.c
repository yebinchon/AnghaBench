
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct mv_gpio_softc {scalar_t__ pin_num; } ;
typedef int device_t ;


 scalar_t__ GPIO_DATA_OUT ;
 int MV_GPIO_ASSERT_LOCKED () ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_reg_clear (int ,scalar_t__,scalar_t__) ;
 int mv_gpio_reg_set (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
mv_gpio_value_set(device_t dev, uint32_t pin, uint8_t val)
{
 uint32_t reg;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 if (pin >= sc->pin_num)
  return;

 reg = GPIO_DATA_OUT;

 if (val)
  mv_gpio_reg_set(dev, reg, pin);
 else
  mv_gpio_reg_clear(dev, reg, pin);
}
