
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_softc {int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; int sc_callout; } ;
struct tegra_xhci_softc {scalar_t__ fw_vaddr; int fw_size; int * irq_hdl_mbox; int * irq_res_mbox; scalar_t__ xhci_inited; struct xhci_softc xhci_softc; } ;
typedef int device_t ;


 int LOCK_DESTROY (struct tegra_xhci_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 struct tegra_xhci_softc* device_get_softc (int ) ;
 int kmem_free (scalar_t__,int ) ;
 int rman_get_rid (int *) ;
 int usb_callout_drain (int *) ;
 int xhci_halt_controller (struct xhci_softc*) ;
 int xhci_uninit (struct xhci_softc*) ;

__attribute__((used)) static int
tegra_xhci_detach(device_t dev)
{
 struct tegra_xhci_softc *sc;
 struct xhci_softc *xsc;

 sc = device_get_softc(dev);
 xsc = &sc->xhci_softc;


 device_delete_children(dev);
 if (sc->xhci_inited) {
  usb_callout_drain(&xsc->sc_callout);
  xhci_halt_controller(xsc);
 }

 if (xsc->sc_irq_res && xsc->sc_intr_hdl) {
  bus_teardown_intr(dev, xsc->sc_irq_res, xsc->sc_intr_hdl);
  xsc->sc_intr_hdl = ((void*)0);
 }
 if (xsc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(xsc->sc_irq_res), xsc->sc_irq_res);
  xsc->sc_irq_res = ((void*)0);
 }
 if (xsc->sc_io_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(xsc->sc_io_res), xsc->sc_io_res);
  xsc->sc_io_res = ((void*)0);
 }
 if (sc->xhci_inited)
  xhci_uninit(xsc);
 if (sc->irq_hdl_mbox != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res_mbox, sc->irq_hdl_mbox);
 if (sc->fw_vaddr != 0)
  kmem_free(sc->fw_vaddr, sc->fw_size);
 LOCK_DESTROY(sc);
 return (0);
}
