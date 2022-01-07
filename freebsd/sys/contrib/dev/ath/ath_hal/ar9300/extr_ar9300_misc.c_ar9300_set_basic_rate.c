
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_5__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_4__ {int rs_count; int* rs_rates; } ;
typedef TYPE_1__ HAL_RATE_SET ;


 struct ieee80211_channel const* AH_NULL ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_BASE_RATE_11B ;
 int IEEE80211_IS_CHAN_CCK (struct ieee80211_channel const*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_set_basic_rate(struct ath_hal *ah, HAL_RATE_SET *rs)
{
    const struct ieee80211_channel *chan = AH_PRIVATE(ah)->ah_curchan;
    u_int32_t reg;
    u_int8_t xset;
    int i;

    if (chan == AH_NULL || !IEEE80211_IS_CHAN_CCK(chan)) {
        return;
    }
    xset = 0;
    for (i = 0; i < rs->rs_count; i++) {
        u_int8_t rset = rs->rs_rates[i];

        if ((rset & 0x80) && (rset &= 0x7f) >= xset) {
            xset = rset;
        }
    }




    reg = OS_REG_READ(ah, AR_STA_ID1);
    if (xset && xset / 2 <= 2) {
        OS_REG_WRITE(ah, AR_STA_ID1, reg | AR_STA_ID1_BASE_RATE_11B);
    } else {
        OS_REG_WRITE(ah, AR_STA_ID1, reg &~ AR_STA_ID1_BASE_RATE_11B);
    }
}
