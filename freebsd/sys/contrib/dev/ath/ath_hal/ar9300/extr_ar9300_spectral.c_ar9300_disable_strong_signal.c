
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_TIMING5 ;
 int AR_PHY_TIMING5_RSSI_THR1A ;
 int AR_PHY_TIMING5_RSSI_THR1A_ENA ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_disable_strong_signal(struct ath_hal *ah)
{
    u_int32_t val;

    val = OS_REG_READ(ah, AR_PHY_TIMING5);
    val |= AR_PHY_TIMING5_RSSI_THR1A_ENA;
    OS_REG_WRITE(ah, AR_PHY_TIMING5, val);

    OS_REG_RMW_FIELD(ah, AR_PHY_TIMING5, AR_PHY_TIMING5_RSSI_THR1A, 0x7f);

}
