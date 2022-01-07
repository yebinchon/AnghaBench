
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_RX_CHAINMASK ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void ar9300_set_rx_chainmask(struct ath_hal *ah, int rxchainmask)
{
    OS_REG_WRITE(ah, AR_PHY_RX_CHAINMASK, rxchainmask);
}
