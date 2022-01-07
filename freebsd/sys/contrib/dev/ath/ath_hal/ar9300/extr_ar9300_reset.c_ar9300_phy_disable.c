
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_curchan; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_GPIO_OUTPUT_MUX1 ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 scalar_t__ AR_SREV_HONEYBEE (struct ath_hal*) ;
 scalar_t__ AR_SREV_OSPREY (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int ATH_GPIO_OE ;
 int ATH_GPIO_OUT ;
 int HAL_RESET_WARM ;
 scalar_t__ IS_CHAN_2GHZ (int ) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int ar9300_disable_pll_lock_detect (struct ath_hal*) ;
 int ar9300_init_pll (struct ath_hal*,int ) ;
 int ar9300_set_reset_reg (struct ath_hal*,int ) ;

HAL_BOOL
ar9300_phy_disable(struct ath_hal *ah)
{
    if (!ar9300_set_reset_reg(ah, HAL_RESET_WARM)) {
        return AH_FALSE;
    }
    if ( AR_SREV_OSPREY(ah) ) {
        OS_REG_RMW(ah, AR_HOSTIF_REG(ah, AR_GPIO_OUTPUT_MUX1), 0x0, 0x1f);
    }


    ar9300_init_pll(ah, AH_NULL);
    ar9300_disable_pll_lock_detect(ah);

    return AH_TRUE;
}
