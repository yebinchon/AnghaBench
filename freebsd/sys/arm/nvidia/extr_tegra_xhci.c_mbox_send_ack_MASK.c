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
struct tegra_xhci_softc {int dummy; } ;

/* Variables and functions */
 int ARU_MAILBOX_CMD_DEST_FALC ; 
 int ARU_MAILBOX_CMD_INT_EN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct tegra_xhci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xhci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_CMD ; 
 int /*<<< orphan*/  T_XUSB_CFG_ARU_MAILBOX_DATA_IN ; 

__attribute__((used)) static void
FUNC4(struct tegra_xhci_softc *sc, uint32_t cmd, uint32_t data)
{
	uint32_t reg;

	reg = FUNC1(cmd) | FUNC0(data);
	FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_DATA_IN, reg);

	reg = FUNC2(sc, T_XUSB_CFG_ARU_MAILBOX_CMD);
	reg |= ARU_MAILBOX_CMD_DEST_FALC | ARU_MAILBOX_CMD_INT_EN;
	FUNC3(sc, T_XUSB_CFG_ARU_MAILBOX_CMD, reg);
}