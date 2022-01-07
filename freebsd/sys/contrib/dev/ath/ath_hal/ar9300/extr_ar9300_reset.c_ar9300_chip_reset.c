
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_channel {int ic_freq; } ;
struct ath_hal_9300 {scalar_t__ ah_chip_full_sleep; } ;
struct TYPE_2__ {int ah_force_full_reset; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef scalar_t__ HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 scalar_t__ AH_FALSE ;
 int AH_MARK_CHIPRESET ;
 scalar_t__ AH_TRUE ;
 int AR_CR ;
 int AR_CR_RXE ;
 int AR_Q_TXE ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 int HAL_PM_AWAKE ;
 int HAL_RESET_COLD ;
 int HAL_RESET_WARM ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ar9300_init_pll (struct ath_hal*,struct ieee80211_channel*) ;
 int ar9300_internal_regulator_apply (struct ath_hal*) ;
 int ar9300_set_power_mode (struct ath_hal*,int ,scalar_t__) ;
 int ar9300_set_reset_reg (struct ath_hal*,int) ;
 int ar9300_set_rf_mode (struct ath_hal*,struct ieee80211_channel*) ;

HAL_BOOL
ar9300_chip_reset(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    int type = HAL_RESET_WARM;

    OS_MARK(ah, AH_MARK_CHIPRESET, chan ? chan->ic_freq : 0);
    if (ahp->ah_chip_full_sleep ||
        (ah->ah_config.ah_force_full_reset == 1) ||
        OS_REG_READ(ah, AR_Q_TXE) ||
        (OS_REG_READ(ah, AR_CR) & AR_CR_RXE)) {
            type = HAL_RESET_COLD;
    }

    if (!ar9300_set_reset_reg(ah, type)) {
        return AH_FALSE;
    }


    if (!ar9300_set_power_mode(ah, HAL_PM_AWAKE, AH_TRUE)) {
        return AH_FALSE;
    }

    ahp->ah_chip_full_sleep = AH_FALSE;

    if (AR_SREV_HORNET(ah)) {
        ar9300_internal_regulator_apply(ah);
    }

    ar9300_init_pll(ah, chan);







    ar9300_set_rf_mode(ah, chan);

    return AH_TRUE;
}
