
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_RX_QUEUE ;


 int AR_HP_RXDP ;
 int AR_LP_RXDP ;
 int HALASSERT (int) ;
 scalar_t__ HAL_RX_QUEUE_HP ;
 scalar_t__ HAL_RX_QUEUE_LP ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_set_rx_dp(struct ath_hal *ah, u_int32_t rxdp, HAL_RX_QUEUE qtype)
{
    HALASSERT((qtype == HAL_RX_QUEUE_HP) || (qtype == HAL_RX_QUEUE_LP));

    if (qtype == HAL_RX_QUEUE_HP) {
        OS_REG_WRITE(ah, AR_HP_RXDP, rxdp);
    } else {
        OS_REG_WRITE(ah, AR_LP_RXDP, rxdp);
    }
}
