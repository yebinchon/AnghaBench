
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ahci_controller {int r_mem; } ;
typedef int device_t ;


 int AHCI_PHYCS0R ;
 int AHCI_PHYCS1R ;
 int AHCI_PHYCS2R ;
 int AHCI_RWCR ;
 scalar_t__ ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int PHYCS0R_BIT18 ;
 int PHYCS0R_BIT23 ;
 scalar_t__ PHYCS0R_POWER_ENABLE ;
 scalar_t__ PHYCS0R_POWER_STATUS_MASK ;
 scalar_t__ PHYCS0R_PS_GOOD ;
 int PHYCS0R_UF1_INIT ;
 int PHYCS0R_UF1_MASK ;
 int PHYCS0R_UF2_INIT ;
 int PHYCS0R_UF2_MASK ;
 scalar_t__ PHYCS1R_BIT15 ;
 scalar_t__ PHYCS1R_BIT28 ;
 scalar_t__ PHYCS1R_HIGHZ ;
 int PHYCS1R_UF1_INIT ;
 int PHYCS1R_UF1_MASK ;
 int PHYCS1R_UF2_INIT ;
 int PHYCS1R_UF2_MASK ;
 int PHYCS1R_UF3_INIT ;
 int PHYCS1R_UF3_MASK ;
 scalar_t__ PHYCS2R_CALIBRATE ;
 int PHYCS2R_UF1_INIT ;
 int PHYCS2R_UF1_MASK ;
 scalar_t__ PHY_RESET_TIMEOUT ;
 int ahci_clr (int ,int ,scalar_t__) ;
 int ahci_mask_set (int ,int ,int,int) ;
 int ahci_set (int ,int ,scalar_t__) ;
 scalar_t__ bootverbose ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static void
ahci_a10_phy_reset(device_t dev)
{
 uint32_t to, val;
 struct ahci_controller *ctlr = device_get_softc(dev);
 ATA_OUTL(ctlr->r_mem, AHCI_RWCR, 0);
 DELAY(100);





 ahci_set(ctlr->r_mem, AHCI_PHYCS1R, PHYCS1R_HIGHZ);




 ahci_mask_set(ctlr->r_mem, AHCI_PHYCS0R,
     ~PHYCS0R_UF2_MASK,
     PHYCS0R_UF2_INIT | PHYCS0R_BIT23 | PHYCS0R_BIT18);




 ahci_mask_set(ctlr->r_mem, AHCI_PHYCS1R,
     ~(PHYCS1R_UF1_MASK | PHYCS1R_UF2_MASK | PHYCS1R_UF3_MASK),
     PHYCS1R_UF1_INIT | PHYCS1R_UF2_INIT | PHYCS1R_UF3_INIT);




 ahci_set(ctlr->r_mem, AHCI_PHYCS1R, PHYCS1R_BIT15 | PHYCS1R_BIT28);






 ahci_clr(ctlr->r_mem, AHCI_PHYCS1R, PHYCS1R_HIGHZ);




 ahci_mask_set(ctlr->r_mem, AHCI_PHYCS0R,
     ~PHYCS0R_UF1_MASK, PHYCS0R_UF1_INIT);




 ahci_mask_set(ctlr->r_mem, AHCI_PHYCS2R, ~PHYCS2R_UF1_MASK,
     PHYCS2R_UF1_INIT);

 DELAY(100);





 ahci_set(ctlr->r_mem, AHCI_PHYCS0R, PHYCS0R_POWER_ENABLE);
 for (to = PHY_RESET_TIMEOUT; to > 0; to--) {
  val = ATA_INL(ctlr->r_mem, AHCI_PHYCS0R);
  if ((val & PHYCS0R_POWER_STATUS_MASK) == PHYCS0R_PS_GOOD)
   break;
  DELAY(10);
 }
 if (to == 0 && bootverbose)
  device_printf(dev, "PHY Power Failed PHYCS0R = %#x\n", val);





 ahci_set(ctlr->r_mem, AHCI_PHYCS2R, PHYCS2R_CALIBRATE);
 for (to = PHY_RESET_TIMEOUT; to > 0; to--) {
  val = ATA_INL(ctlr->r_mem, AHCI_PHYCS2R);
  if ((val & PHYCS2R_CALIBRATE) == 0)
   break;
  DELAY(10);
 }
 if (to == 0 && bootverbose)
  device_printf(dev, "PHY Cal Failed PHYCS2R %#x\n", val);




 DELAY(1000);




 ATA_OUTL(ctlr->r_mem, AHCI_RWCR, 7);
}
