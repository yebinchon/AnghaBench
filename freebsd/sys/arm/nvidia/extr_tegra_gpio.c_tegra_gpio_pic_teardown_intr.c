
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_softc {int dummy; } ;
struct tegra_gpio_irqsrc {int dummy; } ;
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
typedef int device_t ;


 struct tegra_gpio_softc* device_get_softc (int ) ;
 int tegra_gpio_isrc_mask (struct tegra_gpio_softc*,struct tegra_gpio_irqsrc*,int ) ;

__attribute__((used)) static int
tegra_gpio_pic_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct tegra_gpio_softc *sc;
 struct tegra_gpio_irqsrc *tgi;

 sc = device_get_softc(dev);
 tgi = (struct tegra_gpio_irqsrc *)isrc;

 if (isrc->isrc_handlers == 0)
  tegra_gpio_isrc_mask(sc, tgi, 0);
 return (0);
}
