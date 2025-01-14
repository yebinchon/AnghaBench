
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct phynode {int dummy; } ;
struct awusbphy_softc {int mode; int phy_ctrl; TYPE_1__* phy_conf; } ;
typedef int device_t ;
struct TYPE_2__ {int phy0_route; } ;


 int CLR4 (int ,int ,int ) ;
 int DPDM_CHANGE_DET ;
 int DPDM_PULLUP_EN ;
 int EINVAL ;
 int FORCE_ID ;
 int FORCE_ID_LOW ;
 int FORCE_ID_SHIFT ;
 int FORCE_VBUS_VALID ;
 int FORCE_VBUS_VALID_HIGH ;
 int FORCE_VBUS_VALID_SHIFT ;
 int ID_CHANGE_DET ;
 int ID_PULLUP_EN ;
 int OTG_PHY_CFG ;
 int OTG_PHY_ROUTE_OTG ;
 int PHY_CSR ;


 int SET4 (int ,int ,int ) ;
 int VBUS_CHANGE_DET ;
 int awusbphy_vbus_detect (int ,int*) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct awusbphy_softc* device_get_softc (int ) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;

__attribute__((used)) static int
awusbphy_set_mode(struct phynode *phynode, int mode)
{
 device_t dev;
 intptr_t phy;
 struct awusbphy_softc *sc;
 uint32_t val;
 int error, vbus_det;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (phy != 0) {
  if (mode != 129)
   return (EINVAL);
  return (0);
 }

 switch (mode) {
 case 129:
  val = bus_read_4(sc->phy_ctrl, PHY_CSR);
  val &= ~(VBUS_CHANGE_DET | ID_CHANGE_DET | DPDM_CHANGE_DET);
  val |= (ID_PULLUP_EN | DPDM_PULLUP_EN);
  val &= ~FORCE_ID;
  val |= (FORCE_ID_LOW << FORCE_ID_SHIFT);
  val &= ~FORCE_VBUS_VALID;
  val |= (FORCE_VBUS_VALID_HIGH << FORCE_VBUS_VALID_SHIFT);
  bus_write_4(sc->phy_ctrl, PHY_CSR, val);
  if (sc->phy_conf->phy0_route == 1) {
   error = awusbphy_vbus_detect(dev, &vbus_det);
   if (error)
    goto out;
   if (vbus_det == 0)
    CLR4(sc->phy_ctrl, OTG_PHY_CFG,
      OTG_PHY_ROUTE_OTG);
   else
    SET4(sc->phy_ctrl, OTG_PHY_CFG,
      OTG_PHY_ROUTE_OTG);
  }
  break;
 case 128:

  break;
 }

 sc->mode = mode;


out:
 return (0);
}
