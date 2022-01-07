
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_CHANNEL_INTERNAL ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int HALASSERT (int *) ;
 int ar9300_init_cal_internal (struct ath_hal*,struct ieee80211_channel*,int *,int ,int ,int ,int ) ;
 int * ath_hal_checkchannel (struct ath_hal*,struct ieee80211_channel*) ;

__attribute__((used)) static inline HAL_BOOL
ar9300_init_cal(struct ath_hal *ah, struct ieee80211_channel *chan, HAL_BOOL skip_if_none, HAL_BOOL apply_last_iqcorr)
{
    HAL_CHANNEL_INTERNAL *ichan = ath_hal_checkchannel(ah, chan);
    HAL_BOOL do_rtt_cal = AH_TRUE;
    HAL_BOOL enable_rtt = AH_FALSE;

    HALASSERT(ichan);

    return ar9300_init_cal_internal(ah, chan, ichan, enable_rtt, do_rtt_cal, skip_if_none, apply_last_iqcorr);
}
