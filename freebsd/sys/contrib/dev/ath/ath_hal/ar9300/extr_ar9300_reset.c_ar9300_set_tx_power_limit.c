
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_private {int ah_powerLimit; int ah_extraTxPow; struct ieee80211_channel* ah_curchan; } ;
struct ath_hal_9300 {int ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_CHANNEL_INTERNAL ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_MIN (int ,int ) ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 scalar_t__ HAL_OK ;
 int MAX_RATE_POWER ;
 scalar_t__ ar9300_eeprom_set_transmit_power (struct ath_hal*,int *,struct ieee80211_channel const*,int ,int ,int ,int ) ;
 int * ath_hal_checkchannel (struct ath_hal*,struct ieee80211_channel const*) ;
 int ath_hal_get_twice_max_regpower (struct ath_hal_private*,int *,struct ieee80211_channel const*) ;
 int ath_hal_getantennaallowed (struct ath_hal*,struct ieee80211_channel const*) ;
 int ath_hal_getctl (struct ath_hal*,struct ieee80211_channel const*) ;

HAL_BOOL
ar9300_set_tx_power_limit(struct ath_hal *ah, u_int32_t limit,
    u_int16_t extra_txpow, u_int16_t tpc_in_db)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    struct ath_hal_private *ahpriv = AH_PRIVATE(ah);
    const struct ieee80211_channel *chan = ahpriv->ah_curchan;
    HAL_CHANNEL_INTERNAL *ichan = ath_hal_checkchannel(ah, chan);

    if (((void*)0) == chan) {
        return AH_FALSE;
    }

    ahpriv->ah_powerLimit = AH_MIN(limit, MAX_RATE_POWER);
    ahpriv->ah_extraTxPow = extra_txpow;

    if(chan == ((void*)0)) {
        return AH_FALSE;
    }
    if (ar9300_eeprom_set_transmit_power(ah, &ahp->ah_eeprom, chan,
        ath_hal_getctl(ah, chan), ath_hal_getantennaallowed(ah, chan),
        ath_hal_get_twice_max_regpower(ahpriv, ichan, chan),
        AH_MIN(MAX_RATE_POWER, ahpriv->ah_powerLimit)) != HAL_OK)
    {
        return AH_FALSE;
    }
    return AH_TRUE;
}
