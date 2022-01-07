
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soctherm_softc {int ntsensors; int * mem_res; int * irq_res; int * reset; int * soctherm_clk; int * tsensor_clk; int * irq_ih; int dev; scalar_t__ tsensors; } ;
struct soctherm_shared_cal {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TSENSOR_HOTSPOT_OFF ;
 int TSENSOR_HOTSPOT_OFF_T124 ;
 int TSENSOR_PDIV ;
 int TSENSOR_PDIV_T124 ;
 int WR4 (struct soctherm_softc*,int ,int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_release (int *) ;
 struct soctherm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int get_shared_cal (struct soctherm_softc*,struct soctherm_shared_cal*) ;
 int hwreset_assert (int *) ;
 int hwreset_deassert (int *) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int **) ;
 int hwreset_release (int *) ;
 int nitems (scalar_t__) ;
 int ofw_bus_get_node (int ) ;
 int soctherm_init_sysctl (struct soctherm_softc*) ;
 int soctherm_init_tsensor (struct soctherm_softc*,scalar_t__,struct soctherm_shared_cal*) ;
 int soctherm_sysctl_ctx ;
 int sysctl_ctx_free (int *) ;
 scalar_t__ t124_tsensors ;

__attribute__((used)) static int
soctherm_attach(device_t dev)
{
 struct soctherm_softc *sc;
 phandle_t node;
 int i, rid, rv;
 struct soctherm_shared_cal shared_calib;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(sc->dev);

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
 rv = hwreset_get_by_ofw_name(dev, 0, "soctherm", &sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot get fuse reset\n");
  goto fail;
 }
 rv = clk_get_by_ofw_name(dev, 0, "tsensor", &sc->tsensor_clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get 'tsensor' clock: %d\n", rv);
  goto fail;
 }
 rv = clk_get_by_ofw_name(dev, 0, "soctherm", &sc->soctherm_clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get 'soctherm' clock: %d\n", rv);
  goto fail;
 }

 rv = hwreset_assert(sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot assert reset\n");
  goto fail;
 }
 rv = clk_enable(sc->tsensor_clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable 'tsensor' clock: %d\n", rv);
  goto fail;
 }
 rv = clk_enable(sc->soctherm_clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable 'soctherm' clock: %d\n", rv);
  goto fail;
 }
 rv = hwreset_deassert(sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot clear reset\n");
  goto fail;
 }


 sc->tsensors = t124_tsensors;
 sc->ntsensors = nitems(t124_tsensors);
 get_shared_cal(sc, &shared_calib);

 WR4(sc, TSENSOR_PDIV, TSENSOR_PDIV_T124);
 WR4(sc, TSENSOR_HOTSPOT_OFF, TSENSOR_HOTSPOT_OFF_T124);

 for (i = 0; i < sc->ntsensors; i++)
  soctherm_init_tsensor(sc, sc->tsensors + i, &shared_calib);

 rv = soctherm_init_sysctl(sc);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot initialize sysctls\n");
  goto fail;
 }

 OF_device_register_xref(OF_xref_from_node(node), dev);
 return (bus_generic_attach(dev));

fail:
 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 sysctl_ctx_free(&soctherm_sysctl_ctx);
 if (sc->tsensor_clk != ((void*)0))
  clk_release(sc->tsensor_clk);
 if (sc->soctherm_clk != ((void*)0))
  clk_release(sc->soctherm_clk);
 if (sc->reset != ((void*)0))
  hwreset_release(sc->reset);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (ENXIO);
}
