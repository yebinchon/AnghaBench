
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_gpio_softc {int irq_num; int* irq_rid; int offset; int pin_num; int* debounce_counters; struct callout** debounce_callouts; int bsh; int bst; int dev; int * irq_res; int mutex; int * ih_cookie; } ;
struct callout {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int irq_cells ;
typedef int driver_filter_t ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ GPIO_INT_CAUSE ;
 scalar_t__ GPIO_INT_EDGE_MASK ;
 scalar_t__ GPIO_INT_LEV_MASK ;
 int INTR_TYPE_MISC ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_getproplen (scalar_t__,char*) ;
 int OF_node_from_xref (scalar_t__) ;
 int OF_searchencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int ) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int *,int *,struct mv_gpio_softc*,int *) ;
 int bus_space_write_4 (int ,int ,scalar_t__,int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 scalar_t__ mv_gpio_intr ;
 scalar_t__ ofw_bus_find_iparent (scalar_t__) ;

__attribute__((used)) static int
mv_gpio_setup_interrupts(struct mv_gpio_softc *sc, phandle_t node)
{
 phandle_t iparent;
 pcell_t irq_cells;
 int i, size;


 iparent = ofw_bus_find_iparent(node);
 if (iparent == 0) {
  device_printf(sc->dev, "No interrupt-parrent found. "
    "Error in DTB\n");
  return (ENXIO);
 } else {

  if (OF_searchencprop(OF_node_from_xref(iparent),
      "#interrupt-cells", &irq_cells, sizeof(irq_cells)) == -1) {
   device_printf(sc->dev, "DTB: Missing #interrupt-cells "
       "property in interrupt parent node\n");
   return (ENXIO);
  }
 }

 size = OF_getproplen(node, "interrupts");
 if (size != -1) {
  size = size / sizeof(pcell_t);
  size = size / irq_cells;
  sc->irq_num = size;
  device_printf(sc->dev, "%d IRQs available\n", sc->irq_num);
 } else {
  device_printf(sc->dev, "ERROR: no interrupts entry found!\n");
  return (ENXIO);
 }

 for (i = 0; i < sc->irq_num; i++) {
  sc->irq_rid[i] = i;
  sc->irq_res[i] = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ,
   &sc->irq_rid[i], RF_ACTIVE);
  if (!sc->irq_res[i]) {
   mtx_destroy(&sc->mutex);
   device_printf(sc->dev,
       "could not allocate gpio%d interrupt\n", i+1);
   return (ENXIO);
  }
 }

 device_printf(sc->dev, "Disable interrupts (offset = %x + EDGE(0x18)\n", sc->offset);

 bus_space_write_4(sc->bst, sc->bsh, sc->offset + GPIO_INT_EDGE_MASK, 0);
 device_printf(sc->dev, "Disable interrupts (offset = %x + LEV(0x1C))\n", sc->offset);
 bus_space_write_4(sc->bst, sc->bsh, sc->offset + GPIO_INT_LEV_MASK, 0);

 for (i = 0; i < sc->irq_num; i++) {
  device_printf(sc->dev, "Setup intr %d\n", i);
  if (bus_setup_intr(sc->dev, sc->irq_res[i],
      INTR_TYPE_MISC,
      (driver_filter_t *)mv_gpio_intr, ((void*)0),
      sc, &sc->ih_cookie[i]) != 0) {
   mtx_destroy(&sc->mutex);
   bus_release_resource(sc->dev, SYS_RES_IRQ,
    sc->irq_rid[i], sc->irq_res[i]);
   device_printf(sc->dev, "could not set up intr %d\n", i);
   return (ENXIO);
  }
 }


 device_printf(sc->dev, "Clear int status (offset = %x)\n", sc->offset);
 bus_space_write_4(sc->bst, sc->bsh, sc->offset + GPIO_INT_CAUSE, 0);

 sc->debounce_callouts = (struct callout **)malloc(sc->pin_num *
     sizeof(struct callout *), M_DEVBUF, M_WAITOK | M_ZERO);
 if (sc->debounce_callouts == ((void*)0))
  return (ENOMEM);

 sc->debounce_counters = (int *)malloc(sc->pin_num * sizeof(int),
     M_DEVBUF, M_WAITOK);
 if (sc->debounce_counters == ((void*)0))
  return (ENOMEM);

 return (0);
}
