
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intr_map_data_msi {scalar_t__ isrc; } ;
struct gic_irqsrc {int gi_irq; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int ENXIO ;
 int INTR_POLARITY_HIGH ;
 int INTR_TRIGGER_EDGE ;

__attribute__((used)) static int
gic_map_msi(device_t dev, struct intr_map_data_msi *msi_data, u_int *irqp,
    enum intr_polarity *polp, enum intr_trigger *trigp)
{
 struct gic_irqsrc *gi;


 gi = (struct gic_irqsrc *)msi_data->isrc;
 if (gi == ((void*)0))
  return (ENXIO);

 *irqp = gi->gi_irq;


 *polp = INTR_POLARITY_HIGH;
 *trigp = INTR_TRIGGER_EDGE;

 return (0);
}
