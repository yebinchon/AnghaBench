
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_5__ {int caps; int quirks; int opt; } ;
struct bcm_sdhci_softc {scalar_t__ sc_dma_ch; void* sc_mem_res; void* sc_irq_res; scalar_t__ sc_intrhand; TYPE_1__ sc_slot; void* cmd_and_mode; void* blksz_and_count; scalar_t__ sc_sdhci_buffer_phys; int sc_dma_map; int sc_dma_tag; struct bcm_mmc_conf* conf; int sc_bsh; int sc_bst; int * clkman; int sc_dev; int * sc_req; } ;
struct bcm_mmc_conf {int default_freq; scalar_t__ clock_src; scalar_t__ use_dma; int quirks; int clock_id; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
typedef int cell ;
struct TYPE_6__ {scalar_t__ ocd_data; } ;


 int BCM2835_MBOX_POWER_ID_EMMC ;
 int BCM_DMA_CH_ANY ;
 scalar_t__ BCM_DMA_CH_INVALID ;
 int BCM_SDHCI_BUFFER_SIZE ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EINVAL ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int NUM_DMA_SEGS ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SDHCI_BLOCK_SIZE ;
 scalar_t__ SDHCI_BUFFER ;
 int SDHCI_CAN_DO_HISPD ;
 int SDHCI_CAN_VDD_180 ;
 int SDHCI_CAN_VDD_330 ;
 int SDHCI_CLOCK_BASE_SHIFT ;
 int SDHCI_PLATFORM_TRANSFER ;
 void* SDHCI_READ_4 (int ,TYPE_1__*,int ) ;
 int SDHCI_TRANSFER_MODE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int bcm2835_clkman_set_frequency (int *,scalar_t__,int) ;
 int bcm2835_mbox_get_clock_rate (int ,int*) ;
 int bcm2835_mbox_set_power_state (int ,int ) ;
 scalar_t__ bcm2835_sdhci_hs ;
 int bcm2835_sdhci_pio_mode ;
 scalar_t__ bcm_dma_allocate (int ) ;
 scalar_t__ bcm_dma_setup_intr (scalar_t__,int ,struct bcm_sdhci_softc*) ;
 int bcm_sdhci_dma_intr ;
 int bcm_sdhci_intr ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct bcm_sdhci_softc*,scalar_t__*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int compat_data ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 struct bcm_sdhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 TYPE_3__* ofw_bus_search_compatible (int ,int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 scalar_t__ rman_get_start (void*) ;
 int sdhci_init_slot (int ,TYPE_1__*,int ) ;
 int sdhci_start_slot (TYPE_1__*) ;

__attribute__((used)) static int
bcm_sdhci_attach(device_t dev)
{
 struct bcm_sdhci_softc *sc = device_get_softc(dev);
 int rid, err;
 phandle_t node;
 pcell_t cell;
 u_int default_freq;

 sc->sc_dev = dev;
 sc->sc_req = ((void*)0);

 sc->conf = (struct bcm_mmc_conf *)ofw_bus_search_compatible(dev,
     compat_data)->ocd_data;
 if (sc->conf == 0)
     return (ENXIO);

 err = bcm2835_mbox_set_power_state(BCM2835_MBOX_POWER_ID_EMMC, TRUE);
 if (err != 0) {
  if (bootverbose)
   device_printf(dev, "Unable to enable the power\n");
  return (err);
 }

 default_freq = 0;
 err = bcm2835_mbox_get_clock_rate(sc->conf->clock_id, &default_freq);
 if (err == 0) {

  default_freq /= 1000000;
 }
 if (default_freq == 0) {
  node = ofw_bus_get_node(sc->sc_dev);
  if ((OF_getencprop(node, "clock-frequency", &cell,
      sizeof(cell))) > 0)
   default_freq = cell / 1000000;
 }
 if (default_freq == 0)
  default_freq = sc->conf->default_freq;

 if (bootverbose)
  device_printf(dev, "SDHCI frequency: %dMHz\n", default_freq);
 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  err = ENXIO;
  goto fail;
 }

 sc->sc_bst = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_mem_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!sc->sc_irq_res) {
  device_printf(dev, "cannot allocate interrupt\n");
  err = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), bcm_sdhci_intr, sc, &sc->sc_intrhand)) {
  device_printf(dev, "cannot setup interrupt handler\n");
  err = ENXIO;
  goto fail;
 }

 if (!bcm2835_sdhci_pio_mode)
  sc->sc_slot.opt = SDHCI_PLATFORM_TRANSFER;

 sc->sc_slot.caps = SDHCI_CAN_VDD_330 | SDHCI_CAN_VDD_180;
 if (bcm2835_sdhci_hs)
  sc->sc_slot.caps |= SDHCI_CAN_DO_HISPD;
 sc->sc_slot.caps |= (default_freq << SDHCI_CLOCK_BASE_SHIFT);
 sc->sc_slot.quirks = sc->conf->quirks;

 sdhci_init_slot(dev, &sc->sc_slot, 0);

 if (sc->conf->use_dma) {
  sc->sc_dma_ch = bcm_dma_allocate(BCM_DMA_CH_ANY);
  if (sc->sc_dma_ch == BCM_DMA_CH_INVALID)
   goto fail;

  if (bcm_dma_setup_intr(sc->sc_dma_ch, bcm_sdhci_dma_intr, sc) != 0) {
   device_printf(dev, "cannot setup dma interrupt handler\n");
   err = ENXIO;
   goto fail;
  }


  err = bus_dma_tag_create(bus_get_dma_tag(dev),
      1, 0, BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
      BCM_SDHCI_BUFFER_SIZE, NUM_DMA_SEGS, BCM_SDHCI_BUFFER_SIZE,
      BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0),
      &sc->sc_dma_tag);

  if (err) {
   device_printf(dev, "failed allocate DMA tag");
   goto fail;
  }

  err = bus_dmamap_create(sc->sc_dma_tag, 0, &sc->sc_dma_map);
  if (err) {
   device_printf(dev, "bus_dmamap_create failed\n");
   goto fail;
  }
 }


 sc->sc_sdhci_buffer_phys = rman_get_start(sc->sc_mem_res) +
     SDHCI_BUFFER;

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 sdhci_start_slot(&sc->sc_slot);


 sc->blksz_and_count = SDHCI_READ_4(dev, &sc->sc_slot, SDHCI_BLOCK_SIZE);
 sc->cmd_and_mode = SDHCI_READ_4(dev, &sc->sc_slot, SDHCI_TRANSFER_MODE);

 return (0);

fail:
 if (sc->sc_intrhand)
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intrhand);
 if (sc->sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (err);
}
