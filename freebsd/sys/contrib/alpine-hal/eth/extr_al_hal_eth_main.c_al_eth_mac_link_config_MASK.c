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
struct al_hal_eth_adapter {scalar_t__ mac_mode; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ al_bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AL_ETH_MAC_MODE_RGMII ; 
 scalar_t__ AL_ETH_MAC_MODE_SGMII_2_5G ; 
 scalar_t__ AL_FALSE ; 
 scalar_t__ AL_TRUE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct al_hal_eth_adapter*,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct al_hal_eth_adapter*,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 

int FUNC5(struct al_hal_eth_adapter *adapter,
			   al_bool force_1000_base_x,
			   al_bool an_enable,
			   uint32_t speed,
			   al_bool full_duplex)
{
	if ((!FUNC0(adapter->mac_mode)) &&
		(adapter->mac_mode != AL_ETH_MAC_MODE_SGMII_2_5G)) {
		FUNC1("eth [%s]: this function not supported in this mac mode.\n",
			       adapter->name);
		return -EINVAL;
	}

	if ((adapter->mac_mode != AL_ETH_MAC_MODE_RGMII) && (an_enable)) {
		/*
		 * an_enable is not relevant to RGMII mode.
		 * in AN mode speed and duplex aren't relevant.
		 */
		FUNC4("eth [%s]: set auto negotiation to enable\n", adapter->name);
	} else {
		FUNC4("eth [%s]: set link speed to %dMbps. %s duplex.\n", adapter->name,
			speed, full_duplex == AL_TRUE ? "full" : "half");

		if ((speed != 10) && (speed != 100) && (speed != 1000)) {
			FUNC1("eth [%s]: bad speed parameter (%d).\n",
				       adapter->name, speed);
			return -EINVAL;
		}
		if ((speed == 1000) && (full_duplex == AL_FALSE)) {
			FUNC1("eth [%s]: half duplex in 1Gbps is not supported.\n",
				       adapter->name);
			return -EINVAL;
		}
	}

	if (FUNC0(adapter->mac_mode))
		FUNC3(adapter,
					      force_1000_base_x,
					      an_enable,
					      speed,
					      full_duplex);
	else
		FUNC2(adapter,
					       force_1000_base_x,
					       an_enable,
					       speed,
					       full_duplex);

	return 0;
}