
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_hwp; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 struct ieee80211_channel* AH_NULL ;
 int AR_PHY_MODE ;
 int AR_PHY_MODE_DYNAMIC ;
 int AR_PHY_MODE_DYN_CCK_DISABLE ;
 int AR_PHY_MODE_OFDM ;
 int HALASSERT (int ) ;

 int IEEE80211_IS_CHAN_B (struct ieee80211_channel*) ;
 int IEEE80211_IS_CHAN_G (struct ieee80211_channel*) ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel*) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static inline void
ar9300_set_rf_mode(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t rf_mode = 0;

    if (chan == AH_NULL) {
        return;
    }
    switch (AH9300(ah)->ah_hwp) {
    case 128:
        rf_mode |= (IEEE80211_IS_CHAN_B(chan) || IEEE80211_IS_CHAN_G(chan)) ?
            AR_PHY_MODE_DYNAMIC : AR_PHY_MODE_OFDM;
        break;
    default:
        HALASSERT(0);
        break;
    }

    if ( IS_5GHZ_FAST_CLOCK_EN(ah, chan)) {
        rf_mode |= (AR_PHY_MODE_DYNAMIC | AR_PHY_MODE_DYN_CCK_DISABLE);
    }
    OS_REG_WRITE(ah, AR_PHY_MODE, rf_mode);
}
