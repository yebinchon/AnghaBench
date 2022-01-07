
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_efuse_softc {int * mem_res; int * reset; int * clk; int fuse_begin; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TEGRA124_FUSE_BEGIN ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_release (int *) ;
 struct tegra_efuse_softc* dev_sc ;
 struct tegra_efuse_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_deassert (int *) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int **) ;
 int hwreset_release (int *) ;
 int ofw_bus_get_node (int ) ;
 int tegra124_init_speedo (struct tegra_efuse_softc*,int *) ;
 int tegra_efuse_dump_sku () ;
 int tegra_sku_info ;

__attribute__((used)) static int
tegra_efuse_attach(device_t dev)
{
 int rv, rid;
 phandle_t node;
 struct tegra_efuse_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot map registers.\n");
  rv = ENXIO;
  goto fail;
 }


 rv = clk_get_by_ofw_name(dev, 0, "fuse", &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get fuse clock: %d\n", rv);
  goto fail;
 }
 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable clock: %d\n", rv);
  goto fail;
 }
 rv = hwreset_get_by_ofw_name(sc->dev, 0, "fuse", &sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot get fuse reset\n");
  goto fail;
 }
 rv = hwreset_deassert(sc->reset);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot clear reset\n");
  goto fail;
 }


 sc->fuse_begin = TEGRA124_FUSE_BEGIN;
 tegra124_init_speedo(sc, &tegra_sku_info);

 dev_sc = sc;

 if (bootverbose)
  tegra_efuse_dump_sku();
 return (bus_generic_attach(dev));

fail:
 dev_sc = ((void*)0);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (sc->reset != ((void*)0))
  hwreset_release(sc->reset);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (rv);
}
