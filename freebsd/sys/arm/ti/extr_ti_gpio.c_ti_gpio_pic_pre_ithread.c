
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 struct ti_gpio_softc* device_get_softc (int ) ;
 int ti_gpio_isrc_eoi (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ;
 scalar_t__ ti_gpio_isrc_is_level (struct ti_gpio_irqsrc*) ;
 int ti_gpio_isrc_mask (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ;

__attribute__((used)) static void
ti_gpio_pic_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct ti_gpio_softc *sc = device_get_softc(dev);
 struct ti_gpio_irqsrc *tgi = (struct ti_gpio_irqsrc *)isrc;

 ti_gpio_isrc_mask(sc, tgi);
 if (ti_gpio_isrc_is_level(tgi))
  ti_gpio_isrc_eoi(sc, tgi);
}
