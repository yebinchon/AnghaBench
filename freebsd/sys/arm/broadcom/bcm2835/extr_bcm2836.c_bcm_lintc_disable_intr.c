
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct bcm_lintc_irqsrc {int dummy; } ;
typedef int device_t ;


 int bcm_lintc_mask (int ,struct bcm_lintc_irqsrc*) ;
 int device_get_softc (int ) ;

__attribute__((used)) static void
bcm_lintc_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{

 bcm_lintc_mask(device_get_softc(dev), (struct bcm_lintc_irqsrc *)isrc);
}
