
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mv_mpic_irqsrc {int mmi_irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int mpic_mask_irq (int ) ;

__attribute__((used)) static void
mpic_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 u_int irq;

 irq = ((struct mv_mpic_irqsrc *)isrc)->mmi_irq;
 mpic_mask_irq(irq);
}
