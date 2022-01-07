
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int mpic_disable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
mpic_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{

 mpic_disable_intr(dev, isrc);
}
