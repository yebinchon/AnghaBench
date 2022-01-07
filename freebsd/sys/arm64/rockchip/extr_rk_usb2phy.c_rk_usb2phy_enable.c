
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_usb2phy_softc {scalar_t__ phy_supply; } ;
struct phynode {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int ERANGE ;
 intptr_t RK3399_USBPHY_HOST ;
 struct rk_usb2phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,char*) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int
rk_usb2phy_enable(struct phynode *phynode, bool enable)
{
 struct rk_usb2phy_softc *sc;
 device_t dev;
 intptr_t phy;
 int error;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (phy != RK3399_USBPHY_HOST)
  return (ERANGE);

 if (sc->phy_supply) {
  if (enable)
   error = regulator_enable(sc->phy_supply);
  else
   error = regulator_disable(sc->phy_supply);
  if (error != 0) {
   device_printf(dev, "Cannot %sable the regulator\n",
       enable ? "En" : "Dis");
   goto fail;
  }
 }

 return (0);
fail:
 return (ENXIO);
}
