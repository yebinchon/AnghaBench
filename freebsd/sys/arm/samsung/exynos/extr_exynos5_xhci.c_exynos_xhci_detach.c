
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sc_intr_hdl; } ;
struct exynos_xhci_softc {TYPE_1__ base; scalar_t__* res; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,scalar_t__*) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int device_delete_children (int ) ;
 struct exynos_xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int exynos_xhci_spec ;
 int xhci_halt_controller (TYPE_1__*) ;
 int xhci_uninit (TYPE_1__*) ;

__attribute__((used)) static int
exynos_xhci_detach(device_t dev)
{
 struct exynos_xhci_softc *esc = device_get_softc(dev);
 int err;


 device_delete_children(dev);

 xhci_halt_controller(&esc->base);

 if (esc->res[2] && esc->base.sc_intr_hdl) {
  err = bus_teardown_intr(dev, esc->res[2],
      esc->base.sc_intr_hdl);
  if (err) {
   device_printf(dev, "Could not tear down IRQ,"
       " %d\n", err);
   return (err);
  }
 }

 bus_release_resources(dev, exynos_xhci_spec, esc->res);

 xhci_uninit(&esc->base);

 return (0);
}
