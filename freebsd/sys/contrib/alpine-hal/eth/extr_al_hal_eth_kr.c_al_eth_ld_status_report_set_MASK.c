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
struct al_eth_kr_status_report_data {scalar_t__ receiver_ready; int /*<<< orphan*/  c_plus; int /*<<< orphan*/  c_zero; int /*<<< orphan*/  c_minus; } ;
typedef  enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_RECEIVER_READY_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_LT_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(
			struct al_hal_eth_adapter *adapter,
			enum al_eth_an_lt_lane lane,
			struct al_eth_kr_status_report_data *status)
{
	uint16_t reg = 0;

	FUNC1(reg,
			 AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_MASK,
			 AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_SHIFT,
			 status->c_minus);

	FUNC1(reg,
			 AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_MASK,
			 AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_SHIFT,
			 status->c_zero);

	FUNC1(reg,
			 AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_MASK,
			 AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_SHIFT,
			 status->c_plus);

	if (status->receiver_ready)
		FUNC0(reg,
			AL_ETH_KR_PMD_LD_STATUS_REPORT_RECEIVER_READY_SHIFT);

	FUNC2(adapter, AL_ETH_KR_PMD_LD_STATUS_REPORT, AL_ETH_LT_REGS, lane, reg);
}