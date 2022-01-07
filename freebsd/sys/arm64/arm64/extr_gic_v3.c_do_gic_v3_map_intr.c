
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct intr_map_data_msi {int dummy; } ;
struct intr_map_data_fdt {int cells; int ncells; } ;
struct intr_map_data_acpi {scalar_t__ irq; int pol; int trig; } ;
struct intr_map_data {int type; } ;
struct gic_v3_softc {scalar_t__ gic_nirqs; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int EINVAL ;
 struct gic_v3_softc* device_get_softc (int ) ;
 int gic_map_fdt (int ,int ,int ,scalar_t__*,int*,int*) ;
 int gic_map_msi (int ,struct intr_map_data_msi*,scalar_t__*,int*,int*) ;

__attribute__((used)) static int
do_gic_v3_map_intr(device_t dev, struct intr_map_data *data, u_int *irqp,
    enum intr_polarity *polp, enum intr_trigger *trigp)
{
 struct gic_v3_softc *sc;
 enum intr_polarity pol;
 enum intr_trigger trig;
 struct intr_map_data_msi *dam;






 u_int irq;

 sc = device_get_softc(dev);

 switch (data->type) {
 case 134:

  dam = (struct intr_map_data_msi *)data;
  if (gic_map_msi(dev, dam, &irq, &pol, &trig) != 0)
   return (EINVAL);
  break;
 default:
  return (EINVAL);
 }

 if (irq >= sc->gic_nirqs)
  return (EINVAL);
 switch (pol) {
 case 133:
 case 131:
 case 132:
  break;
 default:
  return (EINVAL);
 }
 switch (trig) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return (EINVAL);
 }

 *irqp = irq;
 if (polp != ((void*)0))
  *polp = pol;
 if (trigp != ((void*)0))
  *trigp = trig;
 return (0);
}
