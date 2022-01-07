
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mv_gpio_softc {int dummy; } ;
typedef int device_t ;


 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_out_en (int ,int ,int ) ;
 int mv_gpio_value_set (int ,int ,int ) ;

void
mv_gpio_out(device_t dev, uint32_t pin, uint8_t val, uint8_t enable)
{
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_LOCK();

 mv_gpio_value_set(dev, pin, val);
 mv_gpio_out_en(dev, pin, enable);

 MV_GPIO_UNLOCK();
}
