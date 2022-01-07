
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {int ah_beacon_rssi_threshold; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_RSSI_THR ;
 int AR_RSSI_THR_VAL ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;

void ar9300_set_hw_beacon_rssi_threshold(struct ath_hal *ah,
                                        u_int32_t rssi_threshold)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    OS_REG_RMW_FIELD(ah, AR_RSSI_THR, AR_RSSI_THR_VAL, rssi_threshold);


    ahp->ah_beacon_rssi_threshold = rssi_threshold;
}
