
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halRxChainMask; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef int HAL_BOOL ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int ar9300_calibration (struct ath_hal*,struct ieee80211_channel*,int ,int ,int *,int ,int*) ;

HAL_BOOL
ar9300_per_calibration_freebsd(struct ath_hal *ah,
    struct ieee80211_channel *chan, u_int rxchainmask, HAL_BOOL long_cal,
    HAL_BOOL *isCalDone)
{

 u_int32_t sched_cals = 0xfffffff;

 return ar9300_calibration(ah, chan,
     AH_PRIVATE(ah)->ah_caps.halRxChainMask,
     long_cal,
     isCalDone,
     0,
     &sched_cals);
}
