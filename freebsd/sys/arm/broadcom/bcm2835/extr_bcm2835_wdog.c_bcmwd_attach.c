
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcmwd_softc {int wdog_period; int mtx; int regs_offset; int * res; int bsh; int bst; int dev; scalar_t__ wdog_armed; int wdog_passwd; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BCM2835_PASSWORD ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct bcmwd_softc*,int ) ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ UPSTREAM_DTB ;
 int UPSTREAM_DTB_REGS_OFFSET ;
 struct bcmwd_softc* bcmwd_lsc ;
 int bcmwd_watchdog_fn ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int compat_data ;
 struct bcmwd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,char*,int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int watchdog_list ;

__attribute__((used)) static int
bcmwd_attach(device_t dev)
{
 struct bcmwd_softc *sc;
 int rid;

 if (bcmwd_lsc != ((void*)0))
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->wdog_period = 7;
 sc->wdog_passwd = BCM2835_PASSWORD;
 sc->wdog_armed = 0;
 sc->dev = dev;

 rid = 0;
 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->res);
 sc->bsh = rman_get_bushandle(sc->res);


 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data
    == UPSTREAM_DTB)
  sc->regs_offset = UPSTREAM_DTB_REGS_OFFSET;

 bcmwd_lsc = sc;
 mtx_init(&sc->mtx, "BCM2835 Watchdog", "bcmwd", MTX_DEF);
 EVENTHANDLER_REGISTER(watchdog_list, bcmwd_watchdog_fn, sc, 0);

 return (0);
}
