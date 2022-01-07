
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct versatile_pci_softc {int pcib_slot; int pci_iinfo; int mtx; TYPE_1__ irq_rman; TYPE_1__ io_rman; TYPE_1__ mem_rman; int mem_res; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int cell_t ;


 int ENXIO ;
 int MTX_SPIN ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_MWRICEN ;
 int PCIM_CMD_PORTEN ;
 scalar_t__ PCIR_BAR (int) ;
 scalar_t__ PCIR_COMMAND ;
 scalar_t__ PCIR_DEVVENDOR ;
 scalar_t__ PCIR_REVID ;
 int PCI_CORE_IMAP0 ;
 int PCI_CORE_IMAP1 ;
 int PCI_CORE_IMAP2 ;
 int PCI_CORE_SELFID ;
 int PCI_CORE_SMAP0 ;
 int PCI_CORE_SMAP1 ;
 int PCI_CORE_SMAP2 ;
 scalar_t__ PCI_IO_SIZE ;
 int PCI_IO_WINDOW ;
 scalar_t__ PCI_NPREFETCH_SIZE ;
 int PCI_NPREFETCH_WINDOW ;
 int PCI_PREFETCH_WINDOW ;
 int PCI_SLOTMAX ;
 void* RMAN_ARRAY ;
 int SCM_PCICTL ;
 int VERSATILE_PCI_CLASS ;
 int VERSATILE_PCI_DEV ;
 scalar_t__ VERSATILE_PCI_IRQ_END ;
 int VERSATILE_PCI_IRQ_START ;
 int bootverbose ;
 int bus_alloc_resources (int ,int ,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct versatile_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_setup_iinfo (int ,int *,int) ;
 int panic (char*) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,int,scalar_t__) ;
 int versatile_pci_conf_read_4 (scalar_t__) ;
 int versatile_pci_conf_write_4 (scalar_t__,int) ;
 int versatile_pci_core_write_4 (int ,int) ;
 int versatile_pci_mem_spec ;
 int versatile_pci_read_4 (scalar_t__) ;
 int versatile_pci_write_4 (scalar_t__,int ) ;
 int versatile_scm_reg_write_4 (int ,int) ;

__attribute__((used)) static int
versatile_pci_attach(device_t dev)
{
 struct versatile_pci_softc *sc = device_get_softc(dev);
 int err;
 int slot;
 uint32_t vendordev_id, class_id;
 uint32_t val;
 phandle_t node;

 node = ofw_bus_get_node(dev);


 err = bus_alloc_resources(dev, versatile_pci_mem_spec,
  sc->mem_res);
 if (err) {
  device_printf(dev, "Error: could not allocate memory resources\n");
  return (ENXIO);
 }




 versatile_pci_core_write_4(PCI_CORE_IMAP0, (PCI_IO_WINDOW >> 28));
 versatile_pci_core_write_4(PCI_CORE_IMAP1, (PCI_NPREFETCH_WINDOW >> 28));
 versatile_pci_core_write_4(PCI_CORE_IMAP2, (PCI_PREFETCH_WINDOW >> 28));





 versatile_pci_core_write_4(PCI_CORE_SMAP0, (PCI_IO_WINDOW >> 28));
 versatile_pci_core_write_4(PCI_CORE_SMAP1, (PCI_NPREFETCH_WINDOW >> 28));
 versatile_pci_core_write_4(PCI_CORE_SMAP2, (PCI_NPREFETCH_WINDOW >> 28));

 versatile_scm_reg_write_4(SCM_PCICTL, 1);

 for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
  vendordev_id = versatile_pci_read_4((slot << 11) + PCIR_DEVVENDOR);
  class_id = versatile_pci_read_4((slot << 11) + PCIR_REVID);
  if ((vendordev_id == VERSATILE_PCI_DEV) &&
      (class_id == VERSATILE_PCI_CLASS))
   break;
 }

 if (slot == (PCI_SLOTMAX + 1)) {
  bus_release_resources(dev, versatile_pci_mem_spec,
      sc->mem_res);
  device_printf(dev, "Versatile PCI core not found\n");
  return (ENXIO);
 }

 sc->pcib_slot = slot;
 device_printf(dev, "PCI core at slot #%d\n", slot);

 versatile_pci_core_write_4(PCI_CORE_SELFID, slot);
 val = versatile_pci_conf_read_4((slot << 11) + PCIR_COMMAND);
 val |= (PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN | PCIM_CMD_MWRICEN);
 versatile_pci_conf_write_4((slot << 11) + PCIR_COMMAND, val);


 versatile_pci_write_4((slot << 11) + PCIR_BAR(0), 0);
 versatile_pci_write_4((slot << 11) + PCIR_BAR(1), 0);
 versatile_pci_write_4((slot << 11) + PCIR_BAR(2), 0);


 sc->mem_rman.rm_type = RMAN_ARRAY;
 sc->mem_rman.rm_descr = "versatile PCI memory window";
 if (rman_init(&sc->mem_rman) != 0 ||
     rman_manage_region(&sc->mem_rman, PCI_NPREFETCH_WINDOW,
  PCI_NPREFETCH_WINDOW + PCI_NPREFETCH_SIZE - 1) != 0) {
  panic("versatile_pci_attach: failed to set up memory rman");
 }

 bootverbose = 1;
 sc->io_rman.rm_type = RMAN_ARRAY;
 sc->io_rman.rm_descr = "versatile PCI IO window";
 if (rman_init(&sc->io_rman) != 0 ||
     rman_manage_region(&sc->io_rman, PCI_IO_WINDOW,
  PCI_IO_WINDOW + PCI_IO_SIZE - 1) != 0) {
  panic("versatile_pci_attach: failed to set up I/O rman");
 }

 sc->irq_rman.rm_type = RMAN_ARRAY;
 sc->irq_rman.rm_descr = "versatile PCI IRQs";
 if (rman_init(&sc->irq_rman) != 0 ||
     rman_manage_region(&sc->irq_rman, VERSATILE_PCI_IRQ_START,
         VERSATILE_PCI_IRQ_END) != 0) {
  panic("versatile_pci_attach: failed to set up IRQ rman");
 }

 mtx_init(&sc->mtx, device_get_nameunit(dev), "versatilepci",
   MTX_SPIN);

 val = versatile_pci_conf_read_4((12 << 11) + PCIR_COMMAND);

 for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
  vendordev_id = versatile_pci_read_4((slot << 11) + PCIR_DEVVENDOR);
  class_id = versatile_pci_read_4((slot << 11) + PCIR_REVID);

  if (slot == sc->pcib_slot)
   continue;

  if ((vendordev_id == 0xffffffff) &&
      (class_id == 0xffffffff))
   continue;

  val = versatile_pci_conf_read_4((slot << 11) + PCIR_COMMAND);
  val |= PCIM_CMD_MEMEN | PCIM_CMD_PORTEN;
  versatile_pci_conf_write_4((slot << 11) + PCIR_COMMAND, val);
 }

 ofw_bus_setup_iinfo(node, &sc->pci_iinfo, sizeof(cell_t));

 device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
