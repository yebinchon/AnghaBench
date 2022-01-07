
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int CTAR_CPHA ;
 int CTAR_CPOL ;
 int CTAR_FMSZ_8 ;
 int CTAR_FMSZ_M ;
 int CTAR_FMSZ_S ;
 int CTAR_LSBFE ;
 int CTAR_PBR_7 ;
 int CTAR_PBR_M ;
 int CTAR_PBR_S ;
 int ENXIO ;
 int MCR_CLR_RXF ;
 int MCR_CLR_TXF ;
 int MCR_CONT_SCKE ;
 int MCR_FRZ ;
 int MCR_HALT ;
 int MCR_MDIS ;
 int MCR_MSTR ;
 int MCR_PCSIS_M ;
 int MCR_PCSIS_S ;
 int READ4 (struct spi_softc*,int ) ;
 int RSER_EOQF_RE ;
 int SPI_CTAR0 ;
 int SPI_MCR ;
 int SPI_RSER ;
 int WRITE4 (struct spi_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int ) ;
 struct spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int spi_spec ;

__attribute__((used)) static int
spi_attach(device_t dev)
{
 struct spi_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, spi_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 reg = READ4(sc, SPI_MCR);
 reg |= MCR_MSTR;
 reg &= ~(MCR_CONT_SCKE | MCR_MDIS | MCR_FRZ);
 reg &= ~(MCR_PCSIS_M << MCR_PCSIS_S);
 reg |= (MCR_PCSIS_M << MCR_PCSIS_S);
 reg |= (MCR_CLR_TXF | MCR_CLR_RXF);
 WRITE4(sc, SPI_MCR, reg);

 reg = READ4(sc, SPI_RSER);
 reg |= RSER_EOQF_RE;
 WRITE4(sc, SPI_RSER, reg);

 reg = READ4(sc, SPI_MCR);
 reg &= ~MCR_HALT;
 WRITE4(sc, SPI_MCR, reg);

 reg = READ4(sc, SPI_CTAR0);
 reg &= ~(CTAR_FMSZ_M << CTAR_FMSZ_S);
 reg |= (CTAR_FMSZ_8 << CTAR_FMSZ_S);






 reg &= ~CTAR_CPOL;
 reg |= CTAR_CPHA;




 reg |= CTAR_LSBFE;
 WRITE4(sc, SPI_CTAR0, reg);

 reg = READ4(sc, SPI_CTAR0);
 reg &= ~(CTAR_PBR_M << CTAR_PBR_S);
 reg |= (CTAR_PBR_7 << CTAR_PBR_S);
 WRITE4(sc, SPI_CTAR0, reg);

 device_add_child(dev, "spibus", 0);
 return (bus_generic_attach(dev));
}
