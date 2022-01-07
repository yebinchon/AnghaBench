
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_softc {int * res; int bsh; int bst; int model; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int compat_data ;
 struct pmu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 struct pmu_softc* pmu_sc ;
 int pmu_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
pmu_attach(device_t dev)
{
 struct pmu_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->model = ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 if (bus_alloc_resources(dev, pmu_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 pmu_sc = sc;

 return (0);
}
