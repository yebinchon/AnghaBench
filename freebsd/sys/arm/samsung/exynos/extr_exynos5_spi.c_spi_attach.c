
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_softc {int * res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int CH_CFG ;
 int ENXIO ;
 int FB_CLK_180 ;
 int FB_CLK_SEL ;
 int READ4 (struct spi_softc*,int ) ;
 int RX_CH_ON ;
 int TX_CH_ON ;
 int WRITE4 (struct spi_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int ) ;
 struct spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 struct spi_softc* spi_sc ;
 int spi_spec ;

__attribute__((used)) static int
spi_attach(device_t dev)
{
 struct spi_softc *sc;
 int reg;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, spi_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 spi_sc = sc;

 WRITE4(sc, FB_CLK_SEL, FB_CLK_180);

 reg = READ4(sc, CH_CFG);
 reg |= (RX_CH_ON | TX_CH_ON);
 WRITE4(sc, CH_CFG, reg);

 device_add_child(dev, "spibus", 0);
 return (bus_generic_attach(dev));
}
