
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_spi_softc {int sc_mtx; void* sc_mem_res; void* sc_irq_res; int sc_intrhand; int sc_bsh; int sc_bst; int sc_dev; } ;
typedef int ich_func_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int MV_SPI_CONF ;
 int MV_SPI_CONF_BYTELEN ;
 int MV_SPI_CONTROL ;
 int MV_SPI_CTRL_CS_ACTIVE ;
 int MV_SPI_INTR_MASK ;
 int MV_SPI_INTR_STAT ;
 int MV_SPI_READ (struct mv_spi_softc*,int ) ;
 int MV_SPI_WRITE (struct mv_spi_softc*,int ,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_generic_attach ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct mv_spi_softc*,int *) ;
 int config_intrhook_oneshot (int ,int ) ;
 int device_add_child (int ,char*,int) ;
 struct mv_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mv_spi_intr ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;

__attribute__((used)) static int
mv_spi_attach(device_t dev)
{
 struct mv_spi_softc *sc;
 int rid;
 uint32_t reg;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 sc->sc_bst = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_mem_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }


 reg = MV_SPI_READ(sc, MV_SPI_CONTROL);
 MV_SPI_WRITE(sc, MV_SPI_CONTROL, reg & ~MV_SPI_CTRL_CS_ACTIVE);


 reg = MV_SPI_READ(sc, MV_SPI_CONF);
 MV_SPI_WRITE(sc, MV_SPI_CONF, reg & ~MV_SPI_CONF_BYTELEN);


 MV_SPI_WRITE(sc, MV_SPI_INTR_MASK, 0);
 MV_SPI_WRITE(sc, MV_SPI_INTR_STAT, 0);


 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), mv_spi_intr, sc, &sc->sc_intrhand)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot setup the interrupt handler\n");
  return (ENXIO);
 }

 mtx_init(&sc->sc_mtx, "mv_spi", ((void*)0), MTX_DEF);

 device_add_child(dev, "spibus", -1);


 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);

 return (0);
}
