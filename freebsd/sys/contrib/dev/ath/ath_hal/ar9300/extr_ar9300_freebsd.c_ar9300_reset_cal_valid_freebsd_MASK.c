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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,struct ieee80211_channel const*,int /*<<< orphan*/ *,int) ; 

HAL_BOOL
FUNC1(struct ath_hal *ah,
    const struct ieee80211_channel *chan)
{

	HAL_BOOL is_cal_done = AH_TRUE;
	
	FUNC0(ah, chan, &is_cal_done, 0xffffffff);
	return (is_cal_done);
}