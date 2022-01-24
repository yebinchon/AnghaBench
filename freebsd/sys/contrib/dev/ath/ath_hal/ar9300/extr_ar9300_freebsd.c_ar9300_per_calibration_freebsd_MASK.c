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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  halRxChainMask; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

HAL_BOOL
FUNC2(struct ath_hal *ah,
    struct ieee80211_channel *chan, u_int rxchainmask, HAL_BOOL long_cal,
    HAL_BOOL *isCalDone)
{
	/* XXX fake scheduled calibrations for now */
	u_int32_t sched_cals = 0xfffffff;

	return FUNC1(ah, chan,
	    FUNC0(ah)->ah_caps.halRxChainMask,
	    long_cal,
	    isCalDone,
	    0,			/* is_scan */
	    &sched_cals);
}