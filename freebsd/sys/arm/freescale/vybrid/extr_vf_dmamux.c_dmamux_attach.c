
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmamux_softc {int * res; int * bsh; int * bst; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct dmamux_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct dmamux_softc* dmamux_sc ;
 int dmamux_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
dmamux_attach(device_t dev)
{
 struct dmamux_softc *sc;
 int i;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, dmamux_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 for (i = 0; i < 4; i++) {
  sc->bst[i] = rman_get_bustag(sc->res[i]);
  sc->bsh[i] = rman_get_bushandle(sc->res[i]);
 }

 dmamux_sc = sc;

 return (0);
}
