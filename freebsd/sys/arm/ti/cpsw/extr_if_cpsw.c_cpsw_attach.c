
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int hdp_offset; int queue_slots; int active; int avail; int lock; } ;
struct cpsw_softc {int active_slave; int dualemac; TYPE_1__* port; TYPE_3__ rx; TYPE_3__ tx; int nullpad; int mbuf_dtag; int dev; int * mem_res; scalar_t__ mem_rid; int irq_res; int node; int attach_uptime; } ;
typedef int device_t ;
struct TYPE_5__ {int vid; } ;
struct TYPE_4__ {int * dev; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CPSW_CPDMA_RX_HDP (int ) ;
 int CPSW_CPDMA_TX_HDP (int ) ;
 int CPSW_PORTS ;
 int CPSW_SS_IDVER ;
 int CPSW_TXFRAGS ;
 int CPSW_VLANS ;
 int ENOMEM ;
 int ENXIO ;
 int ETHER_MIN_LEN ;
 int MCLBYTES ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int RF_ACTIVE ;
 int STAILQ_INIT (int *) ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_alloc_resources (int ,int ,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ cpsw_add_slots (struct cpsw_softc*,TYPE_3__*,int) ;
 int cpsw_add_sysctls (struct cpsw_softc*) ;
 int cpsw_detach (int ) ;
 scalar_t__ cpsw_get_fdt_data (struct cpsw_softc*,int) ;
 int cpsw_init (struct cpsw_softc*) ;
 int cpsw_init_slots (struct cpsw_softc*) ;
 int cpsw_intr_attach (struct cpsw_softc*) ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpsw_reset (struct cpsw_softc*) ;
 TYPE_2__* cpsw_vgroups ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct cpsw_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int getbinuptime (int *) ;
 int irq_res_spec ;
 int malloc (int ,int ,int) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
cpsw_attach(device_t dev)
{
 int error, i;
 struct cpsw_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->node = ofw_bus_get_node(dev);
 getbinuptime(&sc->attach_uptime);

 if (OF_getencprop(sc->node, "active_slave", &sc->active_slave,
     sizeof(sc->active_slave)) <= 0) {
  sc->active_slave = 0;
 }
 if (sc->active_slave > 1)
  sc->active_slave = 1;

 if (OF_hasprop(sc->node, "dual_emac"))
  sc->dualemac = 1;

 for (i = 0; i < CPSW_PORTS; i++) {
  if (!sc->dualemac && i != sc->active_slave)
   continue;
  if (cpsw_get_fdt_data(sc, i) != 0) {
   device_printf(dev,
       "failed to get PHY address from FDT\n");
   return (ENXIO);
  }
 }


 mtx_init(&sc->tx.lock, device_get_nameunit(dev),
     "cpsw TX lock", MTX_DEF);
 mtx_init(&sc->rx.lock, device_get_nameunit(dev),
     "cpsw RX lock", MTX_DEF);


 error = bus_alloc_resources(dev, irq_res_spec, sc->irq_res);
 if (error) {
  device_printf(dev, "could not allocate IRQ resources\n");
  cpsw_detach(dev);
  return (ENXIO);
 }

 sc->mem_rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->mem_rid, RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(sc->dev, "failed to allocate memory resource\n");
  cpsw_detach(dev);
  return (ENXIO);
 }

 reg = cpsw_read_4(sc, CPSW_SS_IDVER);
 device_printf(dev, "CPSW SS Version %d.%d (%d)\n", (reg >> 8 & 0x7),
  reg & 0xFF, (reg >> 11) & 0x1F);

 cpsw_add_sysctls(sc);


 error = bus_dma_tag_create(
  bus_get_dma_tag(sc->dev),
  1, 0,
  BUS_SPACE_MAXADDR_32BIT,
  BUS_SPACE_MAXADDR,
  ((void*)0), ((void*)0),
  MCLBYTES, CPSW_TXFRAGS,
  MCLBYTES, 0,
  ((void*)0), ((void*)0),
  &sc->mbuf_dtag);
 if (error) {
  device_printf(dev, "bus_dma_tag_create failed\n");
  cpsw_detach(dev);
  return (error);
 }


 sc->nullpad = malloc(ETHER_MIN_LEN, M_DEVBUF, M_WAITOK | M_ZERO);

 cpsw_init_slots(sc);


 STAILQ_INIT(&sc->rx.avail);
 STAILQ_INIT(&sc->rx.active);
 STAILQ_INIT(&sc->tx.avail);
 STAILQ_INIT(&sc->tx.active);


 if (cpsw_add_slots(sc, &sc->tx, 128) ||
     cpsw_add_slots(sc, &sc->rx, -1)) {
  device_printf(dev, "failed to allocate dmamaps\n");
  cpsw_detach(dev);
  return (ENOMEM);
 }
 device_printf(dev, "Initial queue size TX=%d RX=%d\n",
     sc->tx.queue_slots, sc->rx.queue_slots);

 sc->tx.hdp_offset = CPSW_CPDMA_TX_HDP(0);
 sc->rx.hdp_offset = CPSW_CPDMA_RX_HDP(0);

 if (cpsw_intr_attach(sc) == -1) {
  device_printf(dev, "failed to setup interrupts\n");
  cpsw_detach(dev);
  return (ENXIO);
 }







 cpsw_reset(sc);
 cpsw_init(sc);

 for (i = 0; i < CPSW_PORTS; i++) {
  if (!sc->dualemac && i != sc->active_slave)
   continue;
  sc->port[i].dev = device_add_child(dev, "cpsw", i);
  if (sc->port[i].dev == ((void*)0)) {
   cpsw_detach(dev);
   return (ENXIO);
  }
 }
 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return (0);
}
