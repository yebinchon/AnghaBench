
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_currentRD; } ;
typedef int HAL_STATUS ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int HAL_EIO ;

HAL_BOOL
ar9300_set_regulatory_domain(struct ath_hal *ah,
        u_int16_t reg_domain, HAL_STATUS *status)
{
    HAL_STATUS ecode;

    if (AH_PRIVATE(ah)->ah_currentRD == 0) {
        AH_PRIVATE(ah)->ah_currentRD = reg_domain;
        return AH_TRUE;
    }
    ecode = HAL_EIO;




    if (status) {
        *status = ecode;
    }
    return AH_FALSE;
}
