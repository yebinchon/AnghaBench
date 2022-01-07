
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_MODE ;
 int AR_PHY_MODE_DISABLE_CCK ;
 int AR_PHY_MODE_DYNAMIC ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;

void ar9300_enable_cck_detect(struct ath_hal *ah)
{
    OS_REG_RMW_FIELD(ah, AR_PHY_MODE, AR_PHY_MODE_DISABLE_CCK, 0);
    OS_REG_RMW_FIELD(ah, AR_PHY_MODE, AR_PHY_MODE_DYNAMIC, 1);
}
