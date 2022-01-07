
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct tegra_gpio_softc {scalar_t__ gpio_npins; } ;


 int EINVAL ;






 int GPIO_INT_LVL_DELTA ;
 int GPIO_INT_LVL_EDGE ;
 int GPIO_INT_LVL_HIGH ;

__attribute__((used)) static int
tegra_gpio_pic_map_gpio(struct tegra_gpio_softc *sc, u_int gpio_pin_num,
    u_int gpio_pin_flags, u_int intr_mode, u_int *irqp, uint32_t *regp)
{

 uint32_t reg;

 if (gpio_pin_num >= sc->gpio_npins)
  return (EINVAL);
 switch (intr_mode) {
 case 133:
 case 128:
  reg = 0;
  break;
 case 129:
  reg = GPIO_INT_LVL_HIGH;
  break;
 case 130:
  reg = GPIO_INT_LVL_EDGE | GPIO_INT_LVL_HIGH;
  break;
 case 131:
  reg = GPIO_INT_LVL_EDGE;
  break;
 case 132:
  reg = GPIO_INT_LVL_EDGE | GPIO_INT_LVL_DELTA;
  break;
 default:
  return (EINVAL);
 }
 *irqp = gpio_pin_num;
 if (regp != ((void*)0))
  *regp = reg;
 return (0);
}
