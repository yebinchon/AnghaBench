
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct mv_ap806_sei_softc {int dummy; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 scalar_t__ MV_AP806_SEI_MAX_NIRQS ;
 struct mv_ap806_sei_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mv_ap806_sei_map(device_t dev, struct intr_map_data *data, u_int *irqp)
{
 struct mv_ap806_sei_softc *sc;
 struct intr_map_data_fdt *daf;
 u_int irq;

 sc = device_get_softc(dev);

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 daf = (struct intr_map_data_fdt *)data;
 if (daf->ncells != 1 || daf->cells[0] >= MV_AP806_SEI_MAX_NIRQS)
  return (EINVAL);
 irq = daf->cells[0];
 if (irqp != ((void*)0))
  *irqp = irq;

 return(0);
}
