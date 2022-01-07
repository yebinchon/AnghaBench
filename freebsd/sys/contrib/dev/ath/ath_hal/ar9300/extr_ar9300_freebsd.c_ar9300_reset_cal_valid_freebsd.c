
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int ar9300_reset_cal_valid (struct ath_hal*,struct ieee80211_channel const*,int *,int) ;

HAL_BOOL
ar9300_reset_cal_valid_freebsd(struct ath_hal *ah,
    const struct ieee80211_channel *chan)
{

 HAL_BOOL is_cal_done = AH_TRUE;

 ar9300_reset_cal_valid(ah, chan, &is_cal_done, 0xffffffff);
 return (is_cal_done);
}
