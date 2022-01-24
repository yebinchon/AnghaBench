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
typedef  int u_int32_t ;
struct ath_hal_9300 {int* ah_immunity_vals; scalar_t__ ah_immunity_on; } ;
struct ath_hal {int dummy; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_SFCORR ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_EXT ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_EXT_M1_THRESH ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_EXT_M1_THRESH_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_EXT_M2_THRESH ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_EXT_M2_THRESH_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_LOW_M1_THRESH_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_LOW_M2_THRESH_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_M1_THRESH ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_M2COUNT_THR ; 
 int /*<<< orphan*/  AR_PHY_SFCORR_M2_THRESH ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ath_hal *ah, HAL_BOOL enable)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    u_int32_t m1_thresh_low = enable ? 127 : ahp->ah_immunity_vals[0],
              m2_thresh_low = enable ? 127 : ahp->ah_immunity_vals[1],
              m1_thresh = enable ? 127 : ahp->ah_immunity_vals[2],
              m2_thresh = enable ? 127 : ahp->ah_immunity_vals[3],
              m2_count_thr = enable ? 31 : ahp->ah_immunity_vals[4],
              m2_count_thr_low = enable ? 63 : ahp->ah_immunity_vals[5];

    if (ahp->ah_immunity_on == enable) {
        return;
    }

    ahp->ah_immunity_on = enable;

    FUNC2(ah, AR_PHY_SFCORR_LOW,
                     AR_PHY_SFCORR_LOW_M1_THRESH_LOW, m1_thresh_low);
    FUNC2(ah, AR_PHY_SFCORR_LOW,
                     AR_PHY_SFCORR_LOW_M2_THRESH_LOW, m2_thresh_low);
    FUNC2(ah, AR_PHY_SFCORR,
                     AR_PHY_SFCORR_M1_THRESH, m1_thresh);
    FUNC2(ah, AR_PHY_SFCORR,
                     AR_PHY_SFCORR_M2_THRESH, m2_thresh);
    FUNC2(ah, AR_PHY_SFCORR,
                     AR_PHY_SFCORR_M2COUNT_THR, m2_count_thr);
    FUNC2(ah, AR_PHY_SFCORR_LOW,
                     AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, m2_count_thr_low);

    FUNC2(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M1_THRESH_LOW, m1_thresh_low);
    FUNC2(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M2_THRESH_LOW, m2_thresh_low);
    FUNC2(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M1_THRESH, m1_thresh);
    FUNC2(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M2_THRESH, m2_thresh);

    if (!enable) {
        FUNC3(ah, AR_PHY_SFCORR_LOW,
                       AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);
    } else {
        FUNC1(ah, AR_PHY_SFCORR_LOW,
                       AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);
    }
}