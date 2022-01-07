
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_softc {int dummy; } ;
struct tegra_gpio_irqsrc {int dummy; } ;


 int GPIO_INT_CLR ;
 int intr_write_masked (struct tegra_gpio_softc*,int ,struct tegra_gpio_irqsrc*,int) ;

__attribute__((used)) static inline void
tegra_gpio_isrc_eoi(struct tegra_gpio_softc *sc,
     struct tegra_gpio_irqsrc *tgi)
{

 intr_write_masked(sc, GPIO_INT_CLR, tgi, 1);
}
