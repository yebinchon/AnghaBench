
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct versatile_sic_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int arm_irq_memory_barrier (int ) ;
 int versatile_sic_enable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
versatile_sic_post_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct versatile_sic_irqsrc *src;

 src = (struct versatile_sic_irqsrc *)isrc;
 arm_irq_memory_barrier(src->irq);
 versatile_sic_enable_intr(dev, isrc);
}
