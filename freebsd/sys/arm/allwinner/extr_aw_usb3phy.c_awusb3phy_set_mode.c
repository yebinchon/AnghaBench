
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;
struct awusb3phy_softc {int mode; } ;
typedef int device_t ;


 int EINVAL ;
 int PHY_USB_MODE_HOST ;
 struct awusb3phy_softc* device_get_softc (int ) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;

__attribute__((used)) static int
awusb3phy_set_mode(struct phynode *phynode, int mode)
{
 device_t dev;
 intptr_t phy;
 struct awusb3phy_softc *sc;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (mode != PHY_USB_MODE_HOST)
  return (EINVAL);

 sc->mode = mode;

 return (0);
}
