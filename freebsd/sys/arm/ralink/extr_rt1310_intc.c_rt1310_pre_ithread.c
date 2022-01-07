
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int rt1310_disable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
rt1310_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 arm_irq_memory_barrier(0);
 rt1310_disable_intr(dev, isrc);
}
