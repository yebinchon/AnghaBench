
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ahci_controller {int numirqs; int * r_mem; scalar_t__ r_rid; scalar_t__ subdeviceid; scalar_t__ subvendorid; scalar_t__ deviceid; scalar_t__ vendorid; } ;
typedef int device_t ;


 int AHCI_CAP ;
 int AHCI_CAP_SSS ;
 int AHCI_PI ;
 int ATA_INL (int *,int ) ;
 int ATA_OUTL (int *,int ,int) ;
 int DELAY (int) ;
 int ENXIO ;
 int ETIMEDOUT ;
 int IOMUX_GPR13 ;
 int IOMUX_GPR13_SATA_PHY_0 (int) ;
 int IOMUX_GPR13_SATA_PHY_1 (int) ;
 int IOMUX_GPR13_SATA_PHY_2 (int) ;
 int IOMUX_GPR13_SATA_PHY_3 (int) ;
 int IOMUX_GPR13_SATA_PHY_4 (int) ;
 int IOMUX_GPR13_SATA_PHY_5 (int) ;
 int IOMUX_GPR13_SATA_PHY_6 (int) ;
 int IOMUX_GPR13_SATA_PHY_7 (int) ;
 int IOMUX_GPR13_SATA_PHY_8 (int) ;
 int IOMUX_GPR13_SATA_SPEED (int) ;
 int RF_ACTIVE ;
 int SATA_PHY_CLOCK_RESET ;
 int SATA_PHY_CLOCK_RESET_RST ;
 int SATA_PHY_LANE0_OUT_STAT ;
 int SATA_PHY_LANE0_OUT_STAT_RX_PLL_STATE ;
 int SATA_TIMER1MS ;
 int SYS_RES_MEMORY ;
 int ahci_attach (int ) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int imx6_ahci_phy_read (struct ahci_controller*,int ,int*) ;
 int imx6_ahci_phy_write (struct ahci_controller*,int ,int ) ;
 int imx6_ccm_sata_enable () ;
 int imx_ccm_ahb_hz () ;
 int imx_iomux_gpr_get (int ) ;
 int imx_iomux_gpr_set (int ,int) ;

__attribute__((used)) static int
imx6_ahci_attach(device_t dev)
{
 struct ahci_controller* ctlr;
 uint16_t pllstat;
 uint32_t v;
 int error, timeout;

 ctlr = device_get_softc(dev);


 error = imx6_ccm_sata_enable();
 if (error != 0) {
  device_printf(dev, "error enabling controller and phy\n");
  return (error);
 }

 ctlr->vendorid = 0;
 ctlr->deviceid = 0;
 ctlr->subvendorid = 0;
 ctlr->subdeviceid = 0;
 ctlr->numirqs = 1;
 ctlr->r_rid = 0;
 if ((ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE)) == ((void*)0)) {
  return (ENXIO);
 }

 v = imx_iomux_gpr_get(IOMUX_GPR13);

 v &= ~(IOMUX_GPR13_SATA_PHY_8(7) |
        IOMUX_GPR13_SATA_PHY_7(0x1f) |
        IOMUX_GPR13_SATA_PHY_6(7) |
        IOMUX_GPR13_SATA_SPEED(1) |
        IOMUX_GPR13_SATA_PHY_5(1) |
        IOMUX_GPR13_SATA_PHY_4(7) |
        IOMUX_GPR13_SATA_PHY_3(0xf) |
        IOMUX_GPR13_SATA_PHY_2(0x1f) |
        IOMUX_GPR13_SATA_PHY_1(1) |
        IOMUX_GPR13_SATA_PHY_0(1));

 v |= IOMUX_GPR13_SATA_PHY_8(5) |
      IOMUX_GPR13_SATA_PHY_7(0x12) |
      IOMUX_GPR13_SATA_PHY_6(3) |
      IOMUX_GPR13_SATA_SPEED(1) |
      IOMUX_GPR13_SATA_PHY_5(0) |
      IOMUX_GPR13_SATA_PHY_4(4) |
      IOMUX_GPR13_SATA_PHY_3(0) |
      IOMUX_GPR13_SATA_PHY_2(0x11) |
      IOMUX_GPR13_SATA_PHY_1(1);
 imx_iomux_gpr_set(IOMUX_GPR13, v);


 error = imx6_ahci_phy_write(ctlr, SATA_PHY_CLOCK_RESET,
     SATA_PHY_CLOCK_RESET_RST);
 if (error != 0) {
  device_printf(dev, "cannot reset PHY\n");
  goto fail;
 }

 for (timeout = 50; timeout > 0; --timeout) {
  DELAY(100);
  error = imx6_ahci_phy_read(ctlr, SATA_PHY_LANE0_OUT_STAT,
      &pllstat);
  if (error != 0) {
   device_printf(dev, "cannot read LANE0 status\n");
   goto fail;
  }
  if (pllstat & SATA_PHY_LANE0_OUT_STAT_RX_PLL_STATE) {
   break;
  }
 }
 if (timeout <= 0) {
  device_printf(dev, "time out reading LANE0 status\n");
  error = ETIMEDOUT;
  goto fail;
 }


 v = ATA_INL(ctlr->r_mem, AHCI_CAP);
 ATA_OUTL(ctlr->r_mem, AHCI_CAP, v | AHCI_CAP_SSS);


 v = ATA_INL(ctlr->r_mem, AHCI_PI);
 ATA_OUTL(ctlr->r_mem, AHCI_PI, v | (1 << 0));


 ATA_OUTL(ctlr->r_mem, SATA_TIMER1MS,
   imx_ccm_ahb_hz() / 1000);




 return (ahci_attach(dev));

fail:
 bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
 return (error);
}
