
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {scalar_t__ ah_hw_green_tx_enable; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PHY_65NM_CH0_TXRF3 ;
 int AR_PHY_65NM_CH0_TXRF3_OLD_PAL_SPARE ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;

void ar9300_hwgreentx_set_pal_spare(struct ath_hal *ah, int value)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    if (AR_SREV_POSEIDON(ah) && ahp->ah_hw_green_tx_enable) {
        if ((value == 0) || (value == 1)) {
            OS_REG_RMW_FIELD(ah, AR_PHY_65NM_CH0_TXRF3,
                             AR_PHY_65NM_CH0_TXRF3_OLD_PAL_SPARE, value);
        }
    }
}
