
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct bcm_intc_irqsrc {int dummy; } ;
typedef int device_t ;


 int bcm_intc_isrc_mask (int ,struct bcm_intc_irqsrc*) ;
 int device_get_softc (int ) ;

__attribute__((used)) static void
bcm_intc_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{

 bcm_intc_isrc_mask(device_get_softc(dev),
     (struct bcm_intc_irqsrc *)isrc);
}
