
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef size_t u_int16_t ;
struct ath_hal {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {int * cal_target_freqbin_5g; TYPE_2__* cal_target_power_5g; int * cal_target_freqbin_2g; TYPE_2__* cal_target_power_2g; } ;
typedef TYPE_1__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_1__ ah_eeprom; } ;
struct TYPE_5__ {int * t_pow2x; } ;
typedef int HAL_BOOL ;
typedef TYPE_2__ CAL_TARGET_POWER_LEG ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 int FBIN2FREQ (int ,int ) ;
 size_t OSPREY_NUM_2G_20_TARGET_POWERS ;
 int OSPREY_NUM_5G_20_TARGET_POWERS ;
 scalar_t__ interpolate (int ,int *,int *,size_t) ;

u_int8_t
ar9300_eeprom_get_legacy_trgt_pwr(struct ath_hal *ah, u_int16_t rate_index,
    u_int16_t freq, HAL_BOOL is_2ghz)
{
    u_int16_t num_piers, i;
    int32_t target_power_array[OSPREY_NUM_5G_20_TARGET_POWERS];
    int32_t freq_array[OSPREY_NUM_5G_20_TARGET_POWERS];
    u_int8_t *p_freq_bin;
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    CAL_TARGET_POWER_LEG *p_eeprom_target_pwr;

    if (is_2ghz) {
        num_piers = OSPREY_NUM_2G_20_TARGET_POWERS;
        p_eeprom_target_pwr = eep->cal_target_power_2g;
        p_freq_bin = eep->cal_target_freqbin_2g;
    } else {
        num_piers = OSPREY_NUM_5G_20_TARGET_POWERS;
        p_eeprom_target_pwr = eep->cal_target_power_5g;
        p_freq_bin = eep->cal_target_freqbin_5g;
   }





    for (i = 0; i < num_piers; i++) {
        freq_array[i] = FBIN2FREQ(p_freq_bin[i], is_2ghz);
        target_power_array[i] = p_eeprom_target_pwr[i].t_pow2x[rate_index];
    }


    return
        ((u_int8_t)interpolate(
            (int32_t)freq, freq_array, target_power_array, num_piers));
}
