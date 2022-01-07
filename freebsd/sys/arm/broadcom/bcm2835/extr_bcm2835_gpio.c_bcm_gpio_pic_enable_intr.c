
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int bgi_irq; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int bcm_gpio_isrc_unmask (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_gpio_pic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 struct bcm_gpio_irqsrc *bgi = (struct bcm_gpio_irqsrc *)isrc;

 arm_irq_memory_barrier(bgi->bgi_irq);
 bcm_gpio_isrc_unmask(sc, bgi);
}
