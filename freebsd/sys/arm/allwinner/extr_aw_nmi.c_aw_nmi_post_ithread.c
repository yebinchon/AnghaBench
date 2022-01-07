
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int aw_nmi_enable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
aw_nmi_post_ithread(device_t dev, struct intr_irqsrc *isrc)
{

 arm_irq_memory_barrier(0);
 aw_nmi_enable_intr(dev, isrc);
}
