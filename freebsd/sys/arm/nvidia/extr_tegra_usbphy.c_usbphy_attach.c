
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbphy_softc {int have_utmi_regs; scalar_t__ dr_mode; scalar_t__ ifc_type; int dev; int supply_vbus; int clk_reg; int clk_pllu; int reset_usb; int clk_pads; int reset_pads; int * mem_res; void* pads_res; } ;
struct phynode_init_def {int id; int ofw_node; } ;
struct phynode {int dummy; } ;
typedef int phy_init ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 scalar_t__ USB_IFC_TYPE_UTMI ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bzero (struct phynode_init_def*,int) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 struct usbphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int ) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int ofw_bus_get_node (int ) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;
 int regulator_enable (int ) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;
 scalar_t__ usb_get_dr_mode (int ,int ,char*) ;
 scalar_t__ usb_get_ifc_mode (int ,int ,char*) ;
 int usbphy_phynode_class ;
 int usbphy_utmi_read_params (struct usbphy_softc*,int ) ;

__attribute__((used)) static int
usbphy_attach(device_t dev)
{
 struct usbphy_softc *sc;
 int rid, rv;
 phandle_t node;
 struct phynode *phynode;
 struct phynode_init_def phy_init;

 sc = device_get_softc(dev);
 sc->dev = dev;

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 rid = 1;
 sc->pads_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);

 rv = hwreset_get_by_ofw_name(sc->dev, 0, "usb", &sc->reset_usb);
 if (rv != 0) {
  device_printf(dev, "Cannot get 'usb' reset\n");
  return (ENXIO);
 }
 rv = hwreset_get_by_ofw_name(sc->dev, 0, "utmi-pads", &sc->reset_pads);
 if (rv != 0) {
  device_printf(dev, "Cannot get 'utmi-pads' reset\n");
  return (ENXIO);
 }

 rv = clk_get_by_ofw_name(sc->dev, 0, "reg", &sc->clk_reg);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'reg' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "pll_u", &sc->clk_pllu);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'pll_u' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "utmi-pads", &sc->clk_pads);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'utmi-pads' clock\n");
  return (ENXIO);
 }

 rv = hwreset_deassert(sc->reset_usb);
 if (rv != 0) {
  device_printf(dev, "Cannot unreset 'usb' reset\n");
  return (ENXIO);
 }

 rv = clk_enable(sc->clk_pllu);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'pllu' clock\n");
  return (ENXIO);
 }
 rv = clk_enable(sc->clk_reg);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'reg' clock\n");
  return (ENXIO);
 }
 if (OF_hasprop(node, "nvidia,has-utmi-pad-registers"))
  sc->have_utmi_regs = 1;

 sc->dr_mode = usb_get_dr_mode(dev, node, "dr_mode");
 if (sc->dr_mode == USB_DR_MODE_UNKNOWN)
  sc->dr_mode = USB_DR_MODE_HOST;

 sc->ifc_type = usb_get_ifc_mode(dev, node, "phy_type");


 if (sc->ifc_type != USB_IFC_TYPE_UTMI) {
  device_printf(dev, "Unsupported phy type\n");
  return (ENXIO);
 }
 rv = usbphy_utmi_read_params(sc, node);
 if (rv < 0)
  return rv;

 if (OF_hasprop(node, "vbus-supply")) {
  rv = regulator_get_by_ofw_property(sc->dev, 0, "vbus-supply",
      &sc->supply_vbus);
  if (rv != 0) {
   device_printf(sc->dev,
      "Cannot get \"vbus\" regulator\n");
   return (ENXIO);
  }
  rv = regulator_enable(sc->supply_vbus);
  if (rv != 0) {
   device_printf(sc->dev,
       "Cannot enable  \"vbus\" regulator\n");
   return (rv);
  }
 }


 bzero(&phy_init, sizeof(phy_init));
 phy_init.id = 1;
 phy_init.ofw_node = node;
 phynode = phynode_create(dev, &usbphy_phynode_class, &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(sc->dev, "Cannot create phy\n");
  return (ENXIO);
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(sc->dev, "Cannot create phy\n");
  return (ENXIO);
 }

 return (0);
}
