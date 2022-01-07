
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_HT_RXCLEAR ;


 int AR_DIAG_RX_CLEAR_CTL_LOW ;
 int AR_DIAG_RX_CLEAR_EXT_LOW ;
 int AR_DIAG_SW ;
 int HAL_RX_CLEAR_CTL_LOW ;
 int HAL_RX_CLEAR_EXT_LOW ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

void
ar9300_set_11n_rx_clear(struct ath_hal *ah, HAL_HT_RXCLEAR rxclear)
{

    if (rxclear & HAL_RX_CLEAR_CTL_LOW) {
        OS_REG_SET_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_CTL_LOW);
    } else {
        OS_REG_CLR_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_CTL_LOW);
    }

    if (rxclear & HAL_RX_CLEAR_EXT_LOW) {
        OS_REG_SET_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_EXT_LOW);
    } else {
        OS_REG_CLR_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_EXT_LOW);
    }
}
