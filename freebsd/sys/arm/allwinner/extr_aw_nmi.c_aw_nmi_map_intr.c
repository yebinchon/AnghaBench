
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct intr_map_data_fdt {int cells; int ncells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;
struct aw_nmi_softc {TYPE_1__ intr; } ;
typedef int device_t ;


 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 int aw_nmi_map_fdt (int ,int ,int ,int *,int *,int *) ;
 struct aw_nmi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_nmi_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct intr_map_data_fdt *daf;
 struct aw_nmi_softc *sc;
 int error;
 u_int irq;

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 sc = device_get_softc(dev);
 daf = (struct intr_map_data_fdt *)data;

 error = aw_nmi_map_fdt(dev, daf->ncells, daf->cells, &irq, ((void*)0), ((void*)0));
 if (error == 0)
  *isrcp = &sc->intr.isrc;

 return (error);
}
