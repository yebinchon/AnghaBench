
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_typec_phy_softc {int phy_ctrl_id; int res; int rst_tcphy; int rst_pipe; int rst_uphy; int tcpdphy_ref; int tcpdcore; int grf; int dev; } ;
struct phynode_init_def {int ofw_node; int id; } ;
struct phynode {int dummy; } ;
typedef int reg_prop ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_device_register_xref (int ,int ) ;
 scalar_t__ OF_getencprop (int,char*,int*,int) ;
 int OF_xref_from_node (int) ;
 int RK3399_TYPEC_PHY_USB3 ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ clk_get_by_ofw_name (int ,int ,char*,int *) ;
 scalar_t__ clk_set_assigned (int ,int) ;
 struct rk_typec_phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_assert (int ) ;
 scalar_t__ hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int ofw_bus_find_child (int,char*) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_node_status_okay (int) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;
 int rk_typec_phy_phynode_class ;
 int rk_typec_phy_spec ;
 scalar_t__ syscon_get_by_ofw_property (int ,int,char*,int *) ;

__attribute__((used)) static int
rk_typec_phy_attach(device_t dev)
{
 struct rk_typec_phy_softc *sc;
 struct phynode_init_def phy_init;
 struct phynode *phynode;
 phandle_t node, usb3;
 phandle_t reg_prop[4];

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);






 if (OF_getencprop(node, "reg", reg_prop, sizeof(reg_prop)) <= 0) {
  device_printf(dev, "Cannot guess phy controller id\n");
  return (ENXIO);
 }
 switch (reg_prop[1]) {
 case 0xff7c0000:
  sc->phy_ctrl_id = 0;
  break;
 case 0xff800000:
  sc->phy_ctrl_id = 1;
  break;
 default:
  device_printf(dev, "Unknown address %x for typec-phy\n", reg_prop[1]);
  return (ENXIO);
 }

 if (bus_alloc_resources(dev, rk_typec_phy_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  goto fail;
 }

 if (syscon_get_by_ofw_property(dev, node,
     "rockchip,grf", &sc->grf) != 0) {
  device_printf(dev, "Cannot get syscon handle\n");
  goto fail;
 }

 if (clk_get_by_ofw_name(dev, 0, "tcpdcore", &sc->tcpdcore) != 0) {
  device_printf(dev, "Cannot get tcpdcore clock\n");
  goto fail;
 }
 if (clk_get_by_ofw_name(dev, 0, "tcpdphy-ref", &sc->tcpdphy_ref) != 0) {
  device_printf(dev, "Cannot get tcpdphy-ref clock\n");
  goto fail;
 }

 if (hwreset_get_by_ofw_name(dev, 0, "uphy", &sc->rst_uphy) != 0) {
  device_printf(dev, "Cannot get uphy reset\n");
  goto fail;
 }
 if (hwreset_get_by_ofw_name(dev, 0, "uphy-pipe", &sc->rst_pipe) != 0) {
  device_printf(dev, "Cannot get uphy-pipe reset\n");
  goto fail;
 }
 if (hwreset_get_by_ofw_name(dev, 0, "uphy-tcphy", &sc->rst_tcphy) != 0) {
  device_printf(dev, "Cannot get uphy-tcphy reset\n");
  goto fail;
 }





 hwreset_assert(sc->rst_uphy);
 hwreset_assert(sc->rst_pipe);
 hwreset_assert(sc->rst_tcphy);


 if (clk_set_assigned(dev, node) != 0) {
  device_printf(dev, "clk_set_assigned failed\n");
  goto fail;
 }


 usb3 = ofw_bus_find_child(node, "usb3-port");
 if (usb3 == 0) {
  device_printf(dev, "Cannot find usb3-port child node\n");
  goto fail;
 }



 if (!ofw_bus_node_status_okay(usb3))
  return (0);

 phy_init.id = RK3399_TYPEC_PHY_USB3;
 phy_init.ofw_node = usb3;
 phynode = phynode_create(dev, &rk_typec_phy_phynode_class, &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(dev, "failed to create phy usb3-port\n");
  goto fail;
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(dev, "failed to register phy usb3-port\n");
  goto fail;
 }

 OF_device_register_xref(OF_xref_from_node(usb3), dev);

 return (0);

fail:
 bus_release_resources(dev, rk_typec_phy_spec, &sc->res);

 return (ENXIO);
}
