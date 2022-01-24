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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_tx_chainmask; int /*<<< orphan*/ * small_signal_gain; int /*<<< orphan*/ ** pa_table; } ;
typedef  int HAL_STATUS ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int HAL_EINPROGRESS ; 
 int HAL_OK ; 
 int /*<<< orphan*/  NUM_BIN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (struct ath_hal*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,char*,int) ; 

HAL_STATUS FUNC8(struct ath_hal * ah,
  struct ieee80211_channel * chan, int chain_num)
{
    int status = 0;
    u_int32_t *pa_table, small_signal_gain;
    int pa_in[NUM_BIN + 1];

    if (FUNC0(ah)->ah_tx_chainmask & (1 << chain_num)) {
        pa_table = &FUNC0(ah)->pa_table[chain_num][0];
        /* Compute PA table and gain index */
        status = FUNC5(ah, &pa_table[0], &small_signal_gain, 
                    &pa_in[0]);

		if (FUNC3(ah)) {
			FUNC4(1000);
		}

        if (status != 0) {
            FUNC7(ah, "ERROR:: paprd failed with error code = %d\n",
                status);
            return -1;
        }
        FUNC0(ah)->small_signal_gain[chain_num] = small_signal_gain;

        if (FUNC2(ah) || FUNC1(ah)) {
            if (FUNC6(ah, pa_in)) {
                /* need re-train PAPRD */
                return HAL_EINPROGRESS;
		    }
        }
    }
    return HAL_OK;
}