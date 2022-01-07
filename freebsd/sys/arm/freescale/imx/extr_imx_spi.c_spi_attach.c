
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_softc {int debug; int spibus; int dev; int * cspins; int inthandle; int * intres; int * memres; int mtx; int basefreq; } ;
typedef int phandle_t ;
typedef int ich_func_t ;
typedef int device_t ;


 int CTLFLAG_RWTUN ;
 int CTLREG_CMODES_MASTER ;
 int ECSPI_CTLREG ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WR4 (struct spi_softc*,int ,int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_generic_attach ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct spi_softc*,int *) ;
 int config_intrhook_oneshot (int ,int ) ;
 int device_add_child (int ,char*,int) ;
 int device_detach (int ) ;
 int device_get_nameunit (int ) ;
 struct spi_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int gpio_pin_get_by_ofw_propidx (int ,int ,char*,int,int *) ;
 int gpio_pin_setflags (int ,int ) ;
 int imx_ccm_ecspi_hz () ;
 int mtx_init (int *,int ,int *,int ) ;
 int nitems (int *) ;
 int ofw_bus_get_node (int ) ;
 int spi_detach (int ) ;
 int spi_intr ;

__attribute__((used)) static int
spi_attach(device_t dev)
{
 struct spi_softc *sc = device_get_softc(dev);
 phandle_t node;
 int err, idx, rid;

 sc->dev = dev;
 sc->basefreq = imx_ccm_ecspi_hz();

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);


 SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
     OID_AUTO, "debug", CTLFLAG_RWTUN, &sc->debug, 0,
     "Enable debug, higher values = more info");


 rid = 0;
 sc->memres = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->memres == ((void*)0)) {
  device_printf(sc->dev, "could not allocate registers\n");
  spi_detach(sc->dev);
  return (ENXIO);
 }


 rid = 0;
 sc->intres = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->intres == ((void*)0)) {
  device_printf(sc->dev, "could not allocate interrupt\n");
  device_detach(sc->dev);
  return (ENXIO);
 }
 err = bus_setup_intr(sc->dev, sc->intres, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), spi_intr, sc, &sc->inthandle);
 if (err != 0) {
  device_printf(sc->dev, "could not setup interrupt handler");
  device_detach(sc->dev);
  return (ENXIO);
 }


 node = ofw_bus_get_node(sc->dev);
 for (idx = 0; idx < nitems(sc->cspins); ++idx) {
  err = gpio_pin_get_by_ofw_propidx(sc->dev, node, "cs-gpios",
      idx, &sc->cspins[idx]);
  if (err == 0) {
   gpio_pin_setflags(sc->cspins[idx], GPIO_PIN_OUTPUT);
  } else if (sc->debug >= 2) {
   device_printf(sc->dev,
       "cannot configure gpio for chip select %u\n", idx);
  }
 }





 WR4(sc, ECSPI_CTLREG, CTLREG_CMODES_MASTER);







 sc->spibus = device_add_child(dev, "spibus", -1);
 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);

 return (0);
}
