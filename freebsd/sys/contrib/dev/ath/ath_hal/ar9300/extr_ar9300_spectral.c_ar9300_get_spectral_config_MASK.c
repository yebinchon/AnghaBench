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
struct ath_hal_9300 {scalar_t__ ah_chip_full_sleep; } ;
struct ath_hal {int dummy; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  HAL_PM_FULL_SLEEP ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u_int32_t FUNC5(struct ath_hal *ah)
{
    u_int32_t val;
    struct ath_hal_9300 *ahp = FUNC0(ah);
    HAL_BOOL asleep = ahp->ah_chip_full_sleep;

    if ((FUNC2(ah) || FUNC1(ah)) && asleep) {
        FUNC4(ah, HAL_PM_AWAKE, AH_TRUE);
    }

    val = FUNC3(ah, AR_PHY_SPECTRAL_SCAN);

    if ((FUNC2(ah) || FUNC1(ah)) && asleep) {
        FUNC4(ah, HAL_PM_FULL_SLEEP, AH_TRUE);
    }
    return val;
}