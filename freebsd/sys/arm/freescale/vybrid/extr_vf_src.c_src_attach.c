
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct src_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 struct src_softc* src_sc ;
 int src_spec ;

__attribute__((used)) static int
src_attach(device_t dev)
{
 struct src_softc *sc;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, src_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 src_sc = sc;

 return (0);
}
