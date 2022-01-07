
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct host1x_softc* ich_arg; int ich_func; } ;
struct host1x_softc {int attach_done; TYPE_1__ irq_hook; int syncpt_irq_h; int * syncpt_irq_res; int gen_irq_h; int * gen_irq_res; int dev; int reset; int clk; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 scalar_t__ BUS_PASS_DEFAULT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_current_pass ;
 int bus_generic_new_pass (int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct host1x_softc*,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int config_intrhook_establish (TYPE_1__*) ;
 int device_detach (int ) ;
 struct host1x_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int host1x_gen_intr ;
 int host1x_irq_hook ;
 int host1x_syncpt_intr ;
 int hwreset_deassert (int ) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int simplebus_add_device (int ,scalar_t__,int ,int *,int,int *) ;
 int simplebus_init (int ,int ) ;

__attribute__((used)) static void
host1x_new_pass(device_t dev)
{
 struct host1x_softc *sc;
 int rv, rid;
 phandle_t node;





 sc = device_get_softc(dev);
 if (sc->attach_done || bus_current_pass < BUS_PASS_DEFAULT) {
  bus_generic_new_pass(dev);
  return;
 }

 sc->attach_done = 1;
 node = ofw_bus_get_node(dev);


 rid = 0;
 sc->syncpt_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->syncpt_irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate interrupt.\n");
  rv = ENXIO;
  goto fail;
 }
 rid = 1;
 sc->gen_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->gen_irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate interrupt.\n");
  rv = ENXIO;
  goto fail;
 }


 rv = hwreset_get_by_ofw_name(sc->dev, 0, "host1x", &sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot get fuse reset\n");
  goto fail;
 }
 rv = clk_get_by_ofw_index(sc->dev, 0, 0, &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get i2c clock: %d\n", rv);
  goto fail;
 }

 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable clock: %d\n", rv);
  goto fail;
 }
 rv = hwreset_deassert(sc->reset);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot clear reset\n");
  goto fail;
 }


 rv = bus_setup_intr(dev, sc->gen_irq_res,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), host1x_gen_intr,
     sc, &sc->gen_irq_h);
 if (rv) {
  device_printf(dev, "Cannot setup gen interrupt.\n");
  goto fail;
 }

 rv = bus_setup_intr(dev, sc->syncpt_irq_res,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), host1x_syncpt_intr,
     sc, &sc->syncpt_irq_h);
 if (rv) {
  device_printf(dev, "Cannot setup syncpt interrupt.\n");
  goto fail;
 }

 simplebus_init(dev, 0);
 for (node = OF_child(node); node > 0; node = OF_peer(node))
     simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));

 sc->irq_hook.ich_func = host1x_irq_hook;
 sc->irq_hook.ich_arg = sc;
 config_intrhook_establish(&sc->irq_hook);
 bus_generic_new_pass(dev);
 return;

fail:
 device_detach(dev);
 return;
}
