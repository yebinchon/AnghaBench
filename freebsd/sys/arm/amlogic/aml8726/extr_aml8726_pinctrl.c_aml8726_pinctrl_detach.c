
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_pinctrl_softc {int res; } ;
typedef int device_t ;


 int AML_PINCTRL_LOCK_DESTROY (struct aml8726_pinctrl_softc*) ;
 int aml8726_pinctrl_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct aml8726_pinctrl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_pinctrl_detach(device_t dev)
{
 struct aml8726_pinctrl_softc *sc = device_get_softc(dev);

 AML_PINCTRL_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_pinctrl_spec, sc->res);

 return (0);
}
