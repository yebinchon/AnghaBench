
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode_init_def {int ofw_node; struct padctl_lane* id; } ;
struct phynode {int dummy; } ;
struct padctl_softc {int dev; } ;
struct padctl_pad {int nlanes; struct padctl_lane** lanes; } ;
struct padctl_lane {int enabled; struct padctl_pad* pad; int mux_idx; } ;
typedef int phy_init ;
typedef int phandle_t ;


 int ENXIO ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int bzero (struct phynode_init_def*,int) ;
 int config_lane (struct padctl_softc*,struct padctl_lane*) ;
 int device_printf (int ,char*,...) ;
 int lanes_tbl ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;
 struct padctl_lane* search_lane (struct padctl_softc*,char*) ;
 int search_mux (struct padctl_softc*,struct padctl_lane*,char*) ;
 int xusbpadctl_phynode_class ;

__attribute__((used)) static int
process_lane(struct padctl_softc *sc, phandle_t node, struct padctl_pad *pad)
{
 struct padctl_lane *lane;
 struct phynode *phynode;
 struct phynode_init_def phy_init;
 char *name;
 char *function;
 int rv;

 name = ((void*)0);
 function = ((void*)0);
 rv = OF_getprop_alloc(node, "name", (void **)&name);
 if (rv <= 0) {
  device_printf(sc->dev, "Cannot read lane name.\n");
  return (ENXIO);
 }

 lane = search_lane(sc, name);
 if (lane == ((void*)0)) {
  device_printf(sc->dev, "Unknown lane: %s\n", name);
  rv = ENXIO;
  goto end;
 }


 rv = OF_getprop_alloc(node, "nvidia,function", (void **)&function);
 if (rv <= 0) {
  device_printf(sc->dev, "Cannot read lane function.\n");
  rv = ENXIO;
  goto end;
 }

 lane->mux_idx = search_mux(sc, lane, function);
 if (lane->mux_idx == ~0) {
  device_printf(sc->dev, "Unknown function %s for lane %s\n",
      function, name);
  rv = ENXIO;
  goto end;
 }

 rv = config_lane(sc, lane);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot configure lane: %s: %d\n",
      name, rv);
  rv = ENXIO;
  goto end;
 }
 lane->pad = pad;
 lane->enabled = 1;
 pad->lanes[pad->nlanes++] = lane;


 bzero(&phy_init, sizeof(phy_init));
 phy_init.id = lane - lanes_tbl;
 phy_init.ofw_node = node;
 phynode = phynode_create(sc->dev, &xusbpadctl_phynode_class, &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(sc->dev, "Cannot create phy\n");
  rv = ENXIO;
  goto end;
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(sc->dev, "Cannot create phy\n");
  return (ENXIO);
 }

 rv = 0;

end:
 if (name != ((void*)0))
  OF_prop_free(name);
 if (function != ((void*)0))
  OF_prop_free(function);
 return (rv);
}
