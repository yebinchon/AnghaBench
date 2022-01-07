
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {int* ah_immunity_vals; scalar_t__ ah_immunity_on; } ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PHY_SFCORR ;
 int AR_PHY_SFCORR_EXT ;
 int AR_PHY_SFCORR_EXT_M1_THRESH ;
 int AR_PHY_SFCORR_EXT_M1_THRESH_LOW ;
 int AR_PHY_SFCORR_EXT_M2_THRESH ;
 int AR_PHY_SFCORR_EXT_M2_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW ;
 int AR_PHY_SFCORR_LOW_M1_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW ;
 int AR_PHY_SFCORR_LOW_M2_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW ;
 int AR_PHY_SFCORR_M1_THRESH ;
 int AR_PHY_SFCORR_M2COUNT_THR ;
 int AR_PHY_SFCORR_M2_THRESH ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

void
ar9300_set_immunity(struct ath_hal *ah, HAL_BOOL enable)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    u_int32_t m1_thresh_low = enable ? 127 : ahp->ah_immunity_vals[0],
              m2_thresh_low = enable ? 127 : ahp->ah_immunity_vals[1],
              m1_thresh = enable ? 127 : ahp->ah_immunity_vals[2],
              m2_thresh = enable ? 127 : ahp->ah_immunity_vals[3],
              m2_count_thr = enable ? 31 : ahp->ah_immunity_vals[4],
              m2_count_thr_low = enable ? 63 : ahp->ah_immunity_vals[5];

    if (ahp->ah_immunity_on == enable) {
        return;
    }

    ahp->ah_immunity_on = enable;

    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_LOW,
                     AR_PHY_SFCORR_LOW_M1_THRESH_LOW, m1_thresh_low);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_LOW,
                     AR_PHY_SFCORR_LOW_M2_THRESH_LOW, m2_thresh_low);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR,
                     AR_PHY_SFCORR_M1_THRESH, m1_thresh);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR,
                     AR_PHY_SFCORR_M2_THRESH, m2_thresh);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR,
                     AR_PHY_SFCORR_M2COUNT_THR, m2_count_thr);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_LOW,
                     AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, m2_count_thr_low);

    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M1_THRESH_LOW, m1_thresh_low);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M2_THRESH_LOW, m2_thresh_low);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M1_THRESH, m1_thresh);
    OS_REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
                     AR_PHY_SFCORR_EXT_M2_THRESH, m2_thresh);

    if (!enable) {
        OS_REG_SET_BIT(ah, AR_PHY_SFCORR_LOW,
                       AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);
    } else {
        OS_REG_CLR_BIT(ah, AR_PHY_SFCORR_LOW,
                       AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);
    }
}
