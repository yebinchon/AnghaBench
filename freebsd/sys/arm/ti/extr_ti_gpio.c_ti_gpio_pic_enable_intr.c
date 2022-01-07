
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {int tgi_irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int ti_gpio_isrc_unmask (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ;

__attribute__((used)) static void
ti_gpio_pic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct ti_gpio_softc *sc = device_get_softc(dev);
 struct ti_gpio_irqsrc *tgi = (struct ti_gpio_irqsrc *)isrc;

 arm_irq_memory_barrier(tgi->tgi_irq);
 ti_gpio_isrc_unmask(sc, tgi);
}
