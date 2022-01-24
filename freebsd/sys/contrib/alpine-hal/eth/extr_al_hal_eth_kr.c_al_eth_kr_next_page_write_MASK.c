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
typedef  int /*<<< orphan*/  uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_an_np {int /*<<< orphan*/  unformatted_code_field2; int /*<<< orphan*/  unformatted_code_field1; int /*<<< orphan*/  next_page; int /*<<< orphan*/  msg_page; int /*<<< orphan*/  ack2; int /*<<< orphan*/  toggle; int /*<<< orphan*/  unformatted_code_field; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_AN_REGS ; 
 int /*<<< orphan*/  AL_ETH_AN__LT_LANE_0 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_ACK2_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_DATA1_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_NP_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_NP_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_XNP_ADV0 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_XNP_ADV1 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_XNP_ADV2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct al_hal_eth_adapter *adapter,
			      struct al_eth_an_np *np)
{
	uint16_t reg = 0;

	FUNC0(reg, AL_ETH_KR_AN_NP_ADV1_DATA1_MASK,
			 AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT,
			 np->unformatted_code_field);
	FUNC0(reg, AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK,
			 AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT,
			 np->toggle);
	FUNC0(reg, AL_ETH_KR_AN_NP_ADV1_ACK2_MASK,
			 AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT,
			 np->ack2);
	FUNC0(reg, AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK,
			 AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT,
			 np->msg_page);
	FUNC0(reg, AL_ETH_KR_AN_NP_ADV1_NP_MASK,
			 AL_ETH_KR_AN_NP_ADV1_NP_SHIFT,
			 np->next_page);

	FUNC1(adapter, AL_ETH_KR_AN_XNP_ADV0, AL_ETH_AN_REGS,
			       AL_ETH_AN__LT_LANE_0, reg);

	FUNC1(adapter, AL_ETH_KR_AN_XNP_ADV1, AL_ETH_AN_REGS,
			       AL_ETH_AN__LT_LANE_0, np->unformatted_code_field1);
	FUNC1(adapter, AL_ETH_KR_AN_XNP_ADV2, AL_ETH_AN_REGS,
			       AL_ETH_AN__LT_LANE_0, np->unformatted_code_field2);

	return 0;
}