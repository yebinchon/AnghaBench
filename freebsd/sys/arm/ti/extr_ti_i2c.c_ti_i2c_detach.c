
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_i2c_softc {scalar_t__ sc_iicbus; } ;
typedef int device_t ;


 int TI_I2C_LOCK_DESTROY (struct ti_i2c_softc*) ;
 int bus_generic_detach (int ) ;
 int device_delete_child (int ,scalar_t__) ;
 struct ti_i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ti_i2c_deactivate (int ) ;

__attribute__((used)) static int
ti_i2c_detach(device_t dev)
{
 struct ti_i2c_softc *sc;
 int rv;

  sc = device_get_softc(dev);

 if ((rv = bus_generic_detach(dev)) != 0) {
  device_printf(dev, "cannot detach child devices\n");
  return (rv);
 }

    if (sc->sc_iicbus &&
     (rv = device_delete_child(dev, sc->sc_iicbus)) != 0)
  return (rv);

 ti_i2c_deactivate(dev);
 TI_I2C_LOCK_DESTROY(sc);

 return (0);
}
