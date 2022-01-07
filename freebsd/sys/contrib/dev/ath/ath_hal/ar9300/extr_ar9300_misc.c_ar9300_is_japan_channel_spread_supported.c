
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;

HAL_BOOL
ar9300_is_japan_channel_spread_supported(struct ath_hal *ah)
{
    return AH_TRUE;
}
