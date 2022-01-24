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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  size_t u_int16_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * cal_target_freqbin_5g_ht40; TYPE_2__* cal_target_power_5g_ht40; int /*<<< orphan*/ * cal_target_freqbin_2g_ht40; TYPE_2__* cal_target_power_2g_ht40; } ;
typedef  TYPE_1__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_1__ ah_eeprom; } ;
struct TYPE_5__ {int /*<<< orphan*/ * t_pow2x; } ;
typedef  TYPE_2__ OSP_CAL_TARGET_POWER_HT ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t OSPREY_NUM_2G_40_TARGET_POWERS ; 
 int OSPREY_NUM_5G_40_TARGET_POWERS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

u_int8_t
FUNC3(struct ath_hal *ah, u_int16_t rate_index,
    u_int16_t freq, HAL_BOOL is_2ghz)
{
    u_int16_t               num_piers, i;
    int32_t                 target_power_array[OSPREY_NUM_5G_40_TARGET_POWERS];
    int32_t                 freq_array[OSPREY_NUM_5G_40_TARGET_POWERS]; 
    u_int8_t                *p_freq_bin;
    ar9300_eeprom_t         *eep = &FUNC0(ah)->ah_eeprom;
    OSP_CAL_TARGET_POWER_HT *p_eeprom_target_pwr;

    if (is_2ghz) {
        num_piers = OSPREY_NUM_2G_40_TARGET_POWERS;    
        p_eeprom_target_pwr = eep->cal_target_power_2g_ht40;
        p_freq_bin = eep->cal_target_freqbin_2g_ht40;
    } else {
        num_piers = OSPREY_NUM_5G_40_TARGET_POWERS;
        p_eeprom_target_pwr = eep->cal_target_power_5g_ht40;
        p_freq_bin = eep->cal_target_freqbin_5g_ht40;
    }

    /*
     * create array of channels and targetpower from
     * targetpower piers stored on eeprom
     */
    for (i = 0; i < num_piers; i++) {
        freq_array[i] = FUNC1(p_freq_bin[i], is_2ghz);
        target_power_array[i] = p_eeprom_target_pwr[i].t_pow2x[rate_index];
    }

    /* interpolate to get target power for given frequency */
    return
        ((u_int8_t)FUNC2(
            (int32_t)freq, freq_array, target_power_array, num_piers));
}