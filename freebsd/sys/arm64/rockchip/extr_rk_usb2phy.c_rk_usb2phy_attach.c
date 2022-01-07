
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_usb2phy_softc {int phy_supply; int clk; int grf; int dev; } ;
struct phynode_init_def {scalar_t__ ofw_node; int id; } ;
struct phynode {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (scalar_t__) ;
 int RK3399_USBPHY_HOST ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_get_name (int ) ;
 struct rk_usb2phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int ofw_bus_node_status_okay (scalar_t__) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;
 int regulator_get_by_ofw_property (int ,scalar_t__,char*,int *) ;
 int rk_usb2phy_export_clock (struct rk_usb2phy_softc*) ;
 int rk_usb2phy_phynode_class ;
 scalar_t__ syscon_get_handle_default (int ,int *) ;

__attribute__((used)) static int
rk_usb2phy_attach(device_t dev)
{
 struct rk_usb2phy_softc *sc;
 struct phynode_init_def phy_init;
 struct phynode *phynode;
 phandle_t node, host;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 if (syscon_get_handle_default(dev, &sc->grf) != 0) {
  device_printf(dev, "Cannot get syscon handle\n");
  return (ENXIO);
 }

 if (clk_get_by_ofw_name(dev, 0, "phyclk", &sc->clk) != 0) {
  device_printf(dev, "Cannot get clock\n");
  return (ENXIO);
 }
 err = clk_enable(sc->clk);
 if (err != 0) {
  device_printf(dev, "Could not enable clock %s\n",
      clk_get_name(sc->clk));
  return (ENXIO);
 }

 err = rk_usb2phy_export_clock(sc);
 if (err != 0)
  return (err);



 host = ofw_bus_find_child(node, "host-port");
 if (host == 0) {
  device_printf(dev, "Cannot find host-port child node\n");
  return (ENXIO);
 }

 if (!ofw_bus_node_status_okay(host)) {
  device_printf(dev, "host-port isn't okay\n");
  return (0);
 }

 regulator_get_by_ofw_property(dev, host, "phy-supply", &sc->phy_supply);
 phy_init.id = RK3399_USBPHY_HOST;
 phy_init.ofw_node = host;
 phynode = phynode_create(dev, &rk_usb2phy_phynode_class, &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(dev, "failed to create host USB2PHY\n");
  return (ENXIO);
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(dev, "failed to register host USB2PHY\n");
  return (ENXIO);
 }

 OF_device_register_xref(OF_xref_from_node(host), dev);

 return (0);
}
