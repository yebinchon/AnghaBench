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
typedef  int /*<<< orphan*/  HAL_CHANNEL_INTERNAL ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,struct ieee80211_channel*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct ath_hal*,struct ieee80211_channel*) ; 

__attribute__((used)) static inline HAL_BOOL
FUNC3(struct ath_hal *ah, struct ieee80211_channel *chan, HAL_BOOL skip_if_none, HAL_BOOL apply_last_iqcorr)
{
    HAL_CHANNEL_INTERNAL *ichan = FUNC2(ah, chan);
    HAL_BOOL do_rtt_cal = AH_TRUE;
    HAL_BOOL enable_rtt = AH_FALSE;

    FUNC0(ichan);

    return FUNC1(ah, chan, ichan, enable_rtt, do_rtt_cal, skip_if_none, apply_last_iqcorr);
}