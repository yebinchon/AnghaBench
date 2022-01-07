
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_NULL ;
 int AH_TRUE ;
 int HAL_CAP_LDPCWAR ;
 int HAL_CAP_RIFS_RX ;
 scalar_t__ HAL_OK ;
 scalar_t__ ar9300_get_capability (struct ath_hal*,int ,int ,int ) ;
 int ar9300_set_rifs_delay (struct ath_hal*,int ) ;
 scalar_t__ ath_hal_getcapability (struct ath_hal*,int ,int ,int ) ;

HAL_BOOL
ar9300_set_11n_rx_rifs(struct ath_hal *ah, HAL_BOOL enable)
{

    if ((ath_hal_getcapability(ah, HAL_CAP_RIFS_RX, 0, AH_NULL) == HAL_OK)) {
        if (ar9300_get_capability(ah, HAL_CAP_LDPCWAR, 0, AH_NULL) == HAL_OK) {
            return ar9300_set_rifs_delay(ah, enable);
        }
        return AH_FALSE;
    }

    return AH_TRUE;
}
