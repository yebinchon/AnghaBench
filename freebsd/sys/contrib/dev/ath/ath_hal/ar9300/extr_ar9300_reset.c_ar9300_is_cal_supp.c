
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {int ah_supp_cals; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_CAL_TYPES ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 int IEEE80211_IS_CHAN_B (struct ieee80211_channel const*) ;



__attribute__((used)) inline static HAL_BOOL
ar9300_is_cal_supp(struct ath_hal *ah, const struct ieee80211_channel *chan,
    HAL_CAL_TYPES cal_type)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    HAL_BOOL retval = AH_FALSE;

    switch (cal_type & ahp->ah_supp_cals) {
    case 129:

        if (!IEEE80211_IS_CHAN_B(chan)) {
            retval = AH_TRUE;
        }
        break;
    case 128:
        retval = AH_TRUE;
        break;
    }

    return retval;
}
