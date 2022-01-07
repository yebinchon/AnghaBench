
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_irqsrc {int cfgreg; } ;


 int GPIO_INT_LVL_EDGE ;

__attribute__((used)) static inline bool
tegra_gpio_isrc_is_level(struct tegra_gpio_irqsrc *tgi)
{

 return (tgi->cfgreg & GPIO_INT_LVL_EDGE);
}
