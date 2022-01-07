
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
typedef int HAL_STATUS ;


 int HAL_ENOTSUPP ;
 scalar_t__ HAL_RXKEYIX_INVALID ;

HAL_STATUS
ar9300_get_rx_key_idx(struct ath_hal *ah, struct ath_desc *ds, u_int8_t *keyix,
    u_int8_t *status)
{
    *status = 0;
    *keyix = HAL_RXKEYIX_INVALID;
    return HAL_ENOTSUPP;
}
