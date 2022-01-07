
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int * res; int rb_sdapin; int rb_sclpin; int * iicbus; int dev; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 struct i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int gpio_pin_release (int ) ;

__attribute__((used)) static int
i2c_detach(device_t dev)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(sc->dev)) != 0) {
  device_printf(sc->dev, "cannot detach child devices\n");
  return (error);
 }

 if (sc->iicbus != ((void*)0))
  device_delete_child(dev, sc->iicbus);


 gpio_pin_release(sc->rb_sclpin);
 gpio_pin_release(sc->rb_sdapin);

 if (sc->res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->res);

 return (0);
}
