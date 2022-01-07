
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmsu_softc {int res; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,int *) ;
 struct pmsu_softc* device_get_softc (int ) ;
 int pmsu_spec ;

__attribute__((used)) static int
pmsu_detach(device_t dev)
{
 struct pmsu_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, pmsu_spec, &sc->res);

 return (0);
}
