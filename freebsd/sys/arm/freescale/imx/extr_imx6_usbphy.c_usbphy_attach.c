
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct usbphy_softc {int phy_num; int * mem_res; } ;
typedef int device_t ;


 scalar_t__ const BUS_SPACE_PHYSADDR (int *,int ) ;
 int CTRL_CLKGATE ;
 int CTRL_CLR_REG ;
 int CTRL_ENUTMILEVEL2 ;
 int CTRL_ENUTMILEVEL3 ;
 int CTRL_SET_REG ;
 int CTRL_SFTRST ;
 int ENXIO ;
 scalar_t__ IMX6_ANALOG_USB1_CHRG_DETECT ;
 int IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG ;
 int IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE ;
 int PWD_REG ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_write_4 (int *,int ,int) ;
 struct usbphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int imx6_anatop_write_4 (scalar_t__,int) ;
 int imx_ccm_usbphy_enable (int ) ;
 int usbphy_detach (int ) ;

__attribute__((used)) static int
usbphy_attach(device_t dev)
{
 struct usbphy_softc *sc;
 int err, regoff, rid;

 sc = device_get_softc(dev);
 err = 0;


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }






 const uint32_t PWD_PHY1_REG_PHYSADDR = 0x020c9000;
 if (BUS_SPACE_PHYSADDR(sc->mem_res, 0) == PWD_PHY1_REG_PHYSADDR) {
  sc->phy_num = 0;
  regoff = 0;
 } else {
  sc->phy_num = 1;
  regoff = 0x60;
 }
 imx6_anatop_write_4(IMX6_ANALOG_USB1_CHRG_DETECT + regoff,
     IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE |
     IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG);

 imx6_anatop_write_4(IMX6_ANALOG_USB1_CHRG_DETECT + regoff,
     IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE |
     IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG);






 imx_ccm_usbphy_enable(dev);





 bus_write_4(sc->mem_res, CTRL_SET_REG, CTRL_SFTRST);
 bus_write_4(sc->mem_res, CTRL_CLR_REG, CTRL_SFTRST | CTRL_CLKGATE);


 bus_write_4(sc->mem_res, CTRL_SET_REG,
     CTRL_ENUTMILEVEL2 | CTRL_ENUTMILEVEL3);


 bus_write_4(sc->mem_res, PWD_REG, 0);

 err = 0;

out:

 if (err != 0)
  usbphy_detach(dev);

 return (err);
}
