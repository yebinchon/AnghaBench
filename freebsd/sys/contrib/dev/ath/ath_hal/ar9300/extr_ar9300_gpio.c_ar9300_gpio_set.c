
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR9382_GPIO_9_INPUT_ONLY ;
 int AR9382_GPIO_PIN_8_RESERVED ;
 int AR_GPIO_BIT (int) ;
 int AR_GPIO_OUT ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int HALASSERT (int) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int ) ;

HAL_BOOL
ar9300_gpio_set(struct ath_hal *ah, u_int32_t gpio, u_int32_t val)
{
    HALASSERT(gpio < AH_PRIVATE(ah)->ah_caps.halNumGpioPins);
    if ((gpio == AR9382_GPIO_PIN_8_RESERVED) ||
        (gpio == AR9382_GPIO_9_INPUT_ONLY))
    {
        return AH_FALSE;
    }
    OS_REG_RMW(ah, AR_HOSTIF_REG(ah, AR_GPIO_OUT),
        ((val & 1) << gpio), AR_GPIO_BIT(gpio));

    return AH_TRUE;
}
