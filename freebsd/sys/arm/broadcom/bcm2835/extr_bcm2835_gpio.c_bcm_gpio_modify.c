
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;


 int BCM_GPIO_CLEAR_BITS (struct bcm_gpio_softc*,int ,int ) ;
 int BCM_GPIO_SET_BITS (struct bcm_gpio_softc*,int ,int ) ;

__attribute__((used)) static inline void
bcm_gpio_modify(struct bcm_gpio_softc *sc, uint32_t reg, uint32_t mask,
    bool set_bits)
{

 if (set_bits)
  BCM_GPIO_SET_BITS(sc, reg, mask);
 else
  BCM_GPIO_CLEAR_BITS(sc, reg, mask);
}
