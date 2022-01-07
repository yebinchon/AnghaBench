
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int ti_aintc_enable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
ti_aintc_post_ithread(device_t dev, struct intr_irqsrc *isrc)
{

 ti_aintc_enable_intr(dev, isrc);
}
