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
struct al_eth_kr_coef_up_data {int preset; int initialize; void* c_plus; void* c_zero; void* c_minus; } ;
typedef  enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_INITIALIZE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_MINUS_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_MINUS_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_PLUS_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_PLUS_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_PRESET_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_ZERO_MASK ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LP_COEF_UP_ZERO_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_LT_REGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(
			struct al_hal_eth_adapter *adapter,
			enum al_eth_an_lt_lane lane,
			struct al_eth_kr_coef_up_data *lpcoeff)
{
	uint16_t reg;

	reg = FUNC2(adapter, AL_ETH_KR_PMD_LP_COEF_UP, AL_ETH_LT_REGS, lane);

	lpcoeff->preset =
		(FUNC0(
			reg, AL_ETH_KR_PMD_LP_COEF_UP_PRESET_SHIFT) != 0);

	lpcoeff->initialize =
		(FUNC0(
			reg, AL_ETH_KR_PMD_LP_COEF_UP_INITIALIZE_SHIFT) != 0);

	lpcoeff->c_minus = FUNC1(reg,
					AL_ETH_KR_PMD_LP_COEF_UP_MINUS_MASK,
					AL_ETH_KR_PMD_LP_COEF_UP_MINUS_SHIFT);

	lpcoeff->c_zero = FUNC1(reg,
					AL_ETH_KR_PMD_LP_COEF_UP_ZERO_MASK,
					AL_ETH_KR_PMD_LP_COEF_UP_ZERO_SHIFT);

	lpcoeff->c_plus = FUNC1(reg,
					AL_ETH_KR_PMD_LP_COEF_UP_PLUS_MASK,
					AL_ETH_KR_PMD_LP_COEF_UP_PLUS_SHIFT);
}