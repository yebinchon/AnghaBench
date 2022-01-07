
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_map_data_fdt {int ncells; size_t* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
struct a10_aintc_softc {TYPE_1__* isrcs; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;


 size_t A10_INTR_MAX_NIRQS ;
 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 struct a10_aintc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
a10_intr_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct intr_map_data_fdt *daf;
 struct a10_aintc_softc *sc;

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 daf = (struct intr_map_data_fdt *)data;
 if (daf->ncells != 1 || daf->cells[0] >= A10_INTR_MAX_NIRQS)
  return (EINVAL);

 sc = device_get_softc(dev);
 *isrcp = &sc->isrcs[daf->cells[0]].isrc;
 return (0);
}
