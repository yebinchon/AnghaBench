
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2c_softc {int * iicbus; int * sclk; int * pclk; int * res; int intrhand; int mtx; int dev; } ;
typedef int device_t ;


 int ENOENT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct rk_i2c_softc*,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_set_assigned (int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct rk_i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ rk_i2c_detach (int ) ;
 int rk_i2c_intr ;
 int rk_i2c_spec ;

__attribute__((used)) static int
rk_i2c_attach(device_t dev)
{
 struct rk_i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->mtx, device_get_nameunit(dev), "rk_i2c", MTX_DEF);

 if (bus_alloc_resources(dev, rk_i2c_spec, sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->res[1],
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), rk_i2c_intr, sc,
     &sc->intrhand)) {
  bus_release_resources(dev, rk_i2c_spec, sc->res);
  device_printf(dev, "cannot setup interrupt handler\n");
  return (ENXIO);
 }

 clk_set_assigned(dev, ofw_bus_get_node(dev));


 error = clk_get_by_ofw_name(dev, 0, "i2c", &sc->sclk);
 if (error != 0) {
  device_printf(dev, "cannot get i2c clock\n");
  goto fail;
 }
 error = clk_enable(sc->sclk);
 if (error != 0) {
  device_printf(dev, "cannot enable i2c clock\n");
  goto fail;
 }

 error = clk_get_by_ofw_name(dev, 0, "pclk", &sc->pclk);
 if (error != 0 && error != ENOENT) {
  device_printf(dev, "cannot get pclk clock\n");
  goto fail;
 }
 if (sc->sclk != ((void*)0)) {
  error = clk_enable(sc->sclk);
  if (error != 0) {
   device_printf(dev, "cannot enable pclk clock\n");
   goto fail;
  }
 }

 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "cannot add iicbus child device\n");
  error = ENXIO;
  goto fail;
 }

 bus_generic_attach(dev);

 return (0);

fail:
 if (rk_i2c_detach(dev) != 0)
  device_printf(dev, "Failed to detach\n");
 return (error);
}
