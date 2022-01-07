
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_RADAR_1 ;
 int AR_PHY_RADAR_1_CF_BIN_THRESH ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;

__attribute__((used)) static void ar9300_classify_strong_bins(struct ath_hal *ah)
{
    OS_REG_RMW_FIELD(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_CF_BIN_THRESH, 0x1);
}
