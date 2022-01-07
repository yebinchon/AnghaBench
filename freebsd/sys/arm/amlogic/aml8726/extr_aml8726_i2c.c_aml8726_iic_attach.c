
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_iic_softc {int res; int * iicbb; int dev; } ;
typedef int device_t ;


 int AML_I2C_LOCK_DESTROY (struct aml8726_iic_softc*) ;
 int AML_I2C_LOCK_INIT (struct aml8726_iic_softc*) ;
 int ENXIO ;
 int aml8726_iic_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 struct aml8726_iic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_probe_and_attach (int *) ;

__attribute__((used)) static int
aml8726_iic_attach(device_t dev)
{
 struct aml8726_iic_softc *sc = device_get_softc(dev);
 int error;

 sc->dev = dev;

 if (bus_alloc_resources(dev, aml8726_iic_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }

 AML_I2C_LOCK_INIT(sc);

 sc->iicbb = device_add_child(dev, "iicbb", -1);

 if (sc->iicbb == ((void*)0)) {
  device_printf(dev, "could not add iicbb\n");
  error = ENXIO;
  goto fail;
 }

 error = device_probe_and_attach(sc->iicbb);

 if (error) {
  device_printf(dev, "could not attach iicbb\n");
  goto fail;
 }

 return (0);

fail:
 AML_I2C_LOCK_DESTROY(sc);
 bus_release_resources(dev, aml8726_iic_spec, sc->res);

 return (error);
}
