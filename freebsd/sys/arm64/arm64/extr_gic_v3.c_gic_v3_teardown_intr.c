
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
struct gic_v3_irqsrc {int gi_trig; int gi_pol; } ;
typedef int device_t ;


 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;

__attribute__((used)) static int
gic_v3_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct gic_v3_irqsrc *gi = (struct gic_v3_irqsrc *)isrc;

 if (isrc->isrc_handlers == 0) {
  gi->gi_pol = INTR_POLARITY_CONFORM;
  gi->gi_trig = INTR_TRIGGER_CONFORM;
 }

 return (0);
}
