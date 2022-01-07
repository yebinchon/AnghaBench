
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_RSSI_3 ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int32_t
ar9300_get_cur_rssi(struct ath_hal *ah)
{


    return (OS_REG_READ(ah, AR_PHY_RSSI_3) & 0xff);
}
