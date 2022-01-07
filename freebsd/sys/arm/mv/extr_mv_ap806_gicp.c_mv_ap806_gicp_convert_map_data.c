
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mv_ap806_gicp_softc {int spi_ranges_cnt; scalar_t__* spi_ranges; TYPE_1__* parent_map_data; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {int dummy; } ;
struct TYPE_2__ {int ncells; scalar_t__* cells; } ;


 scalar_t__ MV_AP806_GICP_MAX_NIRQS ;

__attribute__((used)) static struct intr_map_data *
mv_ap806_gicp_convert_map_data(struct mv_ap806_gicp_softc *sc,
    struct intr_map_data *data)
{
 struct intr_map_data_fdt *daf;
 uint32_t i, irq_num, irq_type;

 daf = (struct intr_map_data_fdt *)data;
 if (daf->ncells != 2)
  return (((void*)0));

 irq_num = daf->cells[0];
 irq_type = daf->cells[1];
 if (irq_num >= MV_AP806_GICP_MAX_NIRQS)
  return (((void*)0));


 sc->parent_map_data->ncells = 3;
 sc->parent_map_data->cells[0] = 0;
 sc->parent_map_data->cells[2] = irq_type;


 for (i = 0; i < sc->spi_ranges_cnt / 2; i += 2) {
  if (irq_num < sc->spi_ranges[i + 1]) {
   irq_num += sc->spi_ranges[i];
   break;
  }

  irq_num -= sc->spi_ranges[i];
 }

 sc->parent_map_data->cells[1] = irq_num - 32;

 return ((struct intr_map_data *)sc->parent_map_data);
}
