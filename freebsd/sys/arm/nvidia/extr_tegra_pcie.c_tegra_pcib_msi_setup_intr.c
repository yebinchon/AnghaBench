
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcib_softc {int dummy; } ;
struct tegra_pcib_irqsrc {int dummy; } ;
struct resource {int dummy; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
typedef int device_t ;


 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_MSI ;
 struct tegra_pcib_softc* device_get_softc (int ) ;
 int tegra_pcib_msi_enable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static int
tegra_pcib_msi_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct tegra_pcib_softc *sc;
 struct tegra_pcib_irqsrc *tgi;

 sc = device_get_softc(dev);
 tgi = (struct tegra_pcib_irqsrc *)isrc;

 if (data == ((void*)0) || data->type != INTR_MAP_DATA_MSI)
  return (ENOTSUP);

 if (isrc->isrc_handlers == 0)
  tegra_pcib_msi_enable_intr(dev, isrc);

 return (0);
}
