
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_softc {int memres; int dev; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int clock_unregister (int ) ;
 struct snvs_softc* device_get_softc (int ) ;

__attribute__((used)) static int
snvs_detach(device_t dev)
{
 struct snvs_softc *sc;

 sc = device_get_softc(dev);
 clock_unregister(sc->dev);
 bus_release_resource(sc->dev, SYS_RES_MEMORY, 0, sc->memres);
 return (0);
}
