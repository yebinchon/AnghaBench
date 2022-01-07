
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {int dummy; } ;
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
typedef int device_t ;


 int GPIO_INTR_CONFORM ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int ti_gpio_pic_config_intr (struct ti_gpio_softc*,struct ti_gpio_irqsrc*,int ) ;

__attribute__((used)) static int
ti_gpio_pic_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct ti_gpio_softc *sc = device_get_softc(dev);
 struct ti_gpio_irqsrc *tgi = (struct ti_gpio_irqsrc *)isrc;

 if (isrc->isrc_handlers == 0)
  ti_gpio_pic_config_intr(sc, tgi, GPIO_INTR_CONFORM);
 return (0);
}
