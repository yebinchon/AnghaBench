
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct bcm_lintc_irqsrc {int bli_irq; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int bcm_lintc_unmask (int ,struct bcm_lintc_irqsrc*) ;
 int device_get_softc (int ) ;

__attribute__((used)) static void
bcm_lintc_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct bcm_lintc_irqsrc *bli = (struct bcm_lintc_irqsrc *)isrc;

 arm_irq_memory_barrier(bli->bli_irq);
 bcm_lintc_unmask(device_get_softc(dev), bli);
}
