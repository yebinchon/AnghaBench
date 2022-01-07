
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_TIMING2 ;
 int AR_PHY_TIMING2_DC_OFFSET ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;

void ar9300_disable_dc_offset(struct ath_hal *ah)
{
    OS_REG_RMW_FIELD(ah, AR_PHY_TIMING2, AR_PHY_TIMING2_DC_OFFSET, 0);
}
