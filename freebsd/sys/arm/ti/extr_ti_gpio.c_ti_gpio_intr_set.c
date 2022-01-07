
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;


 int TI_GPIO_IRQSTATUS_SET_0 ;
 int ti_gpio_write_4 (struct ti_gpio_softc*,int ,int ) ;

__attribute__((used)) static inline void
ti_gpio_intr_set(struct ti_gpio_softc *sc, uint32_t mask)
{





 ti_gpio_write_4(sc, TI_GPIO_IRQSTATUS_SET_0, mask);
}
