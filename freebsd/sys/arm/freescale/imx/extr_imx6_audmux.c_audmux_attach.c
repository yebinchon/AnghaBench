
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audmux_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ENXIO ;
 int audmux_configure (struct audmux_softc*,int,int) ;
 int audmux_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct audmux_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
audmux_attach(device_t dev)
{
 struct audmux_softc *sc;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, audmux_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);





 audmux_configure(sc, 1, 5);

 return (0);
}
