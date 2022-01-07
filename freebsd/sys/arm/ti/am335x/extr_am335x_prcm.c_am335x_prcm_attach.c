
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_prcm_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ENXIO ;
 int am335x_prcm_reset ;
 struct am335x_prcm_softc* am335x_prcm_sc ;
 int am335x_prcm_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct am335x_prcm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int ti_cpu_reset ;

__attribute__((used)) static int
am335x_prcm_attach(device_t dev)
{
 struct am335x_prcm_softc *sc = device_get_softc(dev);

 if (am335x_prcm_sc)
  return (ENXIO);

 if (bus_alloc_resources(dev, am335x_prcm_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 am335x_prcm_sc = sc;
 ti_cpu_reset = am335x_prcm_reset;

 return (0);
}
