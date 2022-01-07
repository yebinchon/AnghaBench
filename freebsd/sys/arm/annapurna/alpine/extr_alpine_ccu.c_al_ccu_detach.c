
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_ccu_softc {int res; } ;
typedef int device_t ;


 int al_ccu_spec ;
 int bus_release_resources (int ,int ,int *) ;
 struct al_ccu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
al_ccu_detach(device_t dev)
{
 struct al_ccu_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, al_ccu_spec, &sc->res);

 return (0);
}
