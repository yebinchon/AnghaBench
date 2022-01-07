
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_uhh_softc {int * port_mode; int uhh_mem_res; int sc_dev; } ;
typedef int propname ;
typedef int phandle_t ;
typedef int device_t ;


 int EHCI_HCD_OMAP_MODE_HSIC ;
 int EHCI_HCD_OMAP_MODE_PHY ;
 int EHCI_HCD_OMAP_MODE_TLL ;
 int EHCI_HCD_OMAP_MODE_UNKNOWN ;
 int ENXIO ;
 int OF_child (int) ;
 scalar_t__ OF_getprop_alloc (int,char*,void**) ;
 int OF_peer (int) ;
 int OMAP_HS_USB_PORTS ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct omap_uhh_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 int omap_uhh_detach (int ) ;
 int omap_uhh_init (struct omap_uhh_softc*) ;
 int simplebus_add_device (int ,int,int ,int *,int,int *) ;
 int simplebus_init (int ,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
omap_uhh_attach(device_t dev)
{
 struct omap_uhh_softc *isc = device_get_softc(dev);
 int err;
 int rid;
 int i;
 phandle_t node;
 char propname[16];
 char *mode;


 isc->sc_dev = dev;


 rid = 0;
 isc->uhh_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!isc->uhh_mem_res) {
  device_printf(dev, "Error: Could not map UHH memory\n");
  goto error;
 }

 node = ofw_bus_get_node(dev);

 if (node == -1)
  goto error;


 for (i = 0; i < OMAP_HS_USB_PORTS; i++) {
  isc->port_mode[i] = EHCI_HCD_OMAP_MODE_UNKNOWN;
  snprintf(propname, sizeof(propname),
      "port%d-mode", i+1);

  if (OF_getprop_alloc(node, propname, (void**)&mode) <= 0)
   continue;
  if (strcmp(mode, "ehci-phy") == 0)
   isc->port_mode[i] = EHCI_HCD_OMAP_MODE_PHY;
  else if (strcmp(mode, "ehci-tll") == 0)
   isc->port_mode[i] = EHCI_HCD_OMAP_MODE_TLL;
  else if (strcmp(mode, "ehci-hsic") == 0)
   isc->port_mode[i] = EHCI_HCD_OMAP_MODE_HSIC;
 }


 err = omap_uhh_init(isc);
 if (err) {
  device_printf(dev, "Error: could not setup OMAP EHCI, %d\n", err);
  goto error;
 }

 simplebus_init(dev, node);




 bus_generic_probe(dev);




 for (node = OF_child(node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));
 return (bus_generic_attach(dev));

error:
 omap_uhh_detach(dev);
 return (ENXIO);
}
