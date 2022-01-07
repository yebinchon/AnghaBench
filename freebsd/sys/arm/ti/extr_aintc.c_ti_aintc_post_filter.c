
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int device_get_softc (int ) ;
 int ti_aintc_irq_eoi (int ) ;

__attribute__((used)) static void
ti_aintc_post_filter(device_t dev, struct intr_irqsrc *isrc)
{

 ti_aintc_irq_eoi(device_get_softc(dev));
}
