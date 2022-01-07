
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct tegra_gpio_softc {int gpio_npins; } ;
typedef int pcell_t ;


 int EINVAL ;
 int GPIO_INT_LVL_DELTA ;
 int GPIO_INT_LVL_EDGE ;
 int GPIO_INT_LVL_HIGH ;

__attribute__((used)) static int
tegra_gpio_pic_map_fdt(struct tegra_gpio_softc *sc, u_int ncells,
    pcell_t *cells, u_int *irqp, uint32_t *regp)
{
 uint32_t reg;
 if (ncells != 2 || cells[0] >= sc->gpio_npins)
  return (EINVAL);






 if (cells[1] == 1)
  reg = GPIO_INT_LVL_EDGE | GPIO_INT_LVL_HIGH;
 else if (cells[1] == 2)
  reg = GPIO_INT_LVL_EDGE;
 else if (cells[1] == 3)
  reg = GPIO_INT_LVL_EDGE | GPIO_INT_LVL_DELTA;
 else if (cells[1] == 4)
  reg = GPIO_INT_LVL_HIGH;
 else if (cells[1] == 8)
  reg = 0;
 else
  return (EINVAL);

 *irqp = cells[0];
 if (regp != ((void*)0))
  *regp = reg;
 return (0);
}
