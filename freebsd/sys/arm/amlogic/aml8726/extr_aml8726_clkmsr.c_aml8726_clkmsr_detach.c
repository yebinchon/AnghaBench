
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_clkmsr_softc {int res; } ;
typedef int device_t ;


 int aml8726_clkmsr_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct aml8726_clkmsr_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_clkmsr_detach(device_t dev)
{
 struct aml8726_clkmsr_softc *sc = device_get_softc(dev);

 bus_release_resources(dev, aml8726_clkmsr_spec, sc->res);

 return (0);
}
