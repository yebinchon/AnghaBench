
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_currentRD; } ;
typedef int HAL_BOOL ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;

HAL_BOOL
ar9300_regulatory_domain_override(struct ath_hal *ah, u_int16_t regdmn)
{
    AH_PRIVATE(ah)->ah_currentRD = regdmn;
    return AH_TRUE;
}
