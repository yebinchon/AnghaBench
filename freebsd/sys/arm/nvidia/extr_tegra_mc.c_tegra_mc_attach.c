
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mc_softc {int * mem_res; int * irq_res; int * irq_h; int * clk; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int LOCK_DESTROY (struct tegra_mc_softc*) ;
 int LOCK_INIT (struct tegra_mc_softc*) ;
 int MC_INTMASK ;
 int MC_INT_INT_MASK ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WR4 (struct tegra_mc_softc*,int ,int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct tegra_mc_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_release (int *) ;
 struct tegra_mc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int tegra_mc_init_hw (struct tegra_mc_softc*) ;
 int tegra_mc_intr ;

__attribute__((used)) static int
tegra_mc_attach(device_t dev)
{
 int rv, rid;
 struct tegra_mc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

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


 rv = clk_get_by_ofw_name(dev, 0, "mc", &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get mc clock: %d\n", rv);
  goto fail;
 }
 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable clock: %d\n", rv);
  goto fail;
 }


 tegra_mc_init_hw(sc);


 rv = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), tegra_mc_intr, sc, &sc->irq_h);
 if (rv) {
  device_printf(dev, "Cannot setup interrupt.\n");
  goto fail;
 }


 WR4(sc, MC_INTMASK, MC_INT_INT_MASK);

 return (bus_generic_attach(dev));

fail:
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (sc->irq_h != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_h);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 LOCK_DESTROY(sc);

 return (rv);
}
