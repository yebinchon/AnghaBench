
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsb_softc {int mtx; int * clk; int * rst; int res; int * iicbus; int type; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 int MTX_DEF ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int clk_enable (int *) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int ,int **) ;
 int clk_release (int *) ;
 int compat_data ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct rsb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int *) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int **) ;
 int hwreset_release (int *) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int rsb_spec ;

__attribute__((used)) static int
rsb_attach(device_t dev)
{
 struct rsb_softc *sc;
 int error;

 sc = device_get_softc(dev);
 mtx_init(&sc->mtx, device_get_nameunit(dev), "rsb", MTX_DEF);

 sc->type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 if (clk_get_by_ofw_index(dev, 0, 0, &sc->clk) == 0) {
  error = clk_enable(sc->clk);
  if (error != 0) {
   device_printf(dev, "cannot enable clock\n");
   goto fail;
  }
 }
 if (hwreset_get_by_ofw_idx(dev, 0, 0, &sc->rst) == 0) {
  error = hwreset_deassert(sc->rst);
  if (error != 0) {
   device_printf(dev, "cannot de-assert reset\n");
   goto fail;
  }
 }

 if (bus_alloc_resources(dev, rsb_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
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
 bus_release_resources(dev, rsb_spec, &sc->res);
 if (sc->rst != ((void*)0))
  hwreset_release(sc->rst);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 mtx_destroy(&sc->mtx);
 return (error);
}
