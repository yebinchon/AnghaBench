
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AR_PHY_ACTIVE ;
 int AR_PHY_ACTIVE_EN ;
 int AR_PHY_RX_DELAY ;
 int AR_PHY_RX_DELAY_DELAY ;
 scalar_t__ BASE_ACTIVATE_DELAY ;
 scalar_t__ IEEE80211_IS_CHAN_CCK (struct ieee80211_channel*) ;
 int OS_DELAY (scalar_t__) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

__attribute__((used)) static inline void
ar9300_init_bb(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t synth_delay;






    synth_delay = OS_REG_READ(ah, AR_PHY_RX_DELAY) & AR_PHY_RX_DELAY_DELAY;
    if (IEEE80211_IS_CHAN_CCK(chan)) {
        synth_delay = (4 * synth_delay) / 22;
    } else {
        synth_delay /= 10;
    }


    OS_REG_WRITE(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);
    OS_DELAY(synth_delay + BASE_ACTIVATE_DELAY);
}
