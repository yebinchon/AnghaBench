#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_5__ {int ah_beaconInterval; } ;
struct TYPE_4__ {int bt_nexttbtt; int bt_nextatim; int bt_intval; scalar_t__ bt_flags; int /*<<< orphan*/  bt_nextswba; int /*<<< orphan*/  bt_nextdba; } ;
typedef  TYPE_1__ HAL_BEACON_TIMERS ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_BEACON_PERIOD ; 
 int AR_DBA_TIMER_EN ; 
 int /*<<< orphan*/  AR_DMA_BEACON_PERIOD ; 
 int /*<<< orphan*/  AR_NDP_PERIOD ; 
 int /*<<< orphan*/  AR_NEXT_DMA_BEACON_ALERT ; 
 int /*<<< orphan*/  AR_NEXT_NDP_TIMER ; 
 int /*<<< orphan*/  AR_NEXT_SWBA ; 
 int /*<<< orphan*/  AR_NEXT_TBTT_TIMER ; 
 int /*<<< orphan*/  AR_SWBA_PERIOD ; 
 int AR_SWBA_TIMER_EN ; 
 int AR_TBTT_TIMER_EN ; 
 int /*<<< orphan*/  AR_TIMER_MODE ; 
 int /*<<< orphan*/  AR_TXCFG ; 
 int AR_TXCFG_ADHOC_BEACON_ATIM_TX_POLICY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int HAL_BEACON_PERIOD ; 
 int HAL_BEACON_RESET_TSF ; 
 scalar_t__ HAL_M_HOSTAP ; 
 scalar_t__ HAL_M_IBSS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 
 scalar_t__ opmode ; 

__attribute__((used)) static void
FUNC7(struct ath_hal *ah,
    const HAL_BEACON_TIMERS *bt)
{
	uint32_t bperiod;

#if 0
    HALASSERT(opmode == HAL_M_IBSS || opmode == HAL_M_HOSTAP);
    if (opmode == HAL_M_IBSS) {
        OS_REG_SET_BIT(ah, AR_TXCFG, AR_TXCFG_ADHOC_BEACON_ATIM_TX_POLICY);
    }
#endif

	/* XXX TODO: should migrate the HAL code to always use ONE_EIGHTH_TU */
	FUNC4(ah, AR_NEXT_TBTT_TIMER, FUNC5(bt->bt_nexttbtt));
	FUNC4(ah, AR_NEXT_DMA_BEACON_ALERT, FUNC2(bt->bt_nextdba));
	FUNC4(ah, AR_NEXT_SWBA, FUNC2(bt->bt_nextswba));
	FUNC4(ah, AR_NEXT_NDP_TIMER, FUNC5(bt->bt_nextatim));

	bperiod = FUNC5(bt->bt_intval & HAL_BEACON_PERIOD);
	FUNC0(ah)->ah_beaconInterval = bt->bt_intval & HAL_BEACON_PERIOD;
	FUNC4(ah, AR_BEACON_PERIOD, bperiod);
	FUNC4(ah, AR_DMA_BEACON_PERIOD, bperiod);
	FUNC4(ah, AR_SWBA_PERIOD, bperiod);
	FUNC4(ah, AR_NDP_PERIOD, bperiod);

	/*
	 * Reset TSF if required.
	 */
	if (bt->bt_intval & HAL_BEACON_RESET_TSF)
		FUNC6(ah);

	/* enable timers */
	/* NB: flags == 0 handled specially for backwards compatibility */
	FUNC3(ah, AR_TIMER_MODE,
	    bt->bt_flags != 0 ? bt->bt_flags :
	    AR_TBTT_TIMER_EN | AR_DBA_TIMER_EN | AR_SWBA_TIMER_EN);
}