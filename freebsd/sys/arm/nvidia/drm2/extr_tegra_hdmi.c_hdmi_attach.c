
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct hdmi_softc {int audio_freq; int audio_chans; int hdmi_mode; int * mem_res; int * irq_res; int * supply_vdd; int * supply_pll; int * supply_hdmi; int * hwreset_hdmi; int * clk_hdmi; int * clk_parent; int * irq_ih; int dev; int n_tmds_configs; int tmds_config; int audio_src_type; TYPE_1__ output; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SOURCE_SELECT_AUTO ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TEGRA_DRM_DEREGISTER_CLIENT (int ,int ) ;
 int TEGRA_DRM_REGISTER_CLIENT (int ,int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct hdmi_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_release (int *) ;
 int device_get_parent (int ) ;
 struct hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int enable_fdt_resources (struct hdmi_softc*) ;
 int get_fdt_resources (struct hdmi_softc*,int ) ;
 int hdmi_intr ;
 int hwreset_release (int *) ;
 int nitems (int ) ;
 int ofw_bus_get_node (int ) ;
 int regulator_release (int *) ;
 int tegra124_tmds_config ;

__attribute__((used)) static int
hdmi_attach(device_t dev)
{
 struct hdmi_softc *sc;
 phandle_t node;
 int rid, rv;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->output.dev = sc->dev;
 node = ofw_bus_get_node(sc->dev);

 sc->audio_src_type = SOURCE_SELECT_AUTO;
 sc->audio_freq = 44100;
 sc->audio_chans = 2;
 sc->hdmi_mode = 0;

 sc->tmds_config = tegra124_tmds_config;
 sc->n_tmds_configs = nitems(tegra124_tmds_config);

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  goto fail;
 }

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate IRQ resources\n");
  goto fail;
 }

 rv = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), hdmi_intr, sc, &sc->irq_ih);
 if (rv != 0) {
  device_printf(dev,
      "WARNING: unable to register interrupt handler\n");
  goto fail;
 }

 rv = get_fdt_resources(sc, node);
 if (rv != 0) {
  device_printf(dev, "Cannot parse FDT resources\n");
  goto fail;
 }
 rv = enable_fdt_resources(sc);
 if (rv != 0) {
  device_printf(dev, "Cannot enable FDT resources\n");
  goto fail;
 }

 rv = TEGRA_DRM_REGISTER_CLIENT(device_get_parent(sc->dev), sc->dev);
 if (rv != 0) {
  device_printf(dev, "Cannot register DRM device\n");
  goto fail;
 }
 return (bus_generic_attach(dev));

fail:
 TEGRA_DRM_DEREGISTER_CLIENT(device_get_parent(sc->dev), sc->dev);

 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 if (sc->clk_parent != ((void*)0))
  clk_release(sc->clk_parent);
 if (sc->clk_hdmi != ((void*)0))
  clk_release(sc->clk_hdmi);
 if (sc->hwreset_hdmi != ((void*)0))
  hwreset_release(sc->hwreset_hdmi);
 if (sc->supply_hdmi != ((void*)0))
  regulator_release(sc->supply_hdmi);
 if (sc->supply_pll != ((void*)0))
  regulator_release(sc->supply_pll);
 if (sc->supply_vdd != ((void*)0))
  regulator_release(sc->supply_vdd);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 return (ENXIO);
}
