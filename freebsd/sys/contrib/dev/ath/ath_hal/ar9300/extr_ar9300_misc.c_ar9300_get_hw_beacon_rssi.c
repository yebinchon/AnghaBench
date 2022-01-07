
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int int32_t ;


 int AR_BCN_RSSI_AVE ;
 int AR_BCN_RSSI_AVE_VAL ;
 int OS_REG_READ_FIELD (struct ath_hal*,int ,int ) ;

int32_t ar9300_get_hw_beacon_rssi(struct ath_hal *ah)
{
    int32_t val = OS_REG_READ_FIELD(ah, AR_BCN_RSSI_AVE, AR_BCN_RSSI_AVE_VAL);


    val = val >> 4;
    return val;
}
