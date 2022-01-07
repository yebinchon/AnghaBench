
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phynode_init_def {int id; int ofw_node; } ;
struct phynode {int dummy; } ;
struct awusbphy_softc {TYPE_1__* phy_conf; } ;
typedef int phy_init ;
typedef int device_t ;
struct TYPE_2__ {int num_phys; } ;


 int ENXIO ;
 int awusbphy_init (int ) ;
 int awusbphy_phynode_class ;
 int bzero (struct phynode_init_def*,int) ;
 struct awusbphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;

__attribute__((used)) static int
awusbphy_attach(device_t dev)
{
 int error;
 struct phynode *phynode;
 struct phynode_init_def phy_init;
 struct awusbphy_softc *sc;
 int i;

 sc = device_get_softc(dev);
 error = awusbphy_init(dev);
 if (error) {
  device_printf(dev, "failed to initialize USB PHY, error %d\n",
      error);
  return (error);
 }


 for (i = 0; i < sc->phy_conf->num_phys; i++) {
  bzero(&phy_init, sizeof(phy_init));
  phy_init.id = i;
  phy_init.ofw_node = ofw_bus_get_node(dev);
  phynode = phynode_create(dev, &awusbphy_phynode_class,
      &phy_init);
  if (phynode == ((void*)0)) {
   device_printf(dev, "failed to create USB PHY\n");
   return (ENXIO);
  }
  if (phynode_register(phynode) == ((void*)0)) {
   device_printf(dev, "failed to create USB PHY\n");
   return (ENXIO);
  }
 }

 return (error);
}
