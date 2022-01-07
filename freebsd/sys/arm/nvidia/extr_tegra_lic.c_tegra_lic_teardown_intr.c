
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_lic_sc {int parent; } ;
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int PIC_TEARDOWN_INTR (int ,struct intr_irqsrc*,struct resource*,struct intr_map_data*) ;
 struct tegra_lic_sc* device_get_softc (int ) ;

__attribute__((used)) static int
tegra_lic_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct tegra_lic_sc *sc = device_get_softc(dev);

 return (PIC_TEARDOWN_INTR(sc->parent, isrc, res, data));
}
