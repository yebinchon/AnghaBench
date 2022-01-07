
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_rtc_softc {int res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int clock_register (int ,int) ;
 struct mv_rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int res_spec ;

__attribute__((used)) static int
mv_rtc_attach(device_t dev)
{
 struct mv_rtc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 clock_register(dev, 1000000);

 if (bus_alloc_resources(dev, res_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 return (0);
}
