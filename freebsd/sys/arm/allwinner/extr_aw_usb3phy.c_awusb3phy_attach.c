
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode_init_def {void* ofw_node; } ;
struct phynode {int dummy; } ;
struct awusb3phy_softc {int reg; int res; } ;
typedef void* phandle_t ;
typedef int hwreset_t ;
typedef int device_t ;
typedef int clk_t ;


 int ENXIO ;
 int aw_usb3phy_spec ;
 int awusb3phy_phynode_class ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int,int *) ;
 int clk_get_name (int ) ;
 struct awusb3phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int,int *) ;
 void* ofw_bus_get_node (int ) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;
 int regulator_get_by_ofw_property (int ,void*,char*,int *) ;

__attribute__((used)) static int
awusb3phy_attach(device_t dev)
{
 struct phynode *phynode;
 struct phynode_init_def phy_init;
 struct awusb3phy_softc *sc;
 clk_t clk;
 hwreset_t rst;
 phandle_t node;
 int error, i;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 if (bus_alloc_resources(dev, aw_usb3phy_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }


 for (i = 0; clk_get_by_ofw_index(dev, 0, i, &clk) == 0; i++) {
  error = clk_enable(clk);
  if (error != 0) {
   device_printf(dev, "couldn't enable clock %s\n",
       clk_get_name(clk));
   return (error);
  }
 }


 for (i = 0; hwreset_get_by_ofw_idx(dev, 0, i, &rst) == 0; i++) {
  error = hwreset_deassert(rst);
  if (error != 0) {
   device_printf(dev, "couldn't de-assert reset %d\n",
       i);
   return (error);
  }
 }


 regulator_get_by_ofw_property(dev, node, "phy-supply", &sc->reg);


 phy_init.ofw_node = ofw_bus_get_node(dev);
 phynode = phynode_create(dev, &awusb3phy_phynode_class,
     &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(dev, "failed to create USB PHY\n");
  return (ENXIO);
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(dev, "failed to create USB PHY\n");
  return (ENXIO);
 }

 return (error);
}
