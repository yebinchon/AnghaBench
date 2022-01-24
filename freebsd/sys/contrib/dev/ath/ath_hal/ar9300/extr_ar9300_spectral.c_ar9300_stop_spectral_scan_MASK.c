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
typedef  int u_int32_t ;
struct ath_hal_9300 {int /*<<< orphan*/  ah_disable_cck; int /*<<< orphan*/  ah_dc_offset; int /*<<< orphan*/  ah_radar1; scalar_t__ ah_chip_full_sleep; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_curchan; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_ERR ; 
 int /*<<< orphan*/  AR_PHY_ERR_MASK_REG ; 
 int AR_PHY_ERR_RADAR ; 
 int /*<<< orphan*/  AR_PHY_MODE ; 
 int /*<<< orphan*/  AR_PHY_MODE_DISABLE_CCK ; 
 int /*<<< orphan*/  AR_PHY_RADAR_1 ; 
 int /*<<< orphan*/  AR_PHY_RADAR_1_CF_BIN_THRESH ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 int AR_PHY_SPECTRAL_SCAN_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_TIMING2 ; 
 int /*<<< orphan*/  AR_PHY_TIMING2_DC_OFFSET ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  HAL_PM_FULL_SLEEP ; 
 scalar_t__ FUNC4 (struct ath_hal*,scalar_t__) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct ath_hal *ah)
{
    u_int32_t val;
    struct ath_hal_9300 *ahp = FUNC0(ah);
    HAL_BOOL asleep = ahp->ah_chip_full_sleep;

    if ((FUNC3(ah) || FUNC2(ah)) && asleep) {
        FUNC8(ah, HAL_PM_AWAKE, AH_TRUE);
    }
    val = FUNC5(ah, AR_PHY_SPECTRAL_SCAN);

    /* deactivate spectral scan */
    /* HW Bug fix -- Do not disable the spectral scan
     * only turn off the active bit
     */
    //val &= ~AR_PHY_SPECTRAL_SCAN_ENABLE;
    val &= ~AR_PHY_SPECTRAL_SCAN_ACTIVE;
    FUNC7(ah, AR_PHY_SPECTRAL_SCAN, val);
    val = FUNC5(ah, AR_PHY_SPECTRAL_SCAN);

    FUNC6(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_CF_BIN_THRESH,
                     ahp->ah_radar1);
    FUNC6(ah, AR_PHY_TIMING2, AR_PHY_TIMING2_DC_OFFSET,
                     ahp->ah_dc_offset);
    FUNC7(ah, AR_PHY_ERR, 0);

    if (FUNC1(ah)->ah_curchan &&
        FUNC4(ah, FUNC1(ah)->ah_curchan))
    { /* fast clock */
        FUNC6(ah, AR_PHY_MODE, AR_PHY_MODE_DISABLE_CCK,
                         ahp->ah_disable_cck);
    }

    val = FUNC5(ah, AR_PHY_ERR);
    
    val = FUNC5(ah, AR_PHY_ERR_MASK_REG) & (~AR_PHY_ERR_RADAR);
    FUNC7(ah, AR_PHY_ERR_MASK_REG, val);
    
    if ((FUNC3(ah) || FUNC2(ah)) && asleep) {
        FUNC8(ah, HAL_PM_FULL_SLEEP, AH_TRUE);
    }
}