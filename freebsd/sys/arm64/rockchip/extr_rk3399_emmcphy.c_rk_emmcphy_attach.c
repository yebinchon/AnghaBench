
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_emmcphy_softc {int * syscon; } ;
struct phynode_init_def {void* ofw_node; scalar_t__ id; } ;
struct phynode {int dummy; } ;
typedef int phy_init ;
typedef void* phandle_t ;
typedef int pcell_t ;
typedef int handle ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_getencprop (void*,char*,void*,int) ;
 scalar_t__ OF_hasprop (void*,char*) ;
 void* OF_node_from_xref (int ) ;
 scalar_t__ bootverbose ;
 int bzero (struct phynode_init_def*,int) ;
 struct rk_emmcphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 void* ofw_bus_get_node (int ) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 intptr_t phynode_get_id (struct phynode*) ;
 int * phynode_register (struct phynode*) ;
 int rk_emmcphy_phynode_class ;
 scalar_t__ syscon_get_by_ofw_property (int ,void*,char*,int **) ;

__attribute__((used)) static int
rk_emmcphy_attach(device_t dev)
{
 struct phynode_init_def phy_init;
 struct phynode *phynode;
 struct rk_emmcphy_softc *sc;
 phandle_t node;
 phandle_t xnode;
 pcell_t handle;
 intptr_t phy;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 if (OF_getencprop(node, "clocks", (void *)&handle,
     sizeof(handle)) <= 0) {
  device_printf(dev, "cannot get clocks handle\n");
  return (ENXIO);
 }
 xnode = OF_node_from_xref(handle);
 if (OF_hasprop(xnode, "arasan,soc-ctl-syscon") &&
     syscon_get_by_ofw_property(dev, xnode,
     "arasan,soc-ctl-syscon", &sc->syscon) != 0) {
  device_printf(dev, "cannot get grf driver handle\n");
  return (ENXIO);
 }

 if (sc->syscon == ((void*)0)) {
  device_printf(dev, "failed to get syscon\n");
  return (ENXIO);
 }


 bzero(&phy_init, sizeof(phy_init));
 phy_init.id = 0;
 phy_init.ofw_node = ofw_bus_get_node(dev);
 phynode = phynode_create(dev, &rk_emmcphy_phynode_class, &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(dev, "failed to create eMMC PHY\n");
  return (ENXIO);
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(dev, "failed to register eMMC PHY\n");
  return (ENXIO);
 }
 if (bootverbose) {
  phy = phynode_get_id(phynode);
  device_printf(dev, "Attached phy id: %ld\n", phy);
 }
 return (0);
}
