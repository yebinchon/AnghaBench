
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;


 int BCM_GPIO_GPFSEL (int) ;
 int BCM_GPIO_LOCK_ASSERT (struct bcm_gpio_softc*) ;
 int BCM_GPIO_READ (struct bcm_gpio_softc*,int ) ;
 int BCM_GPIO_WRITE (struct bcm_gpio_softc*,int ,int) ;

__attribute__((used)) static void
bcm_gpio_set_function(struct bcm_gpio_softc *sc, uint32_t pin, uint32_t f)
{
 uint32_t bank, data, offset;


 BCM_GPIO_LOCK_ASSERT(sc);


 bank = pin / 10;
 offset = (pin - bank * 10) * 3;

 data = BCM_GPIO_READ(sc, BCM_GPIO_GPFSEL(bank));
 data &= ~(7 << offset);
 data |= (f << offset);
 BCM_GPIO_WRITE(sc, BCM_GPIO_GPFSEL(bank), data);
}
