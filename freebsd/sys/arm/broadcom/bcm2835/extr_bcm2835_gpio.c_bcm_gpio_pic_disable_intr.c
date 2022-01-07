
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int dummy; } ;
typedef int device_t ;


 int bcm_gpio_isrc_mask (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_gpio_pic_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 struct bcm_gpio_irqsrc *bgi = (struct bcm_gpio_irqsrc *)isrc;

 bcm_gpio_isrc_mask(sc, bgi);
}
