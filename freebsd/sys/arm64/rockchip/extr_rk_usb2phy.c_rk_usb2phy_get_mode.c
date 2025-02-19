
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_usb2phy_softc {int mode; } ;
struct phynode {int dummy; } ;
typedef int device_t ;


 int ERANGE ;
 intptr_t RK3399_USBPHY_HOST ;
 struct rk_usb2phy_softc* device_get_softc (int ) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;

__attribute__((used)) static int
rk_usb2phy_get_mode(struct phynode *phynode, int *mode)
{
 struct rk_usb2phy_softc *sc;
 intptr_t phy;
 device_t dev;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (phy != RK3399_USBPHY_HOST)
  return (ERANGE);

 *mode = sc->mode;

 return (0);
}
