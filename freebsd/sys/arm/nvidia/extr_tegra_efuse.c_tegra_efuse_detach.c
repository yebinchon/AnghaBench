
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_efuse_softc {int * mem_res; int * reset; int * clk; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int clk_release (int *) ;
 int * dev_sc ;
 struct tegra_efuse_softc* device_get_softc (int ) ;
 int hwreset_release (int *) ;

__attribute__((used)) static int
tegra_efuse_detach(device_t dev)
{
 struct tegra_efuse_softc *sc;

 sc = device_get_softc(dev);
 dev_sc = ((void*)0);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (sc->reset != ((void*)0))
  hwreset_release(sc->reset);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (bus_generic_detach(dev));
}
