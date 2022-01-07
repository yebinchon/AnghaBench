
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {scalar_t__ ah_enable_tsf2; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_DC_AP_STA_EN ;
 int AR_DIRECT_CONNECT ;
 int AR_RESET_TSF ;
 int AR_RESET_TSF2_ONCE ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

void ar9300_start_tsf2(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    if (ahp->ah_enable_tsf2) {

        OS_REG_SET_BIT(ah, AR_DIRECT_CONNECT, AR_DC_AP_STA_EN);
        OS_REG_SET_BIT(ah, AR_RESET_TSF, AR_RESET_TSF2_ONCE);
    }
}
