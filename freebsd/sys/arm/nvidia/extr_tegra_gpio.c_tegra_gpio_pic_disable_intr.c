
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_softc {int dummy; } ;
struct tegra_gpio_irqsrc {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 struct tegra_gpio_softc* device_get_softc (int ) ;
 int tegra_gpio_isrc_mask (struct tegra_gpio_softc*,struct tegra_gpio_irqsrc*,int ) ;

__attribute__((used)) static void
tegra_gpio_pic_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct tegra_gpio_softc *sc;
 struct tegra_gpio_irqsrc *tgi;

 sc = device_get_softc(dev);
 tgi = (struct tegra_gpio_irqsrc *)isrc;
 tegra_gpio_isrc_mask(sc, tgi, 0);
}
