
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_msix_softc {int irq_min; int irq_max; scalar_t__ irq_count; int irq_alloc; int msi_mtx; int * gic_dev; int * res; scalar_t__ base_addr; } ;
typedef scalar_t__ phandle_t ;
typedef int icells ;
typedef int * device_t ;
typedef scalar_t__ bus_addr_t ;


 int EINVAL ;
 int ENXIO ;
 int INTR_RANGE_COUNT ;
 int IRQ_OFFSET ;
 scalar_t__ MAX_MSIX_COUNT ;
 int MTX_DEF ;
 int M_FIRSTFIT ;
 int M_WAITOK ;
 int * OF_device_from_xref (scalar_t__) ;
 int OF_device_register_xref (intptr_t,int *) ;
 int OF_getencprop_alloc_multi (scalar_t__,char*,int,void**) ;
 int OF_node_from_xref (scalar_t__) ;
 int OF_searchencprop (int ,char*,int*,int) ;
 intptr_t OF_xref_from_node (scalar_t__) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int *,int ,int*,int ) ;
 int bus_generic_attach (int *) ;
 struct al_msix_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 scalar_t__ intr_msi_register (int *,intptr_t) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ofw_bus_find_iparent (scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 scalar_t__ rman_get_start (int *) ;
 int vmem_create (char*,int ,scalar_t__,int,int ,int) ;

__attribute__((used)) static int
al_msix_attach(device_t dev)
{
 struct al_msix_softc *sc;
 device_t gic_dev;
 phandle_t iparent;
 phandle_t node;
 intptr_t xref;
 int interrupts[INTR_RANGE_COUNT];
 int nintr, i, rid;
 uint32_t icells, *intr;

 sc = device_get_softc(dev);

 node = ofw_bus_get_node(dev);
 xref = OF_xref_from_node(node);
 OF_device_register_xref(xref, dev);

 rid = 0;
 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "Failed to allocate resource\n");
  return (ENXIO);
 }

 sc->base_addr = (bus_addr_t)rman_get_start(sc->res);


 if (intr_msi_register(dev, xref) != 0) {
  device_printf(dev, "could not register MSI-X controller\n");
  return (ENXIO);
 }
 else
  device_printf(dev, "MSI-X controller registered\n");


 iparent = ofw_bus_find_iparent(node);
 if (iparent == 0) {
  device_printf(dev, "No interrupt-parrent found. "
    "Error in DTB\n");
  return (ENXIO);
 } else {

  if (OF_searchencprop(OF_node_from_xref(iparent),
      "#interrupt-cells", &icells, sizeof(icells)) == -1) {
   device_printf(dev, "DTB: Missing #interrupt-cells "
       "property in GIC node\n");
   return (ENXIO);
  }
 }

 gic_dev = OF_device_from_xref(iparent);
 if (gic_dev == ((void*)0)) {
  device_printf(dev, "Cannot find GIC device\n");
  return (ENXIO);
 }
 sc->gic_dev = gic_dev;


 nintr = OF_getencprop_alloc_multi(node, "interrupts", sizeof(*intr),
     (void **)&intr);
 if (nintr == 0) {
  device_printf(dev, "Cannot read interrupts prop from DTB\n");
  return (ENXIO);
 } else if ((nintr / icells) != INTR_RANGE_COUNT) {

  device_printf(dev, "Unexpected count of interrupts "
    "in DTB node\n");
  return (EINVAL);
 }


 for (i = 0; i < INTR_RANGE_COUNT; i++)
  interrupts[i] = intr[(i * icells) + IRQ_OFFSET];

 sc->irq_min = interrupts[0];
 sc->irq_max = interrupts[1];
 sc->irq_count = (sc->irq_max - sc->irq_min + 1);

 if (sc->irq_count > MAX_MSIX_COUNT) {
  device_printf(dev, "Available MSI-X count exceeds buffer size."
    " Capping to %d\n", MAX_MSIX_COUNT);
  sc->irq_count = MAX_MSIX_COUNT;
 }

 mtx_init(&sc->msi_mtx, "msi_mtx", ((void*)0), MTX_DEF);

 sc->irq_alloc = vmem_create("Alpine MSI-X IRQs", 0, sc->irq_count,
     1, 0, M_FIRSTFIT | M_WAITOK);

 device_printf(dev, "MSI-X SPI IRQ %d-%d\n", sc->irq_min, sc->irq_max);

 return (bus_generic_attach(dev));
}
