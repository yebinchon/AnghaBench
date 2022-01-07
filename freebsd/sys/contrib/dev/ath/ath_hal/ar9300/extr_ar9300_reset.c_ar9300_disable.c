
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_NULL ;
 int AH_TRUE ;
 int HAL_PM_AWAKE ;
 int HAL_RESET_COLD ;
 int ar9300_init_pll (struct ath_hal*,int ) ;
 int ar9300_set_power_mode (struct ath_hal*,int ,int ) ;
 int ar9300_set_reset_reg (struct ath_hal*,int ) ;

HAL_BOOL
ar9300_disable(struct ath_hal *ah)
{
    if (!ar9300_set_power_mode(ah, HAL_PM_AWAKE, AH_TRUE)) {
        return AH_FALSE;
    }
    if (!ar9300_set_reset_reg(ah, HAL_RESET_COLD)) {
        return AH_FALSE;
    }

    ar9300_init_pll(ah, AH_NULL);

    return AH_TRUE;
}
