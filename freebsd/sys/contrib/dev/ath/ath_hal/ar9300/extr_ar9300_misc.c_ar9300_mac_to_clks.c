
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 int ath_hal_mac_clks (struct ath_hal*,int) ;

u_int
ar9300_mac_to_clks(struct ath_hal *ah, u_int usecs)
{
    return (ath_hal_mac_clks(ah, usecs));
}
