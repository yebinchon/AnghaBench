
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ti_gpio_softc {int sc_maxpin; } ;
struct intr_map_data_fdt {int ncells; int* cells; } ;


 int EINVAL ;
 int GPIO_INTR_EDGE_BOTH ;
 int GPIO_INTR_EDGE_FALLING ;
 int GPIO_INTR_EDGE_RISING ;
 int GPIO_INTR_LEVEL_HIGH ;
 int GPIO_INTR_LEVEL_LOW ;

__attribute__((used)) static int
ti_gpio_pic_map_fdt(struct ti_gpio_softc *sc, struct intr_map_data_fdt *daf,
    u_int *irqp, uint32_t *modep)
{
 uint32_t mode;
 if (daf->ncells != 2 || daf->cells[0] >= sc->sc_maxpin)
  return (EINVAL);


 if (daf->cells[1] == 1)
  mode = GPIO_INTR_EDGE_RISING;
 else if (daf->cells[1] == 2)
  mode = GPIO_INTR_EDGE_FALLING;
 else if (daf->cells[1] == 3)
  mode = GPIO_INTR_EDGE_BOTH;
 else if (daf->cells[1] == 4)
  mode = GPIO_INTR_LEVEL_HIGH;
 else if (daf->cells[1] == 8)
  mode = GPIO_INTR_LEVEL_LOW;
 else
  return (EINVAL);

 *irqp = daf->cells[0];
 if (modep != ((void*)0))
  *modep = mode;
 return (0);
}
