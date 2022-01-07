
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int host_ocr; int caps; void* f_max; void* f_min; } ;
struct TYPE_4__ {int pol; int * dev; scalar_t__ pin; } ;
struct TYPE_6__ {scalar_t__ pin; int * dev; scalar_t__ pol; } ;
struct aml8726_mmc_softc {scalar_t__ ref_freq; int* voltages; int * res; scalar_t__ dmatag; scalar_t__ dmamap; scalar_t__ ih_cookie; TYPE_2__ host; int mtx; int ch; TYPE_1__ vselect; TYPE_3__ pwr_en; int port; int dev; } ;
typedef int ssize_t ;
typedef int prop ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int AML_MMC_ALIGN_DMA ;
 int AML_MMC_LOCK_DESTROY (struct aml8726_mmc_softc*) ;
 int AML_MMC_LOCK_INIT (struct aml8726_mmc_softc*) ;
 int AML_MMC_MAX_DMA ;
 int AML_MMC_MULT_CONFIG_PORT_A ;
 int AML_MMC_MULT_CONFIG_PORT_B ;
 int AML_MMC_MULT_CONFIG_PORT_C ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CALLOUT_RETURNUNLOCKED ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ GPIO_PIN_SET (int *,scalar_t__,int ) ;
 scalar_t__ GPIO_PIN_SETFLAGS (int *,scalar_t__,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_HSPEED ;
 int MMC_OCR_320_330 ;
 int MMC_OCR_330_340 ;
 int MMC_OCR_LOW_VOLTAGE ;
 void* OF_device_from_xref (scalar_t__) ;
 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_node_from_xref (scalar_t__) ;
 int OF_prop_free (char*) ;
 scalar_t__ aml8726_mmc_clk (int ) ;
 int aml8726_mmc_div (struct aml8726_mmc_softc*,int) ;
 void* aml8726_mmc_freq (struct aml8726_mmc_softc*,int ) ;
 int aml8726_mmc_intr ;
 scalar_t__ aml8726_mmc_power_off (struct aml8726_mmc_softc*) ;
 int aml8726_mmc_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_create (scalar_t__,int ,scalar_t__*) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct aml8726_mmc_softc*,scalar_t__*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_add_child (int ,char*,int) ;
 struct aml8726_mmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
aml8726_mmc_attach(device_t dev)
{
 struct aml8726_mmc_softc *sc = device_get_softc(dev);
 char *function_name;
 char *voltages;
 char *voltage;
 int error;
 int nvoltages;
 pcell_t prop[3];
 phandle_t node;
 ssize_t len;
 device_t child;

 sc->dev = dev;

 node = ofw_bus_get_node(dev);

 sc->ref_freq = aml8726_mmc_clk(node);

 if (sc->ref_freq == 0) {
  device_printf(dev, "missing clocks attribute in FDT\n");
  return (ENXIO);
 }






 len = OF_getencprop(node, "pinctrl-0", prop, sizeof(prop));

 if ((len / sizeof(prop[0])) != 1 || prop[0] == 0) {
  device_printf(dev, "missing pinctrl-0 attribute in FDT\n");
  return (ENXIO);
 }

 len = OF_getprop_alloc(OF_node_from_xref(prop[0]), "amlogic,function",
     (void **)&function_name);

 if (len < 0) {
  device_printf(dev,
      "missing amlogic,function attribute in FDT\n");
  return (ENXIO);
 }

 if (strncmp("sdio-a", function_name, len) == 0)
  sc->port = AML_MMC_MULT_CONFIG_PORT_A;
 else if (strncmp("sdio-b", function_name, len) == 0)
  sc->port = AML_MMC_MULT_CONFIG_PORT_B;
 else if (strncmp("sdio-c", function_name, len) == 0)
  sc->port = AML_MMC_MULT_CONFIG_PORT_C;
 else {
  device_printf(dev, "unknown function attribute %.*s in FDT\n",
      len, function_name);
  OF_prop_free(function_name);
  return (ENXIO);
 }

 OF_prop_free(function_name);

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


  if (aml8726_mmc_power_off(sc) != 0 ||
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

 if (bus_alloc_resources(dev, aml8726_mmc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 AML_MMC_LOCK_INIT(sc);

 error = bus_dma_tag_create(bus_get_dma_tag(dev), AML_MMC_ALIGN_DMA, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     AML_MMC_MAX_DMA, 1, AML_MMC_MAX_DMA, 0, ((void*)0), ((void*)0), &sc->dmatag);
 if (error)
  goto fail;

 error = bus_dmamap_create(sc->dmatag, 0, &sc->dmamap);

 if (error)
  goto fail;

 error = bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), aml8726_mmc_intr, sc, &sc->ih_cookie);
 if (error) {
  device_printf(dev, "could not setup interrupt handler\n");
  goto fail;
 }

 callout_init_mtx(&sc->ch, &sc->mtx, CALLOUT_RETURNUNLOCKED);

 sc->host.f_min = aml8726_mmc_freq(sc, aml8726_mmc_div(sc, 200000));
 sc->host.f_max = aml8726_mmc_freq(sc, aml8726_mmc_div(sc, 50000000));
 sc->host.host_ocr = sc->voltages[0] | sc->voltages[1];
 sc->host.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_HSPEED;

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

 AML_MMC_LOCK_DESTROY(sc);

 aml8726_mmc_power_off(sc);

 bus_release_resources(dev, aml8726_mmc_spec, sc->res);

 return (error);
}
