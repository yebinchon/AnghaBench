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
 int ARU_MAILBOX_CMD_DEST_FALC ; 
 int ARU_MAILBOX_CMD_INT_EN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ARU_MAILBOX_OWNER_NONE ; 
 int ARU_MAILBOX_OWNER_SW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int FUNC3 (struct tegra_xhci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xhci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_CMD ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_DATA_IN ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_OWNER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct tegra_xhci_softc *sc, uint32_t cmd, uint32_t data)
{
	uint32_t reg;
	int i;

	reg = FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER);
	if (reg != ARU_MAILBOX_OWNER_NONE) {
		FUNC5(sc->dev,
		    "CPU mailbox is busy: 0x%08X\n", reg);
		return (EBUSY);
	}
	/* XXX Is this right? Retry loop? Wait before send? */
	FUNC4(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER, ARU_MAILBOX_OWNER_SW);
	reg = FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER);
	if (reg != ARU_MAILBOX_OWNER_SW) {
		FUNC5(sc->dev,
		    "Cannot acquire CPU mailbox: 0x%08X\n", reg);
		return (EBUSY);
	}
	reg = FUNC1(cmd) | FUNC0(data);
	FUNC4(sc, T_XUSB_CFG_ARU_MAILBOX_DATA_IN, reg);

	reg = FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_CMD);
	reg |= ARU_MAILBOX_CMD_DEST_FALC | ARU_MAILBOX_CMD_INT_EN;
	FUNC4(sc, T_XUSB_CFG_ARU_MAILBOX_CMD, reg);

	for (i = 250; i > 0; i--) {
		reg = FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_OWNER);
		if (reg == ARU_MAILBOX_OWNER_NONE)
			break;
		FUNC2(100);
	}
	if (i <= 0) {
		FUNC5(sc->dev,
		    "Command response timeout: 0x%08X\n", reg);
		return (ETIMEDOUT);
	}

	return(0);
}