
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {int ah_diversity_control; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;
typedef int HAL_ANT_SETTING ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;

HAL_BOOL
ar9300_set_antenna_switch(struct ath_hal *ah,
    HAL_ANT_SETTING settings, const struct ieee80211_channel *chan,
    u_int8_t *tx_chainmask, u_int8_t *rx_chainmask, u_int8_t *antenna_cfgd)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    ahp->ah_diversity_control = settings;

    return AH_TRUE;
}
