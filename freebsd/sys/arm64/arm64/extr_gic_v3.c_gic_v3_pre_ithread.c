
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct gic_v3_irqsrc {int gi_irq; } ;
typedef int device_t ;


 int EOIR1 ;
 int gic_icc_write (int ,int ) ;
 int gic_v3_disable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
gic_v3_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct gic_v3_irqsrc *gi = (struct gic_v3_irqsrc *)isrc;

 gic_v3_disable_intr(dev, isrc);
 gic_icc_write(EOIR1, gi->gi_irq);
}
