
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {int tgi_mask; } ;


 int ti_gpio_intr_ack (struct ti_gpio_softc*,int ) ;

__attribute__((used)) static inline void
ti_gpio_isrc_eoi(struct ti_gpio_softc *sc, struct ti_gpio_irqsrc *tgi)
{


 ti_gpio_intr_ack(sc, tgi->tgi_mask);
}
