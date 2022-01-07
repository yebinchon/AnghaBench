
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_xhci_softc {int dev; } ;


 int ARU_MAILBOX_CMD_DEST_SMI ;
 int ARU_MAILBOX_DATA_OUT_DATA (int) ;
 int ARU_MAILBOX_DATA_OUT_TYPE (int) ;
 int ARU_MAILBOX_OWNER_NONE ;
 int ARU_SMI_INTR_FW_HANG ;
 int CSB_RD4 (struct tegra_xhci_softc*,int ) ;
 int FPCI_RD4 (struct tegra_xhci_softc*,int ) ;
 int FPCI_WR4 (struct tegra_xhci_softc*,int ,int) ;
 int T_XUSB_CFG_ARU_MAILBOX_CMD ;
 int T_XUSB_CFG_ARU_MAILBOX_DATA_OUT ;
 int T_XUSB_CFG_ARU_MAILBOX_OWNER ;
 int XUSB_CFG_ARU_SMI_INTR ;
 int XUSB_FALCON_CPUCTL ;
 int device_printf (int ,char*,int ) ;
 int mbox_send_ack (struct tegra_xhci_softc*,int,int) ;
 int process_msg (struct tegra_xhci_softc*,int ,int ,int*,int*) ;

__attribute__((used)) static void
intr_mbox(void *arg)
{
 struct tegra_xhci_softc *sc;
 uint32_t reg, msg, resp_cmd, resp_data;

 sc = (struct tegra_xhci_softc *)arg;


 reg = FPCI_RD4(sc, XUSB_CFG_ARU_SMI_INTR);
 FPCI_WR4(sc, XUSB_CFG_ARU_SMI_INTR, reg);
 if (reg & ARU_SMI_INTR_FW_HANG) {
  device_printf(sc->dev,
      "XUSB CPU firmware hang!!! CPUCTL: 0x%08X\n",
      CSB_RD4(sc, XUSB_FALCON_CPUCTL));
 }

 msg = FPCI_RD4(sc, T_XUSB_CFG_ARU_MAILBOX_DATA_OUT);
 resp_cmd = 0;
 process_msg(sc, ARU_MAILBOX_DATA_OUT_TYPE(msg),
    ARU_MAILBOX_DATA_OUT_DATA(msg), &resp_cmd, &resp_data);
 if (resp_cmd != 0)
  mbox_send_ack(sc, resp_cmd, resp_data);
 else
  FPCI_WR4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER,
      ARU_MAILBOX_OWNER_NONE);

 reg = FPCI_RD4(sc, T_XUSB_CFG_ARU_MAILBOX_CMD);
 reg &= ~ARU_MAILBOX_CMD_DEST_SMI;
 FPCI_WR4(sc, T_XUSB_CFG_ARU_MAILBOX_CMD, reg);

}
