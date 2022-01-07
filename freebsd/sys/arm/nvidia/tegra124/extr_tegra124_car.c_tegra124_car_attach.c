
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra124_car_softc {scalar_t__ mem_res; int type; int mtx; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int compat_data ;
 int device_get_nameunit (int ) ;
 struct tegra124_car_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_register_ofw_provider (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int register_clocks (int ) ;

__attribute__((used)) static int
tegra124_car_attach(device_t dev)
{
 struct tegra124_car_softc *sc = device_get_softc(dev);
 int rid, rv;

 sc->dev = dev;

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);
 sc->type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->mem_res) {
  device_printf(dev, "cannot allocate memory resource\n");
  rv = ENXIO;
  goto fail;
 }

 register_clocks(dev);
 hwreset_register_ofw_provider(dev);
 return (0);

fail:
 if (sc->mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (rv);
}
