
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int channel; } ;
typedef TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR_SREV_HONEYBEE (struct ath_hal*) ;
 int AR_SREV_HORNET (struct ath_hal*) ;
 int AR_SREV_WASP (struct ath_hal*) ;
 int IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 int ar9300_ant_ctrl_apply (struct ath_hal*,int ) ;
 int ar9300_attenuation_apply (struct ath_hal*,int ) ;
 int ar9300_drive_strength_apply (struct ath_hal*) ;
 int ar9300_internal_regulator_apply (struct ath_hal*) ;
 int ar9300_quick_drop_apply (struct ath_hal*,int ) ;
 int ar9300_thermometer_apply (struct ath_hal*) ;
 int ar9300_tuning_caps_apply (struct ath_hal*) ;
 int ar9300_tx_end_to_xpab_off_apply (struct ath_hal*,int ) ;
 int ar9300_x_lNA_bias_strength_apply (struct ath_hal*,int ) ;
 int ar9300_xpa_bias_level_apply (struct ath_hal*,int ) ;
 int ar9300_xpa_timing_control_apply (struct ath_hal*,int ) ;
 TYPE_1__* ath_hal_checkchannel (struct ath_hal*,struct ieee80211_channel const*) ;

HAL_BOOL
ar9300_eeprom_set_board_values(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
    HAL_CHANNEL_INTERNAL *ichan = ath_hal_checkchannel(ah, chan);

    ar9300_xpa_bias_level_apply(ah, IEEE80211_IS_CHAN_2GHZ(chan));

    ar9300_xpa_timing_control_apply(ah, IEEE80211_IS_CHAN_2GHZ(chan));

    ar9300_ant_ctrl_apply(ah, IEEE80211_IS_CHAN_2GHZ(chan));
    ar9300_drive_strength_apply(ah);

    ar9300_x_lNA_bias_strength_apply(ah, IEEE80211_IS_CHAN_2GHZ(chan));




    if (!AR_SREV_HORNET(ah) && !AR_SREV_WASP(ah) && !AR_SREV_HONEYBEE(ah)) {
        ar9300_internal_regulator_apply(ah);
    }

    ar9300_attenuation_apply(ah, ichan->channel);
    ar9300_quick_drop_apply(ah, ichan->channel);
    ar9300_thermometer_apply(ah);
    if(!AR_SREV_WASP(ah))
    {
        ar9300_tuning_caps_apply(ah);
    }

    ar9300_tx_end_to_xpab_off_apply(ah, ichan->channel);

    return AH_TRUE;
}
