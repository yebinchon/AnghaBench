
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_range_mask; int sc_nrange; int sc_range; } ;
struct tegra_pcib_softc {struct tegra_pcib_port** ports; int intr_cookie; int * irq_res; TYPE_1__ ofw_pci; void* msi_irq_res; int dev; int bus_tag; int * cfg_mem_res; int cfg_base_addr; int * afi_mem_res; int * pads_mem_res; int mtx; } ;
struct tegra_pcib_port {scalar_t__ enabled; int cfg_handle; int rp_size; int rp_base_addr; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TEGRA_PCIB_MAX_PORTS ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_generic_attach (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int ,int *,struct tegra_pcib_softc*,int *) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int device_add_child (int ,char*,int) ;
 struct tegra_pcib_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_pci_init (int ) ;
 int rman_get_bustag (int *) ;
 int rman_get_start (int *) ;
 int tegra_pci_intr ;
 int tegra_pcib_attach_msi (int ) ;
 int tegra_pcib_decode_ranges (struct tegra_pcib_softc*,int ,int ) ;
 int tegra_pcib_enable (struct tegra_pcib_softc*) ;
 int tegra_pcib_parse_fdt_resources (struct tegra_pcib_softc*,int ) ;
 int tegra_pcib_port_disable (struct tegra_pcib_softc*,int) ;
 int tegra_pcib_port_enable (struct tegra_pcib_softc*,int) ;

__attribute__((used)) static int
tegra_pcib_attach(device_t dev)
{
 struct tegra_pcib_softc *sc;
 phandle_t node;
 int rv;
 int rid;
 struct tegra_pcib_port *port;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;
 mtx_init(&sc->mtx, "msi_mtx", ((void*)0), MTX_DEF);

 node = ofw_bus_get_node(dev);

 rv = tegra_pcib_parse_fdt_resources(sc, node);
 if (rv != 0) {
  device_printf(dev, "Cannot get FDT resources\n");
  return (rv);
 }


 rid = 0;
 sc->pads_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->pads_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate PADS register\n");
  rv = ENXIO;
  goto out;
 }




 sc->bus_tag = rman_get_bustag(sc->pads_mem_res);

 rid = 1;
 sc->afi_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->afi_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate AFI register\n");
  rv = ENXIO;
  goto out;
 }

 rid = 2;
 sc->cfg_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ALLOCATED);
 if (sc->cfg_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate config space memory\n");
  rv = ENXIO;
  goto out;
 }
 sc->cfg_base_addr = rman_get_start(sc->cfg_mem_res);



 for (i = 0; i < TEGRA_PCIB_MAX_PORTS; i++) {
  if (sc->ports[i] == ((void*)0))
   continue;
  port = sc->ports[i];
  rv = bus_space_map(sc->bus_tag, port->rp_base_addr,
      port->rp_size, 0, &port->cfg_handle);
  if (rv != 0) {
   device_printf(sc->dev, "Cannot allocate memory for "
       "port: %d\n", i);
   rv = ENXIO;
   goto out;
  }
 }




 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate IRQ resources\n");
  rv = ENXIO;
  goto out;
 }

 rid = 1;
 sc->msi_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate MSI IRQ resources\n");
  rv = ENXIO;
  goto out;
 }

 sc->ofw_pci.sc_range_mask = 0x3;
 rv = ofw_pci_init(dev);
 if (rv != 0)
  goto out;

 rv = tegra_pcib_decode_ranges(sc, sc->ofw_pci.sc_range,
     sc->ofw_pci.sc_nrange);
 if (rv != 0)
  goto out;

 if (bus_setup_intr(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
      tegra_pci_intr, ((void*)0), sc, &sc->intr_cookie)) {
  device_printf(dev, "cannot setup interrupt handler\n");
  rv = ENXIO;
  goto out;
 }




 rv = tegra_pcib_enable(sc);
 if (rv != 0)
  goto out;
 for (i = 0; i < TEGRA_PCIB_MAX_PORTS; i++) {
  if (sc->ports[i] == ((void*)0))
   continue;
  if (sc->ports[i]->enabled)
   tegra_pcib_port_enable(sc, i);
  else
   tegra_pcib_port_disable(sc, i);
 }






 device_add_child(dev, "pci", -1);

 return (bus_generic_attach(dev));

out:

 return (rv);
}
