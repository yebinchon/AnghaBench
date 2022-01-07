
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct tegra_i2c_softc {int bus_freq; int * mem_res; int * irq_res; int * irq_h; int * iicbus; int clk; scalar_t__ core_freq; int dev; int reset; } ;
typedef int phandle_t ;
typedef int device_t ;


 int CLK_SET_ROUND_DOWN ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int LOCK_DESTROY (struct tegra_i2c_softc*) ;
 int LOCK_INIT (struct tegra_i2c_softc*) ;
 int OF_getencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct tegra_i2c_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_get_freq (int ,scalar_t__*) ;
 int clk_set_freq (int ,int,int ) ;
 int * device_add_child (int ,char*,int) ;
 struct tegra_i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int ofw_bus_get_node (int ) ;
 int tegra_i2c_hw_init (struct tegra_i2c_softc*) ;
 int tegra_i2c_intr ;

__attribute__((used)) static int
tegra_i2c_attach(device_t dev)
{
 int rv, rid;
 phandle_t node;
 struct tegra_i2c_softc *sc;
 uint64_t freq;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 LOCK_INIT(sc);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot map registers.\n");
  rv = ENXIO;
  goto fail;
 }


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate interrupt.\n");
  rv = ENXIO;
  goto fail;
 }


 rv = clk_get_by_ofw_name(dev, 0, "div-clk", &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get i2c clock: %d\n", rv);
  goto fail;
 }
 rv = hwreset_get_by_ofw_name(sc->dev, 0, "i2c", &sc->reset);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get i2c reset\n");
  return (ENXIO);
 }
 rv = OF_getencprop(node, "clock-frequency", &sc->bus_freq,
     sizeof(sc->bus_freq));
 if (rv != sizeof(sc->bus_freq)) {
  sc->bus_freq = 100000;
  goto fail;
 }


 rv = clk_set_freq(sc->clk, 136000000, CLK_SET_ROUND_DOWN);
 if (rv != 0) {
  device_printf(dev, "Cannot set clock frequency\n");
  goto fail;
 }
 rv = clk_get_freq(sc->clk, &freq);
 if (rv != 0) {
  device_printf(dev, "Cannot get clock frequency\n");
  goto fail;
 }
 sc->core_freq = (uint32_t)freq;

 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable clock: %d\n", rv);
  goto fail;
 }


 rv = tegra_i2c_hw_init(sc);
 if (rv) {
  device_printf(dev, "tegra_i2c_activate failed\n");
  goto fail;
 }


 rv = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), tegra_i2c_intr, sc, &sc->irq_h);
 if (rv) {
  device_printf(dev, "Cannot setup interrupt.\n");
  goto fail;
 }


 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "Could not allocate iicbus instance.\n");
  rv = ENXIO;
  goto fail;
 }


 return (bus_generic_attach(dev));

fail:
 if (sc->irq_h != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_h);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 LOCK_DESTROY(sc);

 return (rv);
}
