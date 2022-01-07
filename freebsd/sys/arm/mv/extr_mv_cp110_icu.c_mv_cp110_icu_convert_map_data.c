
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mv_cp110_icu_softc {TYPE_1__* parent_map_data; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {int dummy; } ;
struct TYPE_2__ {int ncells; scalar_t__* cells; } ;


 int ICU_INT_CFG (scalar_t__) ;
 scalar_t__ ICU_INT_MASK ;
 scalar_t__ IRQ_TYPE_EDGE_RISING ;
 scalar_t__ IRQ_TYPE_LEVEL_HIGH ;
 scalar_t__ MV_CP110_ICU_MAX_NIRQS ;
 scalar_t__ RD4 (struct mv_cp110_icu_softc*,int ) ;

__attribute__((used)) static struct intr_map_data *
mv_cp110_icu_convert_map_data(struct mv_cp110_icu_softc *sc, struct intr_map_data *data)
{
 struct intr_map_data_fdt *daf;
 uint32_t reg, irq_no, irq_type;

 daf = (struct intr_map_data_fdt *)data;
 if (daf->ncells != 2)
  return (((void*)0));
 irq_no = daf->cells[0];
 irq_type = daf->cells[1];
 if (irq_no >= MV_CP110_ICU_MAX_NIRQS)
  return (((void*)0));
 if (irq_type != IRQ_TYPE_LEVEL_HIGH &&
     irq_type != IRQ_TYPE_EDGE_RISING)
  return (((void*)0));


 reg = RD4(sc, ICU_INT_CFG(irq_no));


 sc->parent_map_data->ncells = 2;
 sc->parent_map_data->cells[0] = reg & ICU_INT_MASK;
 sc->parent_map_data->cells[1] = irq_type;

 return ((struct intr_map_data *)sc->parent_map_data);
}
