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
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_wol_params {int int_mask; int ethr_type1; int forward_mask; scalar_t__ ethr_type2; int /*<<< orphan*/ * ipv6; int /*<<< orphan*/ * ipv4; int /*<<< orphan*/ * pswd; } ;
struct TYPE_3__ {int /*<<< orphan*/  wol_en; int /*<<< orphan*/  ethertype; int /*<<< orphan*/  ipv6_dip_word3; int /*<<< orphan*/  ipv6_dip_word2; int /*<<< orphan*/  ipv6_dip_word1; int /*<<< orphan*/  ipv6_dip_word0; int /*<<< orphan*/  ipv4_dip; int /*<<< orphan*/  magic_pswd_h; int /*<<< orphan*/  magic_pswd_l; } ;
struct TYPE_4__ {TYPE_1__ wol; } ;

/* Variables and functions */
 int AL_ETH_WOL_INT_ETHERTYPE_BC ; 
 int AL_ETH_WOL_INT_ETHERTYPE_DA ; 
 int AL_ETH_WOL_INT_IPV4 ; 
 int AL_ETH_WOL_INT_IPV6 ; 
 int AL_ETH_WOL_INT_MAGIC_PSWD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(
		struct al_hal_eth_adapter *adapter,
		struct al_eth_wol_params *wol)
{
	uint32_t reg = 0;

	if (wol->int_mask & AL_ETH_WOL_INT_MAGIC_PSWD) {
		FUNC0(wol->pswd != NULL);

		FUNC1(&reg, &wol->pswd[0], 4);
		FUNC2(&adapter->ec_regs_base->wol.magic_pswd_l, reg);

		FUNC1(&reg, &wol->pswd[4], 2);
		FUNC2(&adapter->ec_regs_base->wol.magic_pswd_h, reg);
	}

	if (wol->int_mask & AL_ETH_WOL_INT_IPV4) {
		FUNC0(wol->ipv4 != NULL);

		FUNC1(&reg, &wol->ipv4[0], 4);
		FUNC2(&adapter->ec_regs_base->wol.ipv4_dip, reg);
	}

	if (wol->int_mask & AL_ETH_WOL_INT_IPV6) {
		FUNC0(wol->ipv6 != NULL);

		FUNC1(&reg, &wol->ipv6[0], 4);
		FUNC2(&adapter->ec_regs_base->wol.ipv6_dip_word0, reg);

		FUNC1(&reg, &wol->ipv6[4], 4);
		FUNC2(&adapter->ec_regs_base->wol.ipv6_dip_word1, reg);

		FUNC1(&reg, &wol->ipv6[8], 4);
		FUNC2(&adapter->ec_regs_base->wol.ipv6_dip_word2, reg);

		FUNC1(&reg, &wol->ipv6[12], 4);
		FUNC2(&adapter->ec_regs_base->wol.ipv6_dip_word3, reg);
	}

	if (wol->int_mask &
		(AL_ETH_WOL_INT_ETHERTYPE_BC | AL_ETH_WOL_INT_ETHERTYPE_DA)) {

		reg = ((uint32_t)wol->ethr_type2 << 16);
		reg |= wol->ethr_type1;

		FUNC2(&adapter->ec_regs_base->wol.ethertype, reg);
	}

	/* make sure we dont forwarding packets without interrupt */
	FUNC0((wol->forward_mask | wol->int_mask) == wol->int_mask);

	reg = ((uint32_t)wol->forward_mask << 16);
	reg |= wol->int_mask;
	FUNC2(&adapter->ec_regs_base->wol.wol_en, reg);

	return 0;
}