
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int arm_gic_enable_intr (int ,struct intr_irqsrc*) ;
 int arm_irq_memory_barrier (int ) ;

__attribute__((used)) static void
arm_gic_post_ithread(device_t dev, struct intr_irqsrc *isrc)
{

 arm_irq_memory_barrier(0);
 arm_gic_enable_intr(dev, isrc);
}
