
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {scalar_t__ ic_minpower; int ic_maxpower; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR9300_MAX_RATE_POWER ;

__attribute__((used)) static HAL_BOOL
ar9300_get_chip_power_limits(struct ath_hal *ah,
    struct ieee80211_channel *chan)
{

 chan->ic_maxpower = AR9300_MAX_RATE_POWER;
 chan->ic_minpower = 0;

 return AH_TRUE;
}
