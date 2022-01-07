
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_HWBCNPROC1 ;
 int AR_HWBCNPROC1_RESET_CRC ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

void ar9300_reset_hw_beacon_proc_crc(struct ath_hal *ah)
{
    OS_REG_SET_BIT(ah, AR_HWBCNPROC1, AR_HWBCNPROC1_RESET_CRC);
}
