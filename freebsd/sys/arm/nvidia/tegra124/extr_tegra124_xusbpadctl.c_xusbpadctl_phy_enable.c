
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;
struct padctl_softc {int phy_ena_cnt; } ;
struct padctl_pad {int (* powerup ) (struct padctl_softc*,struct padctl_lane*) ;int (* powerdown ) (struct padctl_softc*,struct padctl_lane*) ;} ;
struct padctl_lane {intptr_t name; struct padctl_pad* pad; int enabled; } ;
typedef int device_t ;


 int ENXIO ;
 struct padctl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,intptr_t) ;
 struct padctl_lane* lanes_tbl ;
 intptr_t nitems (struct padctl_lane*) ;
 int phy_powerdown (struct padctl_softc*) ;
 int phy_powerup (struct padctl_softc*) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;
 int stub1 (struct padctl_softc*,struct padctl_lane*) ;
 int stub2 (struct padctl_softc*,struct padctl_lane*) ;

__attribute__((used)) static int
xusbpadctl_phy_enable(struct phynode *phy, bool enable)
{
 device_t dev;
 intptr_t id;
 struct padctl_softc *sc;
 struct padctl_lane *lane;
 struct padctl_pad *pad;
 int rv;

 dev = phynode_get_device(phy);
 id = phynode_get_id(phy);
 sc = device_get_softc(dev);

 if (id < 0 || id >= nitems(lanes_tbl)) {
  device_printf(dev, "Unknown phy: %d\n", id);
  return (ENXIO);
 }
 lane = lanes_tbl + id;
 if (!lane->enabled) {
  device_printf(dev, "Lane is not enabled/configured: %s\n",
      lane->name);
  return (ENXIO);
 }
 pad = lane->pad;
 if (enable) {
  if (sc->phy_ena_cnt == 0) {
   rv = phy_powerup(sc);
   if (rv != 0)
    return (rv);
  }
  sc->phy_ena_cnt++;
 }

 if (enable)
  rv = pad->powerup(sc, lane);
 else
  rv = pad->powerdown(sc, lane);
 if (rv != 0)
  return (rv);

 if (!enable) {
   if (sc->phy_ena_cnt == 1) {
   rv = phy_powerdown(sc);
   if (rv != 0)
    return (rv);
  }
  sc->phy_ena_cnt--;
 }

 return (0);
}
