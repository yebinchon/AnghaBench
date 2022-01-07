
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_spi_softc {int spibus; int clk_mod; int clk_ahb; int rst_ahb; int * res; int intrhand; int mtx; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int aw_spi_detach (int ) ;
 int aw_spi_intr ;
 int aw_spi_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct aw_spi_softc*,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct aw_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int *) ;
 int mtx_init (int *,int ,int *,int ) ;

__attribute__((used)) static int
aw_spi_attach(device_t dev)
{
 struct aw_spi_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 if (bus_alloc_resources(dev, aw_spi_spec, sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->res[1],
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), aw_spi_intr, sc,
     &sc->intrhand)) {
  bus_release_resources(dev, aw_spi_spec, sc->res);
  device_printf(dev, "cannot setup interrupt handler\n");
  return (ENXIO);
 }


 if (hwreset_get_by_ofw_idx(dev, 0, 0, &sc->rst_ahb) == 0) {
  error = hwreset_deassert(sc->rst_ahb);
  if (error != 0) {
   device_printf(dev, "cannot de-assert reset\n");
   goto fail;
  }
 }


 error = clk_get_by_ofw_name(dev, 0, "ahb", &sc->clk_ahb);
 if (error != 0) {
  device_printf(dev, "cannot get ahb clock\n");
  goto fail;
 }
 error = clk_get_by_ofw_name(dev, 0, "mod", &sc->clk_mod);
 if (error != 0) {
  device_printf(dev, "cannot get mod clock\n");
  goto fail;
 }
 error = clk_enable(sc->clk_ahb);
 if (error != 0) {
  device_printf(dev, "cannot enable ahb clock\n");
  goto fail;
 }
 error = clk_enable(sc->clk_mod);
 if (error != 0) {
  device_printf(dev, "cannot enable mod clock\n");
  goto fail;
 }

 sc->spibus = device_add_child(dev, "spibus", -1);

 return (0);

fail:
 aw_spi_detach(dev);
 return (error);
}
