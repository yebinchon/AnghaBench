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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ath_hal_9300 {int /*<<< orphan*/  ah_beacon_rssi_threshold; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_RSSI_THR ; 
 int /*<<< orphan*/  AR_RSSI_THR_VAL ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ath_hal *ah,
                                        u_int32_t rssi_threshold)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);

    FUNC1(ah, AR_RSSI_THR, AR_RSSI_THR_VAL, rssi_threshold);

    /* save value for restoring after chip reset */
    ahp->ah_beacon_rssi_threshold = rssi_threshold;
}