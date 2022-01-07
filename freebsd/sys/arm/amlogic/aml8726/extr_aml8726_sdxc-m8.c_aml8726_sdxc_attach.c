
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int f_min; int f_max; int host_ocr; int caps; } ;
struct TYPE_6__ {int * dev; scalar_t__ pol; scalar_t__ pin; } ;
struct TYPE_5__ {int pol; int * dev; scalar_t__ pin; } ;
struct TYPE_8__ {scalar_t__ pin; int * dev; scalar_t__ pol; } ;
struct aml8726_sdxc_softc {int auto_fill_flush; int* voltages; int * res; scalar_t__ dmatag; scalar_t__ dmamap; scalar_t__ ih_cookie; TYPE_3__ host; int mtx; int ch; TYPE_2__ card_rst; TYPE_1__ vselect; TYPE_4__ pwr_en; scalar_t__ ref_freq; int dev; } ;
typedef int ssize_t ;
typedef int prop ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int AML_SDXC_ALIGN_DMA ;
 int AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 ;
 int AML_SDXC_ENH_CNTRL_REG ;
 int AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT ;
 int AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8 ;
 int AML_SDXC_ENH_CNTRL_SDIO_IRQ_PERIOD_SHIFT ;
 int AML_SDXC_ENH_CNTRL_WR_RESP_MODE_SKIP_M8M2 ;
 int AML_SDXC_LOCK_DESTROY (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_LOCK_INIT (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_MAX_DMA ;
 int AML_SDXC_MISC_REG ;
 int AML_SDXC_MISC_TXSTART_THOLD_SHIFT ;
 int AML_SDXC_MISC_WCRC_ERR_PAT_SHIFT ;
 int AML_SDXC_MISC_WCRC_OK_PAT_SHIFT ;
 int AML_SDXC_PDMA_DMA_URGENT ;
 int AML_SDXC_PDMA_RD_BURST_SHIFT ;
 int AML_SDXC_PDMA_REG ;
 int AML_SDXC_PDMA_RX_THOLD_SHIFT ;
 int AML_SDXC_PDMA_TX_THOLD_SHIFT ;
 int AML_SDXC_PDMA_WR_BURST_SHIFT ;



 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CALLOUT_RETURNUNLOCKED ;
 int CSR_WRITE_4 (struct aml8726_sdxc_softc*,int ,int) ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ GPIO_PIN_SET (int *,scalar_t__,int ) ;
 scalar_t__ GPIO_PIN_SETFLAGS (int *,scalar_t__,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_HSPEED ;
 int MMC_OCR_320_330 ;
 int MMC_OCR_330_340 ;
 int MMC_OCR_LOW_VOLTAGE ;
 void* OF_device_from_xref (scalar_t__) ;
 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int aml8726_sdxc_intr ;
 scalar_t__ aml8726_sdxc_power_off (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_soft_reset (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_spec ;
 int aml8726_soc_hw_rev ;
 int aml8726_soc_metal_rev ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_create (scalar_t__,int ,scalar_t__*) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct aml8726_sdxc_softc*,scalar_t__*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_add_child (int ,char*,int) ;
 struct aml8726_sdxc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
aml8726_sdxc_attach(device_t dev)
{
 struct aml8726_sdxc_softc *sc = device_get_softc(dev);
 char *voltages;
 char *voltage;
 int error;
 int nvoltages;
 pcell_t prop[3];
 phandle_t node;
 ssize_t len;
 device_t child;
 uint32_t ectlr;
 uint32_t miscr;
 uint32_t pdmar;

 sc->dev = dev;

 sc->auto_fill_flush = 0;

 pdmar = AML_SDXC_PDMA_DMA_URGENT |
     (49 << AML_SDXC_PDMA_TX_THOLD_SHIFT) |
     (7 << AML_SDXC_PDMA_RX_THOLD_SHIFT) |
     (15 << AML_SDXC_PDMA_RD_BURST_SHIFT) |
     (7 << AML_SDXC_PDMA_WR_BURST_SHIFT);

 miscr = (2 << AML_SDXC_MISC_WCRC_OK_PAT_SHIFT) |
     (5 << AML_SDXC_MISC_WCRC_ERR_PAT_SHIFT);

 ectlr = (12 << AML_SDXC_ENH_CNTRL_SDIO_IRQ_PERIOD_SHIFT);




 switch (aml8726_soc_hw_rev) {
 case 130:
  switch (aml8726_soc_metal_rev) {
  case 128:
   sc->auto_fill_flush = 1;
   miscr |= (6 << AML_SDXC_MISC_TXSTART_THOLD_SHIFT);
   ectlr |= (64 << AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT) |
       AML_SDXC_ENH_CNTRL_WR_RESP_MODE_SKIP_M8M2;
   break;
  default:
   miscr |= (7 << AML_SDXC_MISC_TXSTART_THOLD_SHIFT);
   ectlr |= (63 << AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT) |
       AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 |
       (255 << AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8);

   break;
  }
  break;
 case 129:
  miscr |= (7 << AML_SDXC_MISC_TXSTART_THOLD_SHIFT);
  ectlr |= (63 << AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT) |
      AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 |
      (255 << AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8);
  break;
 default:
  device_printf(dev, "unsupported SoC\n");
  return (ENXIO);

 }

 node = ofw_bus_get_node(dev);

 len = OF_getencprop(node, "clock-frequency", prop, sizeof(prop));
 if ((len / sizeof(prop[0])) != 1 || prop[0] == 0) {
  device_printf(dev,
      "missing clock-frequency attribute in FDT\n");
  return (ENXIO);
 }

 sc->ref_freq = prop[0];

 sc->pwr_en.dev = ((void*)0);

 len = OF_getencprop(node, "mmc-pwr-en", prop, sizeof(prop));
 if (len > 0) {
  if ((len / sizeof(prop[0])) == 3) {
   sc->pwr_en.dev = OF_device_from_xref(prop[0]);
   sc->pwr_en.pin = prop[1];
   sc->pwr_en.pol = prop[2];
  }

  if (sc->pwr_en.dev == ((void*)0)) {
   device_printf(dev,
       "unable to process mmc-pwr-en attribute in FDT\n");
   return (ENXIO);
  }


  if (aml8726_sdxc_power_off(sc) != 0 ||
      GPIO_PIN_SETFLAGS(sc->pwr_en.dev, sc->pwr_en.pin,
      GPIO_PIN_OUTPUT) != 0) {
   device_printf(dev,
       "could not use gpio to control power\n");
   return (ENXIO);
  }
 }

 len = OF_getprop_alloc(node, "mmc-voltages",
     (void **)&voltages);

 if (len < 0) {
  device_printf(dev, "missing mmc-voltages attribute in FDT\n");
  return (ENXIO);
 }

 sc->voltages[0] = 0;
 sc->voltages[1] = 0;

 voltage = voltages;
 nvoltages = 0;

 while (len && nvoltages < 2) {
  if (strncmp("1.8", voltage, len) == 0)
   sc->voltages[nvoltages] = MMC_OCR_LOW_VOLTAGE;
  else if (strncmp("3.3", voltage, len) == 0)
   sc->voltages[nvoltages] = MMC_OCR_320_330 |
       MMC_OCR_330_340;
  else {
   device_printf(dev,
       "unknown voltage attribute %.*s in FDT\n",
       len, voltage);
   OF_prop_free(voltages);
   return (ENXIO);
  }

  nvoltages++;


  while (*voltage && len) {
   voltage++;
   len--;
  }
  if (len) {
   voltage++;
   len--;
  }
 }

 OF_prop_free(voltages);

 sc->vselect.dev = ((void*)0);

 len = OF_getencprop(node, "mmc-vselect", prop, sizeof(prop));
 if (len > 0) {
  if ((len / sizeof(prop[0])) == 2) {
   sc->vselect.dev = OF_device_from_xref(prop[0]);
   sc->vselect.pin = prop[1];
   sc->vselect.pol = 1;
  }

  if (sc->vselect.dev == ((void*)0)) {
   device_printf(dev,
       "unable to process mmc-vselect attribute in FDT\n");
   return (ENXIO);
  }





  if (GPIO_PIN_SET(sc->vselect.dev, sc->vselect.pin, 0) != 0 ||
      GPIO_PIN_SETFLAGS(sc->vselect.dev, sc->vselect.pin,
      GPIO_PIN_OUTPUT) != 0) {
   device_printf(dev,
       "could not use gpio to set voltage\n");
   return (ENXIO);
  }
 }

 if (nvoltages == 0) {
  device_printf(dev, "no voltages in FDT\n");
  return (ENXIO);
 } else if (nvoltages == 1 && sc->vselect.dev != ((void*)0)) {
  device_printf(dev, "only one voltage in FDT\n");
  return (ENXIO);
 } else if (nvoltages == 2 && sc->vselect.dev == ((void*)0)) {
  device_printf(dev, "too many voltages in FDT\n");
  return (ENXIO);
 }

 sc->card_rst.dev = ((void*)0);

 len = OF_getencprop(node, "mmc-rst", prop, sizeof(prop));
 if (len > 0) {
  if ((len / sizeof(prop[0])) == 3) {
   sc->card_rst.dev = OF_device_from_xref(prop[0]);
   sc->card_rst.pin = prop[1];
   sc->card_rst.pol = prop[2];
  }

  if (sc->card_rst.dev == ((void*)0)) {
   device_printf(dev,
       "unable to process mmc-rst attribute in FDT\n");
   return (ENXIO);
  }
 }

 if (bus_alloc_resources(dev, aml8726_sdxc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 AML_SDXC_LOCK_INIT(sc);

 error = bus_dma_tag_create(bus_get_dma_tag(dev), AML_SDXC_ALIGN_DMA, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     AML_SDXC_MAX_DMA, 1, AML_SDXC_MAX_DMA, 0, ((void*)0), ((void*)0), &sc->dmatag);
 if (error)
  goto fail;

 error = bus_dmamap_create(sc->dmatag, 0, &sc->dmamap);

 if (error)
  goto fail;

 error = bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), aml8726_sdxc_intr, sc, &sc->ih_cookie);
 if (error) {
  device_printf(dev, "could not setup interrupt handler\n");
  goto fail;
 }

 callout_init_mtx(&sc->ch, &sc->mtx, CALLOUT_RETURNUNLOCKED);

 sc->host.f_min = 200000;
 sc->host.f_max = 100000000;
 sc->host.host_ocr = sc->voltages[0] | sc->voltages[1];
 sc->host.caps = MMC_CAP_8_BIT_DATA | MMC_CAP_4_BIT_DATA |
     MMC_CAP_HSPEED;

 aml8726_sdxc_soft_reset(sc);

 CSR_WRITE_4(sc, AML_SDXC_PDMA_REG, pdmar);

 CSR_WRITE_4(sc, AML_SDXC_MISC_REG, miscr);

 CSR_WRITE_4(sc, AML_SDXC_ENH_CNTRL_REG, ectlr);

 child = device_add_child(dev, "mmc", -1);

 if (!child) {
  device_printf(dev, "could not add mmc\n");
  error = ENXIO;
  goto fail;
 }

 error = device_probe_and_attach(child);

 if (error) {
  device_printf(dev, "could not attach mmc\n");
  goto fail;
 }

 return (0);

fail:
 if (sc->ih_cookie)
  bus_teardown_intr(dev, sc->res[1], sc->ih_cookie);

 if (sc->dmamap)
  bus_dmamap_destroy(sc->dmatag, sc->dmamap);

 if (sc->dmatag)
  bus_dma_tag_destroy(sc->dmatag);

 AML_SDXC_LOCK_DESTROY(sc);

 (void)aml8726_sdxc_power_off(sc);

 bus_release_resources(dev, aml8726_sdxc_spec, sc->res);

 return (error);
}
