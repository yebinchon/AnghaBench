
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int ar9300_spur_mitigate_mrc_cck (struct ath_hal*,struct ieee80211_channel*) ;
 int ar9300_spur_mitigate_ofdm (struct ath_hal*,struct ieee80211_channel*) ;

__attribute__((used)) static void
ar9300_spur_mitigate(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    ar9300_spur_mitigate_ofdm(ah, chan);
    ar9300_spur_mitigate_mrc_cck(ah, chan);
}
