
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_service_softc {int res; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,int *) ;
 struct nb_service_softc* device_get_softc (int ) ;
 int nb_service_spec ;

__attribute__((used)) static int
nb_service_detach(device_t dev)
{
 struct nb_service_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, nb_service_spec, &sc->res);

 return (0);
}
