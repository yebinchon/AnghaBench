#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  paprd_gain_table_index; int /*<<< orphan*/  paprd_gain_table_entries; } ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_INTERNAL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/ * FUNC6 (struct ath_hal*,struct ieee80211_channel*) ; 

int FUNC7(struct ath_hal *ah, struct ieee80211_channel * chan)
{
    HAL_CHANNEL_INTERNAL *ichan = FUNC6(ah, chan);

    if ((FUNC1(ah) && FUNC2(ichan)) ||
         FUNC5(ah, chan)) {
        goto FAIL;
    }
    FUNC3(FUNC0(ah)->paprd_gain_table_entries,
        sizeof(FUNC0(ah)->paprd_gain_table_entries));
    FUNC3(FUNC0(ah)->paprd_gain_table_index,
        sizeof(FUNC0(ah)->paprd_gain_table_index));

    FUNC4(ah);
    return 0;
FAIL:
    return -1;
}