
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_wdt_softc {struct mv_wdt_config* wdt_config; int wdt_mtx; int wdt_res; } ;
struct mv_wdt_config {scalar_t__ wdt_clock_src; int (* wdt_disable ) () ;} ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct mv_wdt_softc*,int ) ;
 int MTX_DEF ;
 int bus_alloc_resources (int ,int ,int *) ;
 struct mv_wdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ get_tclk () ;
 int mtx_init (int *,char*,int *,int ) ;
 int mv_watchdog_event ;
 int mv_wdt_compat ;
 int mv_wdt_spec ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int stub1 () ;
 int watchdog_list ;
 struct mv_wdt_softc* wdt_softc ;

__attribute__((used)) static int
mv_wdt_attach(device_t dev)
{
 struct mv_wdt_softc *sc;
 int error;

 if (wdt_softc != ((void*)0))
  return (ENXIO);

 sc = device_get_softc(dev);
 wdt_softc = sc;

 error = bus_alloc_resources(dev, mv_wdt_spec, &sc->wdt_res);
 if (error) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 mtx_init(&sc->wdt_mtx, "watchdog", ((void*)0), MTX_DEF);

 sc->wdt_config = (struct mv_wdt_config *)
    ofw_bus_search_compatible(dev, mv_wdt_compat)->ocd_data;

 if (sc->wdt_config->wdt_clock_src == 0)
  sc->wdt_config->wdt_clock_src = get_tclk();

 if (wdt_softc->wdt_config->wdt_disable != ((void*)0))
  wdt_softc->wdt_config->wdt_disable();
 EVENTHANDLER_REGISTER(watchdog_list, mv_watchdog_event, sc, 0);

 return (0);
}
