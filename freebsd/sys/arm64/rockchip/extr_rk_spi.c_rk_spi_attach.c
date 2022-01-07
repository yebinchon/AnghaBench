
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_spi_softc {int fifo_size; int spibus; int max_freq; int clk_spi; int clk_apb; int * res; int intrhand; int mtx; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int RK_SPI_IMR ;
 int RK_SPI_RXFTLR ;
 int RK_SPI_TXFTLR ;
 int RK_SPI_WRITE_4 (struct rk_spi_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct rk_spi_softc*,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_get_freq (int ,int *) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct rk_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,int *,int ) ;
 int rk_spi_detach (int ) ;
 int rk_spi_fifo_size (struct rk_spi_softc*) ;
 int rk_spi_intr ;
 int rk_spi_spec ;

__attribute__((used)) static int
rk_spi_attach(device_t dev)
{
 struct rk_spi_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 if (bus_alloc_resources(dev, rk_spi_spec, sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->res[1],
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), rk_spi_intr, sc,
     &sc->intrhand)) {
  bus_release_resources(dev, rk_spi_spec, sc->res);
  device_printf(dev, "cannot setup interrupt handler\n");
  return (ENXIO);
 }


 error = clk_get_by_ofw_name(dev, 0, "apb_pclk", &sc->clk_apb);
 if (error != 0) {
  device_printf(dev, "cannot get apb_pclk clock\n");
  goto fail;
 }
 error = clk_get_by_ofw_name(dev, 0, "spiclk", &sc->clk_spi);
 if (error != 0) {
  device_printf(dev, "cannot get spiclk clock\n");
  goto fail;
 }
 error = clk_enable(sc->clk_apb);
 if (error != 0) {
  device_printf(dev, "cannot enable ahb clock\n");
  goto fail;
 }
 error = clk_enable(sc->clk_spi);
 if (error != 0) {
  device_printf(dev, "cannot enable spiclk clock\n");
  goto fail;
 }
 clk_get_freq(sc->clk_spi, &sc->max_freq);

 sc->fifo_size = rk_spi_fifo_size(sc);
 if (sc->fifo_size == 0) {
  device_printf(dev, "failed to get fifo size\n");
  goto fail;
 }

 sc->spibus = device_add_child(dev, "spibus", -1);

 RK_SPI_WRITE_4(sc, RK_SPI_IMR, 0);
 RK_SPI_WRITE_4(sc, RK_SPI_TXFTLR, sc->fifo_size/2 - 1);
 RK_SPI_WRITE_4(sc, RK_SPI_RXFTLR, sc->fifo_size/2 - 1);

 return (bus_generic_attach(dev));

fail:
 rk_spi_detach(dev);
 return (error);
}
