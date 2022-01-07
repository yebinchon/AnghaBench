
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;


 int TI_GPIO_IRQSTATUS_0 ;
 int TI_GPIO_IRQSTATUS_1 ;
 int ti_gpio_read_4 (struct ti_gpio_softc*,int ) ;

__attribute__((used)) static inline uint32_t
ti_gpio_intr_status(struct ti_gpio_softc *sc)
{
 uint32_t reg;


 reg = ti_gpio_read_4(sc, TI_GPIO_IRQSTATUS_0);
 reg |= ti_gpio_read_4(sc, TI_GPIO_IRQSTATUS_1);

 return (reg);
}
