
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_chip_power_lim; int set_channel; } ;
struct ath_hal_9300 {TYPE_1__ ah_rf_hal; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;
 int HAL_OK ;
 int ar9300_get_chip_power_limits ;
 int ar9300_set_channel ;

HAL_BOOL
ar9300_rf_attach(struct ath_hal *ah, HAL_STATUS *status)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    ahp->ah_rf_hal.set_channel = ar9300_set_channel;
    ahp->ah_rf_hal.get_chip_power_lim = ar9300_get_chip_power_limits;

    *status = HAL_OK;

    return AH_TRUE;
}
