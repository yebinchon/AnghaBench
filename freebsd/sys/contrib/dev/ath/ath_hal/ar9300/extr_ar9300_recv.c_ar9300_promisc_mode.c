
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_BOOL ;


 int AR_RX_FILTER ;
 int AR_RX_PROM ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void ar9300_promisc_mode(struct ath_hal *ah, HAL_BOOL enable)
{
    u_int32_t reg_val = 0;
    reg_val = OS_REG_READ(ah, AR_RX_FILTER);
    if (enable){
        reg_val |= AR_RX_PROM;
    } else{
        reg_val &= ~AR_RX_PROM;
    }
    OS_REG_WRITE(ah, AR_RX_FILTER, reg_val);
}
