
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl190_intc_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int pl190_intc_enable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
pl190_intc_post_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct pl190_intc_irqsrc *src;

 src = (struct pl190_intc_irqsrc *)isrc;
 pl190_intc_enable_intr(dev, isrc);
 arm_irq_memory_barrier(src->irq);
}
