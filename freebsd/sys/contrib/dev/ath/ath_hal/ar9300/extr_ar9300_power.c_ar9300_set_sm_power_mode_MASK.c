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
struct ath_hal_9300 {int ah_sm_power_mode; int /*<<< orphan*/  ah_rx_chainmask; } ;
struct ath_hal {int dummy; } ;
typedef  int HAL_SMPS_MODE ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_NULL ; 
 int /*<<< orphan*/  AR_PCU_SMPS ; 
 int /*<<< orphan*/  AR_PCU_SMPS_HPWR_CHNMSK ; 
 int AR_PCU_SMPS_HW_CTRL_EN ; 
 int /*<<< orphan*/  AR_PCU_SMPS_LPWR_CHNMSK ; 
 int /*<<< orphan*/  AR_PCU_SMPS_LPWR_CHNMSK_VAL ; 
 int AR_PCU_SMPS_MAC_CHAINMASK ; 
 int AR_PCU_SMPS_SW_CTRL_HPWR ; 
 int /*<<< orphan*/  HAL_CAP_DYNAMIC_SMPS ; 
 scalar_t__ HAL_OK ; 
#define  HAL_SMPS_DEFAULT 131 
#define  HAL_SMPS_HW_CTRL 130 
#define  HAL_SMPS_SW_CTRL_HIGH_PWR 129 
#define  HAL_SMPS_SW_CTRL_LOW_PWR 128 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ath_hal *ah, HAL_SMPS_MODE mode)
{
    int regval;
    struct ath_hal_9300 *ahp = FUNC0(ah);

    if (FUNC3(ah, HAL_CAP_DYNAMIC_SMPS, 0, AH_NULL) != HAL_OK) {
        return;
    }

    /* Program low & high power chainmask settings and enable MAC control */
    regval = FUNC2(AR_PCU_SMPS_LPWR_CHNMSK_VAL, AR_PCU_SMPS_LPWR_CHNMSK) |
             FUNC2(ahp->ah_rx_chainmask, AR_PCU_SMPS_HPWR_CHNMSK) |
             AR_PCU_SMPS_MAC_CHAINMASK;

    /* Program registers according to required SM power mode.*/
    switch (mode) {
    case HAL_SMPS_SW_CTRL_LOW_PWR:
        FUNC1(ah, AR_PCU_SMPS, regval);
        break;
    case HAL_SMPS_SW_CTRL_HIGH_PWR:
        FUNC1(ah, AR_PCU_SMPS, regval | AR_PCU_SMPS_SW_CTRL_HPWR);
        break;
    case HAL_SMPS_HW_CTRL:
        FUNC1(ah, AR_PCU_SMPS, regval | AR_PCU_SMPS_HW_CTRL_EN);
        break;
    case HAL_SMPS_DEFAULT:
        FUNC1(ah, AR_PCU_SMPS, 0);
        break;
    default:
        break;
    }
    ahp->ah_sm_power_mode = mode;
}