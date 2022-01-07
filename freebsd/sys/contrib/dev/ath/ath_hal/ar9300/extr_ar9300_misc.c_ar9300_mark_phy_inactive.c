
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_ACTIVE ;
 int AR_PHY_ACTIVE_DIS ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_mark_phy_inactive(struct ath_hal *ah)
{
    OS_REG_WRITE(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_DIS);
}
