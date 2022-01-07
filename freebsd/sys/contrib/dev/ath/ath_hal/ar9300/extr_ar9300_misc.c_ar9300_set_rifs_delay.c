
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal_9300 {scalar_t__ ah_rifs_enabled; int* ah_rifs_reg; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_curchan; } ;
typedef int HAL_CHANNEL_INTERNAL ;
typedef scalar_t__ HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 scalar_t__ AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR_PHY_RIFS_INIT_DELAY ;
 int AR_PHY_RIFS_SRCH ;
 int AR_PHY_SEARCH_START_DELAY ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (int ) ;
 scalar_t__ IS_CHAN_2GHZ (int *) ;
 int OS_MEMZERO (int*,int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int * ath_hal_checkchannel (struct ath_hal*,int ) ;

HAL_BOOL
ar9300_set_rifs_delay(struct ath_hal *ah, HAL_BOOL enable)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    HAL_CHANNEL_INTERNAL *ichan =
      ath_hal_checkchannel(ah, AH_PRIVATE(ah)->ah_curchan);
    HAL_BOOL is_chan_2g = IS_CHAN_2GHZ(ichan);
    u_int32_t tmp = 0;

    if (enable) {
        if (ahp->ah_rifs_enabled == AH_TRUE) {
            return AH_TRUE;
        }

        OS_REG_WRITE(ah, AR_PHY_SEARCH_START_DELAY, ahp->ah_rifs_reg[0]);
        OS_REG_WRITE(ah, AR_PHY_RIFS_SRCH,
                     ahp->ah_rifs_reg[1]);

        ahp->ah_rifs_enabled = AH_TRUE;
        OS_MEMZERO(ahp->ah_rifs_reg, sizeof(ahp->ah_rifs_reg));
    } else {
        if (ahp->ah_rifs_enabled == AH_TRUE) {
            ahp->ah_rifs_reg[0] = OS_REG_READ(ah,
                                              AR_PHY_SEARCH_START_DELAY);
            ahp->ah_rifs_reg[1] = OS_REG_READ(ah, AR_PHY_RIFS_SRCH);
        }

        OS_REG_WRITE(ah, AR_PHY_RIFS_SRCH,
                     (ahp->ah_rifs_reg[1] & ~(AR_PHY_RIFS_INIT_DELAY)));
        tmp = 0xfffff000 & OS_REG_READ(ah, AR_PHY_SEARCH_START_DELAY);
        if (is_chan_2g) {
            if (IEEE80211_IS_CHAN_HT40(AH_PRIVATE(ah)->ah_curchan)) {
                OS_REG_WRITE(ah, AR_PHY_SEARCH_START_DELAY, tmp | 500);
            } else {
                OS_REG_WRITE(ah, AR_PHY_SEARCH_START_DELAY, tmp | 250);
            }
        } else {
            if (IEEE80211_IS_CHAN_HT40(AH_PRIVATE(ah)->ah_curchan)) {
                OS_REG_WRITE(ah, AR_PHY_SEARCH_START_DELAY, tmp | 0x370);
            } else {
                OS_REG_WRITE(ah, AR_PHY_SEARCH_START_DELAY, tmp | 0x1b8);
            }
        }

        ahp->ah_rifs_enabled = AH_FALSE;
    }
    return AH_TRUE;

}
