#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct tegra_xhci_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ARU_MAILBOX_CMD_DEST_SMI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ARU_MAILBOX_OWNER_NONE ; 
 int ARU_SMI_INTR_FW_HANG ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xhci_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tegra_xhci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xhci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_CMD ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_DATA_OUT ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_OWNER ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_SMI_INTR ; 
 int /*<<< orphan*/  XUSB_FALCON_CPUCTL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_xhci_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct tegra_xhci_softc *sc;
	uint32_t reg, msg, resp_cmd, resp_data;

	sc = (struct tegra_xhci_softc *)arg;

	/* Clear interrupt first */
	reg = FUNC3(sc, XUSB_CFG_ARU_SMI_INTR);
	FUNC4(sc, XUSB_CFG_ARU_SMI_INTR, reg);
	if (reg & ARU_SMI_INTR_FW_HANG) {
		FUNC5(sc->dev,
		    "XUSB CPU firmware hang!!! CPUCTL: 0x%08X\n",
		    FUNC2(sc, XUSB_FALCON_CPUCTL));
	}

	msg = FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_DATA_OUT);
	resp_cmd = 0;
	FUNC7(sc, FUNC1(msg),
	   FUNC0(msg), &resp_cmd, &resp_data);
	if (resp_cmd != 0)
		FUNC6(sc, resp_cmd, resp_data);
	else
		FUNC4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER,
		    ARU_MAILBOX_OWNER_NONE);

	reg = FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_CMD);
	reg &= ~ARU_MAILBOX_CMD_DEST_SMI;
	FUNC4(sc, T_XUSB_CFG_ARU_MAILBOX_CMD, reg);

}