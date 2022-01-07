
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phynode {int dummy; } ;
struct awusbphy_softc {int ** reg; TYPE_1__* phy_conf; } ;
typedef int * regulator_t ;
typedef int intmax_t ;
typedef int device_t ;
struct TYPE_2__ {intptr_t num_phys; } ;


 int ERANGE ;
 int awusbphy_configure (int ,intptr_t) ;
 int awusbphy_vbus_detect (int ,int*) ;
 scalar_t__ bootverbose ;
 struct awusbphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;

__attribute__((used)) static int
awusbphy_phy_enable(struct phynode *phynode, bool enable)
{
 device_t dev;
 intptr_t phy;
 struct awusbphy_softc *sc;
 regulator_t reg;
 int error, vbus_det;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (phy < 0 || phy >= sc->phy_conf->num_phys)
  return (ERANGE);


 awusbphy_configure(dev, phy);


 reg = sc->reg[phy];
 if (reg == ((void*)0))
  return (0);

 if (phy == 0) {

  error = awusbphy_vbus_detect(dev, &vbus_det);
  if (error)
   goto out;

  if (vbus_det == 1) {
   if (bootverbose)
    device_printf(dev, "External VBUS detected, not enabling the regulator\n");

   return (0);
  }
 }
 if (enable) {

  error = regulator_enable(reg);
 } else
  error = regulator_disable(reg);

out:
 if (error != 0) {
  device_printf(dev,
      "couldn't %s regulator for phy %jd\n",
      enable ? "enable" : "disable", (intmax_t)phy);
  return (error);
 }

 return (0);
}
