
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_prcm_softc {int sc_instance; int * sc_res; int sc_rid; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int compat_data ;
 struct omap4_prcm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int omap4_prcm_reset ;
 int ti_cpu_reset ;

__attribute__((used)) static int
omap4_prcm_attach(device_t dev)
{
 struct omap4_prcm_softc *sc;
 const struct ofw_compat_data *ocd;

 sc = device_get_softc(dev);
 ocd = ofw_bus_search_compatible(dev, compat_data);
 sc->sc_instance = (int)ocd->ocd_data;

 sc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 ti_cpu_reset = omap4_prcm_reset;

 return (0);
}
