
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int ath_hal_desc_tpc; } ;
struct ath_hal {TYPE_1__ ah_config; } ;


 int AR_PHY_PER_PACKET_POWERTX_MAX ;
 int AR_PHY_POWER_TX_SUB ;
 int AR_PHY_POWER_TX_SUB_2_DISABLE ;
 int AR_PHY_POWER_TX_SUB_3_DISABLE ;
 int AR_PHY_PWRTX_MAX ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void ar9300_enable_tpc(struct ath_hal *ah)
{
    u_int32_t val = 0;

    ah->ah_config.ath_hal_desc_tpc = 1;


    OS_REG_RMW_FIELD(ah, AR_PHY_PWRTX_MAX, AR_PHY_PER_PACKET_POWERTX_MAX, 1);





    val = OS_REG_READ(ah, AR_PHY_POWER_TX_SUB);
    if (AR_SREV_WASP(ah)) {
        OS_REG_WRITE(ah, AR_PHY_POWER_TX_SUB,
                         val & AR_PHY_POWER_TX_SUB_2_DISABLE);
    } else {
        OS_REG_WRITE(ah, AR_PHY_POWER_TX_SUB,
                         val & AR_PHY_POWER_TX_SUB_3_DISABLE);
    }
}
