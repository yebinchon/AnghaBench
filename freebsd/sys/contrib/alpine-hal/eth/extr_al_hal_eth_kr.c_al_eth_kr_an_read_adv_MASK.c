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
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_an_adv {int selector_field; int echoed_nonce; int capability; int transmitted_nonce; int technology; int fec_capability; void* next_page; void* acknowledge; void* remote_fault; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_AN_REGS ; 
 int /*<<< orphan*/  AL_ETH_AN__LT_LANE_0 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_ACK_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_CAPABILITY_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV2_TECH_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV2_TECH_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV2_TX_NONCE_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV3_FEC_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV3_FEC_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV3_TECH_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_ADV3_TECH_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_REM_ADV0 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_REM_ADV1 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_REM_ADV2 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct al_hal_eth_adapter *adapter,
			   struct al_eth_an_adv *an_adv)
{
	int16_t	reg;

	FUNC2(an_adv != NULL);


	reg = FUNC3(adapter, AL_ETH_KR_AN_REM_ADV0,
				    AL_ETH_AN_REGS, AL_ETH_AN__LT_LANE_0);

	an_adv->selector_field = FUNC1(reg,
					AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK,
					AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT);

	an_adv->echoed_nonce = FUNC1(reg,
					AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK,
					AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT);

	an_adv->capability = FUNC1(reg,
					AL_ETH_KR_AN_ADV1_CAPABILITY_MASK,
					AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT);

	an_adv->remote_fault = FUNC0(reg,
					AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT);

	an_adv->acknowledge = FUNC0(reg,
					AL_ETH_KR_AN_ADV1_ACK_SHIFT);

	an_adv->next_page = FUNC0(reg,
					AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT);


	reg = FUNC3(adapter, AL_ETH_KR_AN_REM_ADV1,
				    AL_ETH_AN_REGS, AL_ETH_AN__LT_LANE_0);

	an_adv->transmitted_nonce = FUNC1(reg,
					 AL_ETH_KR_AN_ADV2_TX_NONCE_MASK,
					 AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT);

	an_adv->technology = FUNC1(reg,
					 AL_ETH_KR_AN_ADV2_TECH_MASK,
					 AL_ETH_KR_AN_ADV2_TECH_SHIFT);


	reg = FUNC3(adapter, AL_ETH_KR_AN_REM_ADV2,
				    AL_ETH_AN_REGS, AL_ETH_AN__LT_LANE_0);

	an_adv->technology |= (FUNC1(reg,
					AL_ETH_KR_AN_ADV3_TECH_MASK,
					AL_ETH_KR_AN_ADV3_TECH_SHIFT)  << 11);

	an_adv->fec_capability = FUNC1(reg,
					 AL_ETH_KR_AN_ADV3_FEC_MASK,
					 AL_ETH_KR_AN_ADV3_FEC_SHIFT);
}