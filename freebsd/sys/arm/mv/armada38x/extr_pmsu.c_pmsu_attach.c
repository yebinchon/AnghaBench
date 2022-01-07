
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmsu_softc {int res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int bus_alloc_resources (int ,int ,int *) ;
 struct pmsu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pmsu_spec ;

__attribute__((used)) static int
pmsu_attach(device_t dev)
{
 struct pmsu_softc *sc;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;

 err = bus_alloc_resources(dev, pmsu_spec, &sc->res);
 if (err != 0) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 return (0);
}
