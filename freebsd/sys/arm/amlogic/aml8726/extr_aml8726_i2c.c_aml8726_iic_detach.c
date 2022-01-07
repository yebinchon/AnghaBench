
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_iic_softc {int res; scalar_t__ iicbb; } ;
typedef scalar_t__ device_t ;


 int AML_I2C_LOCK_DESTROY (struct aml8726_iic_softc*) ;
 int aml8726_iic_spec ;
 int bus_generic_detach (scalar_t__) ;
 int bus_release_resources (scalar_t__,int ,int ) ;
 int device_delete_child (scalar_t__,scalar_t__) ;
 struct aml8726_iic_softc* device_get_softc (scalar_t__) ;

__attribute__((used)) static int
aml8726_iic_detach(device_t dev)
{
 struct aml8726_iic_softc *sc = device_get_softc(dev);
 device_t child;
 child = sc->iicbb;
 bus_generic_detach(dev);
 if (child)
  device_delete_child(dev, child);

 AML_I2C_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_iic_spec, sc->res);

 return (0);
}
