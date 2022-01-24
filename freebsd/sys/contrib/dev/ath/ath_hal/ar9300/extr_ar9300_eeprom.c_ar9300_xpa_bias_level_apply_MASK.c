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
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AR_HORNET_CH0_TOP2 ; 
 int /*<<< orphan*/  AR_HORNET_CH0_TOP2_XPABIASLVL ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_THERM ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_THERM_XPABIASLVL_MSB ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_THERM_XPASHORT2GND ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_TOP ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_TOP_JUPITER ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_TOP_XPABIASLVL ; 
 int /*<<< orphan*/  AR_SCORPION_CH0_TOP ; 
 int /*<<< orphan*/  AR_SCORPION_CH0_TOP_XPABIASLVL ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL FUNC8(struct ath_hal *ah, HAL_BOOL is_2ghz)
{
    /*
     * In ar9330 emu, we can't access radio registers, 
     * merlin is used for radio part.
     */
    int bias;
    bias = FUNC7(ah, is_2ghz);

    if (FUNC1(ah) || FUNC3(ah) || FUNC5(ah)) {
        FUNC6(ah,
            AR_HORNET_CH0_TOP2, AR_HORNET_CH0_TOP2_XPABIASLVL, bias);
    } else if (FUNC4(ah)) {
        FUNC6(ah,
            AR_SCORPION_CH0_TOP, AR_SCORPION_CH0_TOP_XPABIASLVL, bias);
    } else if (FUNC2(ah) || FUNC0(ah)) {
        FUNC6(ah,
            AR_PHY_65NM_CH0_TOP_JUPITER, AR_PHY_65NM_CH0_TOP_XPABIASLVL, bias);
    } else {
        FUNC6(ah,
            AR_PHY_65NM_CH0_TOP, AR_PHY_65NM_CH0_TOP_XPABIASLVL, bias);
        FUNC6(ah,
            AR_PHY_65NM_CH0_THERM, AR_PHY_65NM_CH0_THERM_XPABIASLVL_MSB,
            bias >> 2);
        FUNC6(ah,
            AR_PHY_65NM_CH0_THERM, AR_PHY_65NM_CH0_THERM_XPASHORT2GND, 1);
    }
    return 0;
}