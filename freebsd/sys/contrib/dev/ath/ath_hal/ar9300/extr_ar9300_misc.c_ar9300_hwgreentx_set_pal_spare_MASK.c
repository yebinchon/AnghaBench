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
struct ath_hal_9300 {scalar_t__ ah_hw_green_tx_enable; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_TXRF3 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_TXRF3_OLD_PAL_SPARE ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ath_hal *ah, int value)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);

    if (FUNC1(ah) && ahp->ah_hw_green_tx_enable) {
        if ((value == 0) || (value == 1)) {
            FUNC2(ah, AR_PHY_65NM_CH0_TXRF3, 
                             AR_PHY_65NM_CH0_TXRF3_OLD_PAL_SPARE, value);
        }
    }
}