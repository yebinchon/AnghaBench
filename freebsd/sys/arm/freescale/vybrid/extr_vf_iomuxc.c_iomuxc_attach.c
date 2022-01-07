
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomuxc_softc {int * tmr_res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct iomuxc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iomuxc_spec ;
 int pinmux_set (struct iomuxc_softc*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
iomuxc_attach(device_t dev)
{
 struct iomuxc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, iomuxc_spec, sc->tmr_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->tmr_res[0]);
 sc->bsh = rman_get_bushandle(sc->tmr_res[0]);

 pinmux_set(sc);

 return (0);
}
