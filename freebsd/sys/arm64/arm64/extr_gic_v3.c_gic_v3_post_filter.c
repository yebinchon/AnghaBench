
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct gic_v3_irqsrc {scalar_t__ gi_trig; int gi_irq; } ;
typedef int device_t ;


 int EOIR1 ;
 scalar_t__ INTR_TRIGGER_EDGE ;
 int gic_icc_write (int ,int ) ;

__attribute__((used)) static void
gic_v3_post_filter(device_t dev, struct intr_irqsrc *isrc)
{
 struct gic_v3_irqsrc *gi = (struct gic_v3_irqsrc *)isrc;

 if (gi->gi_trig == INTR_TRIGGER_EDGE)
  return;

 gic_icc_write(EOIR1, gi->gi_irq);
}
