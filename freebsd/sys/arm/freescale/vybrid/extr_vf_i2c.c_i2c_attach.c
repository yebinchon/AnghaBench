
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; int * iicbus; int * res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int I2C_IBIC ;
 int IBIC_BIIE ;
 int MTX_DEF ;
 int WRITE1 (struct i2c_softc*,int ,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int i2c_spec ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
i2c_attach(device_t dev)
{
 struct i2c_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->mutex, device_get_nameunit(dev), "I2C", MTX_DEF);

 if (bus_alloc_resources(dev, i2c_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 WRITE1(sc, I2C_IBIC, IBIC_BIIE);

 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "could not add iicbus child");
  mtx_destroy(&sc->mutex);
  return (ENXIO);
 }

 bus_generic_attach(dev);

 return (0);
}
