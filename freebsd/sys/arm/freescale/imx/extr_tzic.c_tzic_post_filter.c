
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int device_get_softc (int ) ;
 int tzic_irq_eoi (int ) ;

__attribute__((used)) static void
tzic_post_filter(device_t dev, struct intr_irqsrc *isrc)
{

 tzic_irq_eoi(device_get_softc(dev));
}
