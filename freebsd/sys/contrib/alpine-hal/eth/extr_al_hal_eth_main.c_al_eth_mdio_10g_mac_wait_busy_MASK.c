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
struct al_hal_eth_adapter {int /*<<< orphan*/  name; TYPE_2__* mac_regs_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdio_cfg_status; } ;
struct TYPE_4__ {TYPE_1__ mac_10g; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AL_ETH_MDIO_DELAY_COUNT ; 
 int /*<<< orphan*/  AL_ETH_MDIO_DELAY_PERIOD ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct al_hal_eth_adapter *adapter)
{
	int	count = 0;
	uint32_t mdio_cfg_status;

	do {
		mdio_cfg_status = FUNC2(&adapter->mac_regs_base->mac_10g.mdio_cfg_status);
/*
		if (mdio_cfg_status & AL_BIT(1)){ //error
			al_err(" %s mdio read failed on error. phy_addr 0x%x reg 0x%x\n",
				udma_params.name, phy_addr, reg);
			return -EIO;
		}*/
		if (mdio_cfg_status & FUNC0(0)){
			if (count > 0)
				FUNC1("eth [%s] mdio: still busy!\n", adapter->name);
		}else{
			return 0;
		}
		FUNC3(AL_ETH_MDIO_DELAY_PERIOD);
	}while(count++ < AL_ETH_MDIO_DELAY_COUNT);

	return -ETIMEDOUT;
}