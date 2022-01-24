#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int feature_enable; } ;
struct TYPE_5__ {TYPE_1__ base_eep_header; } ;
typedef  TYPE_2__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_2__ ah_eeprom; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int AH_TRUE ; 
 int /*<<< orphan*/  AR_HORNET_CH0_XTAL ; 
 int /*<<< orphan*/  AR_OSPREY_CH0_XTAL ; 
 int /*<<< orphan*/  AR_OSPREY_CHO_XTAL_CAPINDAC ; 
 int /*<<< orphan*/  AR_OSPREY_CHO_XTAL_CAPOUTDAC ; 
 int /*<<< orphan*/  AR_SCORPION_CH0_XTAL ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ath_hal*) ; 

HAL_BOOL FUNC8(struct ath_hal *ah)
{
    int tuning_caps_params;
    ar9300_eeprom_t *eep = &FUNC0(ah)->ah_eeprom;
    tuning_caps_params = FUNC7(ah);
    if ((eep->base_eep_header.feature_enable & 0x40) >> 6) {
        tuning_caps_params &= 0x7f;

        if (FUNC3(ah) || FUNC5(ah) || FUNC1(ah)) {
            return true;
        } else if (FUNC2(ah)) {
            FUNC6(ah,
                AR_HORNET_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPINDAC,
                tuning_caps_params);
            FUNC6(ah,
                AR_HORNET_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPOUTDAC,
                tuning_caps_params);
        } else if (FUNC4(ah)) {
            FUNC6(ah,
                AR_SCORPION_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPINDAC,
                tuning_caps_params);
            FUNC6(ah,
                AR_SCORPION_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPOUTDAC,
                tuning_caps_params);
        } else {
            FUNC6(ah,
                AR_OSPREY_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPINDAC,
                tuning_caps_params);
            FUNC6(ah,
                AR_OSPREY_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPOUTDAC,
                tuning_caps_params);
        }

    }
    return AH_TRUE;
}