
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_HT_RXCLEAR ;


 int AR_DIAG_RX_CLEAR_CTL_LOW ;
 int AR_DIAG_RX_CLEAR_EXT_LOW ;
 int AR_DIAG_SW ;
 int HAL_RX_CLEAR_CTL_LOW ;
 int HAL_RX_CLEAR_EXT_LOW ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_HT_RXCLEAR
ar9300_get_11n_rx_clear(struct ath_hal *ah)
{
    HAL_HT_RXCLEAR rxclear = 0;
    u_int32_t val;

    val = OS_REG_READ(ah, AR_DIAG_SW);


    if (val & AR_DIAG_RX_CLEAR_CTL_LOW) {
        rxclear |= HAL_RX_CLEAR_CTL_LOW;
    }

    if (val & AR_DIAG_RX_CLEAR_EXT_LOW) {
        rxclear |= HAL_RX_CLEAR_EXT_LOW;
    }
    return rxclear;
}
