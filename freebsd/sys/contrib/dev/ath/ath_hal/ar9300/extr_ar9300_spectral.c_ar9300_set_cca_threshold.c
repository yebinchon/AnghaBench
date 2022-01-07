
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_CCA_0 ;
 int AR_PHY_CCA_THRESH62 ;
 int AR_PHY_EXT_CCA ;
 int AR_PHY_EXT_CCA0 ;
 int AR_PHY_EXT_CCA0_THRESH62 ;
 int AR_PHY_EXT_CCA_THRESH62 ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;

void
ar9300_set_cca_threshold(struct ath_hal *ah, u_int8_t thresh62)
{
    OS_REG_RMW_FIELD(ah, AR_PHY_CCA_0, AR_PHY_CCA_THRESH62, thresh62);
    OS_REG_RMW_FIELD(ah, AR_PHY_EXT_CCA0, AR_PHY_EXT_CCA0_THRESH62, thresh62);




    OS_REG_RMW_FIELD(ah, AR_PHY_EXT_CCA, AR_PHY_EXT_CCA_THRESH62, thresh62);
}
