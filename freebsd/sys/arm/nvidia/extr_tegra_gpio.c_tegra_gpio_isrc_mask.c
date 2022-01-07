
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_gpio_softc {int dummy; } ;
struct tegra_gpio_irqsrc {int dummy; } ;


 int GPIO_MSK_INT_ENB ;
 int intr_write_masked (struct tegra_gpio_softc*,int ,struct tegra_gpio_irqsrc*,int ) ;

__attribute__((used)) static inline void
tegra_gpio_isrc_mask(struct tegra_gpio_softc *sc,
     struct tegra_gpio_irqsrc *tgi, uint32_t val)
{

 intr_write_masked(sc, GPIO_MSK_INT_ENB, tgi, val);
}
