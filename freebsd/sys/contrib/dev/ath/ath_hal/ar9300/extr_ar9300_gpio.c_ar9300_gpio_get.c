
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


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR9382_GPIO_PIN_8_RESERVED ;
 int AR_GPIO_BIT (int) ;
 int AR_GPIO_IN ;
 int AR_GPIO_IN_VAL ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int HALASSERT (int) ;
 int MS (int,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int) ;

u_int32_t
ar9300_gpio_get(struct ath_hal *ah, u_int32_t gpio)
{
    u_int32_t gpio_in;
    HALASSERT(gpio < AH_PRIVATE(ah)->ah_caps.halNumGpioPins);
    if (gpio == AR9382_GPIO_PIN_8_RESERVED)
    {
        return 0xffffffff;
    }

    gpio_in = OS_REG_READ(ah, AR_HOSTIF_REG(ah, AR_GPIO_IN));
    OS_REG_RMW(ah, AR_HOSTIF_REG(ah, AR_GPIO_IN),
        (1 << gpio), AR_GPIO_BIT(gpio));
    return (MS(gpio_in, AR_GPIO_IN_VAL) & AR_GPIO_BIT(gpio)) != 0;
}
