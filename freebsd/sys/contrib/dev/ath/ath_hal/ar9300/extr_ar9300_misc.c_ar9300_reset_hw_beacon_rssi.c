
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_RSSI_BCN_RSSI_RST ;
 int AR_RSSI_THR ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

void ar9300_reset_hw_beacon_rssi(struct ath_hal *ah)
{
    OS_REG_SET_BIT(ah, AR_RSSI_THR, AR_RSSI_BCN_RSSI_RST);
}
