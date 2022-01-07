
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_4__ {int feature_enable; } ;
struct TYPE_5__ {TYPE_1__ base_eep_header; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_2__ ah_eeprom; } ;
typedef int HAL_BOOL ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_HORNET_CH0_XTAL ;
 int AR_OSPREY_CH0_XTAL ;
 int AR_OSPREY_CHO_XTAL_CAPINDAC ;
 int AR_OSPREY_CHO_XTAL_CAPOUTDAC ;
 int AR_SCORPION_CH0_XTAL ;
 scalar_t__ AR_SREV_HONEYBEE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int ar9300_tuning_caps_params_get (struct ath_hal*) ;

HAL_BOOL ar9300_tuning_caps_apply(struct ath_hal *ah)
{
    int tuning_caps_params;
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    tuning_caps_params = ar9300_tuning_caps_params_get(ah);
    if ((eep->base_eep_header.feature_enable & 0x40) >> 6) {
        tuning_caps_params &= 0x7f;

        if (AR_SREV_POSEIDON(ah) || AR_SREV_WASP(ah) || AR_SREV_HONEYBEE(ah)) {
            return 1;
        } else if (AR_SREV_HORNET(ah)) {
            OS_REG_RMW_FIELD(ah,
                AR_HORNET_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPINDAC,
                tuning_caps_params);
            OS_REG_RMW_FIELD(ah,
                AR_HORNET_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPOUTDAC,
                tuning_caps_params);
        } else if (AR_SREV_SCORPION(ah)) {
            OS_REG_RMW_FIELD(ah,
                AR_SCORPION_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPINDAC,
                tuning_caps_params);
            OS_REG_RMW_FIELD(ah,
                AR_SCORPION_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPOUTDAC,
                tuning_caps_params);
        } else {
            OS_REG_RMW_FIELD(ah,
                AR_OSPREY_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPINDAC,
                tuning_caps_params);
            OS_REG_RMW_FIELD(ah,
                AR_OSPREY_CH0_XTAL, AR_OSPREY_CHO_XTAL_CAPOUTDAC,
                tuning_caps_params);
        }

    }
    return AH_TRUE;
}
