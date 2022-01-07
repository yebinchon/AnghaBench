
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {scalar_t__ ah_chip_reset_done; int nf_tsf32; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_ENABLE_NF ;
 int AR_PHY_AGC_CONTROL_NF ;
 int AR_PHY_AGC_CONTROL_NO_UPDATE_NF ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int ar9300_get_tsf32 (struct ath_hal*) ;

__attribute__((used)) static void
ar9300_start_nf_cal(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    OS_REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_ENABLE_NF);
    OS_REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_NO_UPDATE_NF);
    OS_REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_NF);
    AH9300(ah)->nf_tsf32 = ar9300_get_tsf32(ah);
    ahp->ah_chip_reset_done = 0;
}
