#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct al_hal_eth_adapter {TYPE_3__* mac_regs_base; int /*<<< orphan*/  mac_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmd_cfg; } ;
struct TYPE_6__ {TYPE_1__ mac_10g; TYPE_2__ mac_1g; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ETH_10G_MAC_CMD_CFG_RX_ENA ; 
 int ETH_10G_MAC_CMD_CFG_TX_ENA ; 
 int ETH_1G_MAC_CMD_CFG_RX_ENA ; 
 int ETH_1G_MAC_CMD_CFG_TX_ENA ; 
 int /*<<< orphan*/  ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR ; 
 int ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_RX_ENA ; 
 int ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_TX_ENA ; 
 int FUNC3 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct al_hal_eth_adapter *adapter)
{
	if (FUNC1(adapter->mac_mode))
		/* 1G MAC control register */
		FUNC5(&adapter->mac_regs_base->mac_1g.cmd_cfg,
				ETH_1G_MAC_CMD_CFG_TX_ENA | ETH_1G_MAC_CMD_CFG_RX_ENA,
				0);
	else if (FUNC0(adapter->mac_mode) || FUNC2(adapter->mac_mode))
		/* 10G MAC control register  */
		FUNC5(&adapter->mac_regs_base->mac_10g.cmd_cfg,
				ETH_10G_MAC_CMD_CFG_TX_ENA | ETH_10G_MAC_CMD_CFG_RX_ENA,
				0);
	else {
		uint32_t cmd_cfg;

		cmd_cfg = FUNC3(adapter,
				ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR);

		cmd_cfg &= ~(ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_TX_ENA |
			    ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_RX_ENA);

		FUNC4(adapter,
				ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR,
				cmd_cfg);
	}

	return 0;
}