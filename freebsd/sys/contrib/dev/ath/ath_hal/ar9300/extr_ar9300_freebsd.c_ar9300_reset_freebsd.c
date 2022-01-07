
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int halRxChainMask; int halTxChainMask; } ;
struct ath_hal_private {TYPE_1__ ah_caps; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;
typedef int HAL_RESET_TYPE ;
typedef int HAL_OPMODE ;
typedef int HAL_HT_MACMODE ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int HAL_HT_EXTPROTSPACING_20 ;
 int HAL_HT_MACMODE_20 ;
 int HAL_HT_MACMODE_2040 ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;
 int ar9300_reset (struct ath_hal*,int ,struct ieee80211_channel*,int ,int ,int ,int ,int ,int *,int ) ;

HAL_BOOL
ar9300_reset_freebsd(struct ath_hal *ah, HAL_OPMODE opmode,
    struct ieee80211_channel *chan, HAL_BOOL bChannelChange,
    HAL_RESET_TYPE resetType,
    HAL_STATUS *status)
{
 HAL_BOOL r;
 HAL_HT_MACMODE macmode;
 struct ath_hal_private *ap = AH_PRIVATE(ah);

 macmode =
     IEEE80211_IS_CHAN_HT40(chan) ?
         HAL_HT_MACMODE_2040 : HAL_HT_MACMODE_20;

 r = ar9300_reset(ah, opmode, chan, macmode,
     ap->ah_caps.halTxChainMask,
     ap->ah_caps.halRxChainMask,
     HAL_HT_EXTPROTSPACING_20,
     bChannelChange,
     status,
     AH_FALSE);

 return (r);
}
