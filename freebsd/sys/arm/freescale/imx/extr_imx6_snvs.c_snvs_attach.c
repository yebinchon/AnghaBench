
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_softc {int dev; int * memres; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int RTC_RESOLUTION_US ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int clock_register (int ,int ) ;
 struct snvs_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
snvs_attach(device_t dev)
{
 struct snvs_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;

 rid = 0;
 sc->memres = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->memres == ((void*)0)) {
  device_printf(sc->dev, "could not allocate registers\n");
  return (ENXIO);
 }

 clock_register(sc->dev, RTC_RESOLUTION_US);

 return (0);
}
