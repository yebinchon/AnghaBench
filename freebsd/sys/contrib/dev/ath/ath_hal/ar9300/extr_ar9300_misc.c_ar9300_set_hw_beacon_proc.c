
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_BOOL ;


 int AR_HWBCNPROC1 ;
 int AR_HWBCNPROC1_CRC_ENABLE ;
 int AR_HWBCNPROC1_EXCLUDE_TIM_ELM ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;

void ar9300_set_hw_beacon_proc(struct ath_hal *ah, HAL_BOOL on)
{
    if (on) {
        OS_REG_SET_BIT(ah, AR_HWBCNPROC1, AR_HWBCNPROC1_CRC_ENABLE |
                       AR_HWBCNPROC1_EXCLUDE_TIM_ELM);
    }
    else {
        OS_REG_CLR_BIT(ah, AR_HWBCNPROC1, AR_HWBCNPROC1_CRC_ENABLE |
                       AR_HWBCNPROC1_EXCLUDE_TIM_ELM);
    }
}
