
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int bcm_intc_enable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
bcm_intc_post_ithread(device_t dev, struct intr_irqsrc *isrc)
{

 bcm_intc_enable_intr(dev, isrc);
}
