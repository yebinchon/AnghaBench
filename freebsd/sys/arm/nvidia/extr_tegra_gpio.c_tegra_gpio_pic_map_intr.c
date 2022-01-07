
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct tegra_gpio_softc {TYPE_1__* isrcs; } ;
struct intr_map_data_gpio {int gpio_intr_mode; int gpio_pin_flags; int gpio_pin_num; } ;
struct intr_map_data_fdt {int cells; int ncells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;


 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 scalar_t__ INTR_MAP_DATA_GPIO ;
 struct tegra_gpio_softc* device_get_softc (int ) ;
 int tegra_gpio_pic_map_fdt (struct tegra_gpio_softc*,int ,int ,size_t*,int *) ;
 int tegra_gpio_pic_map_gpio (struct tegra_gpio_softc*,int ,int ,int ,size_t*,int *) ;

__attribute__((used)) static int
tegra_gpio_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 int rv;
 u_int irq;
 struct tegra_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (data->type == INTR_MAP_DATA_FDT) {
  struct intr_map_data_fdt *daf;

  daf = (struct intr_map_data_fdt *)data;
  rv = tegra_gpio_pic_map_fdt(sc, daf->ncells, daf->cells, &irq,
      ((void*)0));
 } else if (data->type == INTR_MAP_DATA_GPIO) {
  struct intr_map_data_gpio *dag;

  dag = (struct intr_map_data_gpio *)data;
  rv = tegra_gpio_pic_map_gpio(sc, dag->gpio_pin_num,
     dag->gpio_pin_flags, dag->gpio_intr_mode, &irq, ((void*)0));
 } else
  return (ENOTSUP);

 if (rv == 0)
  *isrcp = &sc->isrcs[irq].isrc;
 return (rv);
}
