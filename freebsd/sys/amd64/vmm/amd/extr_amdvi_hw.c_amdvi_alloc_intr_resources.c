
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct amdvi_softc {int event_irq; struct amdvi_ctrl* ctrl; int dev; int event_tag; int * event_res; scalar_t__ event_rid; int pci_rid; } ;
struct amdvi_ctrl {int status; } ;
typedef int device_t ;
struct TYPE_2__ {int name; } ;


 int AMDVI_STATUS_EV_INTR ;
 int AMDVI_STATUS_EV_OF ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int PCIB_ALLOC_MSI (int ,int ,int,int,int*) ;
 int PCIB_MAP_MSI (int ,int ,int,int *,int *) ;
 int PCI_RID2BUS (int ) ;
 int PCI_RID2FUNC (int ) ;
 int PCI_RID2SLOT (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int amdvi_event_intr ;
 int amdvi_free_evt_intr_res (int ) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_describe_intr (int ,int *,int ,char*) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_set_resource (int ,int ,scalar_t__,int,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct amdvi_softc*,int *) ;
 TYPE_1__* device_get_driver (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int device_printf (int ,char*,...) ;
 int pci_enable_msi (int ,int ,int ) ;
 int pci_find_bsf (int ,int ,int ) ;

__attribute__((used)) static bool
amdvi_alloc_intr_resources(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;
 device_t dev, pcib;
 device_t mmio_dev;
 uint64_t msi_addr;
 uint32_t msi_data;
 int err;

 dev = softc->dev;
 pcib = device_get_parent(device_get_parent(dev));
 mmio_dev = pci_find_bsf(PCI_RID2BUS(softc->pci_rid),
            PCI_RID2SLOT(softc->pci_rid), PCI_RID2FUNC(softc->pci_rid));
 if (device_is_attached(mmio_dev)) {
  device_printf(dev,
      "warning: IOMMU device is claimed by another driver %s\n",
      device_get_driver(mmio_dev)->name);
 }

 softc->event_irq = -1;
 softc->event_rid = 0;





 err = PCIB_ALLOC_MSI(pcib, dev, 1, 1, &softc->event_irq);
 if (err) {
  device_printf(dev,
      "Couldn't find event MSI IRQ resource.\n");
  return (ENOENT);
 }

 err = bus_set_resource(dev, SYS_RES_IRQ, softc->event_rid,
     softc->event_irq, 1);
 if (err) {
  device_printf(dev, "Couldn't set event MSI resource.\n");
  return (ENXIO);
 }

 softc->event_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &softc->event_rid, RF_ACTIVE);
 if (!softc->event_res) {
  device_printf(dev,
      "Unable to allocate event INTR resource.\n");
  return (ENOMEM);
 }

 if (bus_setup_intr(dev, softc->event_res,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), amdvi_event_intr,
     softc, &softc->event_tag)) {
  device_printf(dev, "Fail to setup event intr\n");
  bus_release_resource(softc->dev, SYS_RES_IRQ,
      softc->event_rid, softc->event_res);
  softc->event_res = ((void*)0);
  return (ENXIO);
 }

 bus_describe_intr(dev, softc->event_res, softc->event_tag,
     "fault");

 err = PCIB_MAP_MSI(pcib, dev, softc->event_irq, &msi_addr,
     &msi_data);
 if (err) {
  device_printf(dev,
      "Event interrupt config failed, err=%d.\n",
      err);
  amdvi_free_evt_intr_res(softc->dev);
  return (err);
 }


 ctrl = softc->ctrl;
 ctrl->status &= AMDVI_STATUS_EV_OF | AMDVI_STATUS_EV_INTR;


 pci_enable_msi(mmio_dev, msi_addr, msi_data);
 return (0);
}
