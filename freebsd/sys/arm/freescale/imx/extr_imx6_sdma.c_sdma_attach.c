
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_softc {int ih; int * res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int boot_firmware (struct sdma_softc*) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct sdma_softc*,int *) ;
 struct sdma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int load_firmware (struct sdma_softc*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int sdma_intr ;
 struct sdma_softc* sdma_sc ;
 int sdma_spec ;

__attribute__((used)) static int
sdma_attach(device_t dev)
{
 struct sdma_softc *sc;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, sdma_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 sdma_sc = sc;


 err = bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), sdma_intr, sc, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }

 if (load_firmware(sc) == -1)
  return (ENXIO);

 if (boot_firmware(sc) == -1)
  return (ENXIO);

 return (0);
}
