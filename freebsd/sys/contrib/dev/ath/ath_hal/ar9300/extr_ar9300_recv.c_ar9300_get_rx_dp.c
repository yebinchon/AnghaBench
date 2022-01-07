
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_RX_QUEUE ;


 int AR_HP_RXDP ;
 int AR_LP_RXDP ;
 scalar_t__ HAL_RX_QUEUE_HP ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int32_t
ar9300_get_rx_dp(struct ath_hal *ath, HAL_RX_QUEUE qtype)
{
    if (qtype == HAL_RX_QUEUE_HP) {
        return OS_REG_READ(ath, AR_HP_RXDP);
    } else {
        return OS_REG_READ(ath, AR_LP_RXDP);
    }
}
