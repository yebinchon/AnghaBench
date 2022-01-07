
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct bcm_intc_irqsrc {int bii_irq; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int bcm_intc_isrc_unmask (int ,struct bcm_intc_irqsrc*) ;
 int device_get_softc (int ) ;

__attribute__((used)) static void
bcm_intc_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct bcm_intc_irqsrc *bii = (struct bcm_intc_irqsrc *)isrc;

 arm_irq_memory_barrier(bii->bii_irq);
 bcm_intc_isrc_unmask(device_get_softc(dev), bii);
}
