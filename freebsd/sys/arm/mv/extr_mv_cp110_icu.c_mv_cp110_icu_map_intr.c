
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mv_cp110_icu_softc {int dev; int parent; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int isrc_dev; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 int ICU_INT_CFG (scalar_t__) ;
 scalar_t__ ICU_INT_EDGE ;
 scalar_t__ ICU_INT_ENABLE ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 scalar_t__ IRQ_TYPE_LEVEL_HIGH ;
 int PIC_MAP_INTR (int ,struct intr_map_data*,struct intr_irqsrc**) ;
 scalar_t__ RD4 (struct mv_cp110_icu_softc*,int ) ;
 int WR4 (struct mv_cp110_icu_softc*,int ,scalar_t__) ;
 struct mv_cp110_icu_softc* device_get_softc (int ) ;
 struct intr_map_data* mv_cp110_icu_convert_map_data (struct mv_cp110_icu_softc*,struct intr_map_data*) ;

__attribute__((used)) static int
mv_cp110_icu_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct mv_cp110_icu_softc *sc;
 struct intr_map_data_fdt *daf;
 uint32_t reg, irq_no, irq_type;
 int ret;

 sc = device_get_softc(dev);

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);


 daf = (struct intr_map_data_fdt *)data;
 if (daf->ncells != 2)
  return (EINVAL);
 irq_no = daf->cells[0];
 irq_type = daf->cells[1];
 data = mv_cp110_icu_convert_map_data(sc, data);
 if (data == ((void*)0))
  return (EINVAL);

 reg = RD4(sc, ICU_INT_CFG(irq_no));
 reg |= ICU_INT_ENABLE;
 if (irq_type == IRQ_TYPE_LEVEL_HIGH)
  reg &= ~ICU_INT_EDGE;
 else
  reg |= ICU_INT_EDGE;
 WR4(sc, ICU_INT_CFG(irq_no), reg);

 ret = PIC_MAP_INTR(sc->parent, data, isrcp);
 (*isrcp)->isrc_dev = sc->dev;
 return (ret);
}
