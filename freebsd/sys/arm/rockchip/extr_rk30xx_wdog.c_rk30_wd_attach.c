
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk30_wd_softc {int freq; int mtx; int * res; int dev; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
typedef int cell ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct rk30_wd_softc*,int ) ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct rk30_wd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 struct rk30_wd_softc* rk30_wd_sc ;
 int rk30_wd_watchdog_fn ;
 int watchdog_list ;

__attribute__((used)) static int
rk30_wd_attach(device_t dev)
{
 struct rk30_wd_softc *sc;
 int rid;
 phandle_t node;
 pcell_t cell;

 if (rk30_wd_sc != ((void*)0))
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->dev = dev;

 node = ofw_bus_get_node(sc->dev);
 if (OF_getencprop(node, "clock-frequency", &cell, sizeof(cell)) > 0)
  sc->freq = cell / 1000000;
 else
  return (ENXIO);

 rid = 0;
 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 rk30_wd_sc = sc;
 mtx_init(&sc->mtx, "RK30XX Watchdog", "rk30_wd", MTX_DEF);
 EVENTHANDLER_REGISTER(watchdog_list, rk30_wd_watchdog_fn, sc, 0);

 return (0);
}
