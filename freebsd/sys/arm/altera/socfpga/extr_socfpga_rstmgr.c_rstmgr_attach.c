
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rstmgr_softc {int * res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct rstmgr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rstmgr_add_sysctl (struct rstmgr_softc*) ;
 struct rstmgr_softc* rstmgr_sc ;
 int rstmgr_spec ;

__attribute__((used)) static int
rstmgr_attach(device_t dev)
{
 struct rstmgr_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, rstmgr_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 rstmgr_sc = sc;
 rstmgr_add_sysctl(sc);

 return (0);
}
