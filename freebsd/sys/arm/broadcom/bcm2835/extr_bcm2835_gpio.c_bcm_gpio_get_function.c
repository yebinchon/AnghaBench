
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;


 int BCM_GPIO_GPFSEL (int) ;
 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_READ (struct bcm_gpio_softc*,int ) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;

__attribute__((used)) static uint32_t
bcm_gpio_get_function(struct bcm_gpio_softc *sc, uint32_t pin)
{
 uint32_t bank, func, offset;


 bank = pin / 10;
 offset = (pin - bank * 10) * 3;

 BCM_GPIO_LOCK(sc);
 func = (BCM_GPIO_READ(sc, BCM_GPIO_GPFSEL(bank)) >> offset) & 7;
 BCM_GPIO_UNLOCK(sc);

 return (func);
}
