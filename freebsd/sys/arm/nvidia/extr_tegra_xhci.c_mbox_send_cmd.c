
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_xhci_softc {int dev; } ;


 int ARU_MAILBOX_CMD_DEST_FALC ;
 int ARU_MAILBOX_CMD_INT_EN ;
 int ARU_MAILBOX_DATA_IN_DATA (int) ;
 int ARU_MAILBOX_DATA_IN_TYPE (int) ;
 int ARU_MAILBOX_OWNER_NONE ;
 int ARU_MAILBOX_OWNER_SW ;
 int DELAY (int) ;
 int EBUSY ;
 int ETIMEDOUT ;
 int FPCI_RD4 (struct tegra_xhci_softc*,int ) ;
 int FPCI_WR4 (struct tegra_xhci_softc*,int ,int) ;
 int T_XUSB_CFG_ARU_MAILBOX_CMD ;
 int T_XUSB_CFG_ARU_MAILBOX_DATA_IN ;
 int T_XUSB_CFG_ARU_MAILBOX_OWNER ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
mbox_send_cmd(struct tegra_xhci_softc *sc, uint32_t cmd, uint32_t data)
{
 uint32_t reg;
 int i;

 reg = FPCI_RD4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER);
 if (reg != ARU_MAILBOX_OWNER_NONE) {
  device_printf(sc->dev,
      "CPU mailbox is busy: 0x%08X\n", reg);
  return (EBUSY);
 }

 FPCI_WR4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER, ARU_MAILBOX_OWNER_SW);
 reg = FPCI_RD4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER);
 if (reg != ARU_MAILBOX_OWNER_SW) {
  device_printf(sc->dev,
      "Cannot acquire CPU mailbox: 0x%08X\n", reg);
  return (EBUSY);
 }
 reg = ARU_MAILBOX_DATA_IN_TYPE(cmd) | ARU_MAILBOX_DATA_IN_DATA(data);
 FPCI_WR4(sc, T_XUSB_CFG_ARU_MAILBOX_DATA_IN, reg);

 reg = FPCI_RD4(sc, T_XUSB_CFG_ARU_MAILBOX_CMD);
 reg |= ARU_MAILBOX_CMD_DEST_FALC | ARU_MAILBOX_CMD_INT_EN;
 FPCI_WR4(sc, T_XUSB_CFG_ARU_MAILBOX_CMD, reg);

 for (i = 250; i > 0; i--) {
  reg = FPCI_RD4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER);
  if (reg == ARU_MAILBOX_OWNER_NONE)
   break;
  DELAY(100);
 }
 if (i <= 0) {
  device_printf(sc->dev,
      "Command response timeout: 0x%08X\n", reg);
  return (ETIMEDOUT);
 }

 return(0);
}
