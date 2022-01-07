
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int r_rid; int numirqs; int * r_mem; scalar_t__ ccc; scalar_t__ msi; } ;
struct tegra_ahci_sc {int * sata_mem; int dev; struct ahci_controller ctlr; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ahci_attach (int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct tegra_ahci_sc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int enable_fdt_resources (struct tegra_ahci_sc*) ;
 int get_fdt_resources (struct tegra_ahci_sc*,int ) ;
 int ofw_bus_get_node (int ) ;
 int tegra_ahci_ctlr_reset (int ) ;
 int tegra_ahci_ctrl_init (struct tegra_ahci_sc*) ;

__attribute__((used)) static int
tegra_ahci_attach(device_t dev)
{
 struct tegra_ahci_sc *sc;
 struct ahci_controller *ctlr;
 phandle_t node;
 int rv, rid;

 sc = device_get_softc(dev);
 sc->dev = dev;
 ctlr = &sc->ctlr;
 node = ofw_bus_get_node(dev);

 ctlr->r_rid = 0;
 ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE);
 if (ctlr->r_mem == ((void*)0))
  return (ENXIO);

 rid = 1;
 sc->sata_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (sc->sata_mem == ((void*)0)) {
  rv = ENXIO;
  goto fail;
 }
 rv = get_fdt_resources(sc, node);
 if (rv != 0) {
  device_printf(sc->dev, "Failed to allocate FDT resource(s)\n");
  goto fail;
 }

 rv = enable_fdt_resources(sc);
 if (rv != 0) {
  device_printf(sc->dev, "Failed to enable FDT resource(s)\n");
  goto fail;
 }
 rv = tegra_ahci_ctrl_init(sc);
 if (rv != 0) {
  device_printf(sc->dev, "Failed to initialize controller)\n");
  goto fail;
 }


 ctlr->msi = 0;
 ctlr->numirqs = 1;
 ctlr->ccc = 0;


 rv = tegra_ahci_ctlr_reset(dev);
 if (rv != 0)
  goto fail;
 rv = ahci_attach(dev);
 return (rv);

fail:

 if (sc->sata_mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 1, sc->sata_mem);
 if (ctlr->r_mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid,
      ctlr->r_mem);
 return (rv);
}
