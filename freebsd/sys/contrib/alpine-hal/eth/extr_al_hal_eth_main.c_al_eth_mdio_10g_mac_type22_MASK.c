#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct al_hal_eth_adapter {TYPE_2__* mac_regs_base; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdio_data; int /*<<< orphan*/  mdio_cfg_status; int /*<<< orphan*/  mdio_cmd; } ;
struct TYPE_4__ {TYPE_1__ mac_10g; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC2 (struct al_hal_eth_adapter*) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(
	struct al_hal_eth_adapter *adapter,
	int read, uint32_t phy_addr, uint32_t reg, uint16_t *val)
{
	int rc;
	const char *op = (read == 1) ? "read":"write";
	uint32_t mdio_cfg_status;
	uint16_t mdio_cmd;

	//wait if the HW is busy
	rc = FUNC2(adapter);
	if (rc) {
		FUNC1(" eth [%s] mdio %s failed. HW is busy\n", adapter->name, op);
		return rc;
	}

	mdio_cmd = (uint16_t)(0x1F & reg);
	mdio_cmd |= (0x1F & phy_addr) << 5;

	if (read)
		mdio_cmd |= FUNC0(15); //READ command

	FUNC5(&adapter->mac_regs_base->mac_10g.mdio_cmd,
			mdio_cmd);
	if (!read)
		FUNC5(&adapter->mac_regs_base->mac_10g.mdio_data,
				*val);

	//wait for the busy to clear
	rc = FUNC2(adapter);
	if (rc != 0) {
		FUNC1(" %s mdio %s failed on timeout\n", adapter->name, op);
		return -ETIMEDOUT;
	}

	mdio_cfg_status = FUNC4(&adapter->mac_regs_base->mac_10g.mdio_cfg_status);

	if (mdio_cfg_status & FUNC0(1)){ //error
		FUNC1(" %s mdio %s failed on error. phy_addr 0x%x reg 0x%x\n",
			adapter->name, op, phy_addr, reg);
			return -EIO;
	}
	if (read)
		*val = FUNC3(
			(uint16_t *)&adapter->mac_regs_base->mac_10g.mdio_data);
	return 0;
}