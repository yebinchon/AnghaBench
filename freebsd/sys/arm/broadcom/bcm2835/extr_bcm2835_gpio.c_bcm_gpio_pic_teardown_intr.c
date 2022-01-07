
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int dummy; } ;
typedef int device_t ;


 int GPIO_INTR_CONFORM ;
 int bcm_gpio_pic_config_intr (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*,int ) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pic_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 struct bcm_gpio_irqsrc *bgi = (struct bcm_gpio_irqsrc *)isrc;

 if (isrc->isrc_handlers == 0)
  bcm_gpio_pic_config_intr(sc, bgi, GPIO_INTR_CONFORM);
 return (0);
}
