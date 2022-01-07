
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
 int AR9382_GPIO_PIN_8_RESERVED ;
 int AR9382_MAX_GPIO_INPUT_PIN_NUM ;
 int AR9382_MAX_JTAG_GPIO_PIN_NUM ;
 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_JTAG_DISABLE ;
 int AR_GPIO_OE_OUT ;
 int AR_GPIO_OE_OUT_DRV ;
 int AR_GPIO_OE_OUT_DRV_NO ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int HALASSERT (int) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar9300_gpio_cfg_input(struct ath_hal *ah, u_int32_t gpio)
{
    u_int32_t gpio_shift;

    HALASSERT(gpio < AH_PRIVATE(ah)->ah_caps.halNumGpioPins);
    if ((gpio == AR9382_GPIO_PIN_8_RESERVED) ||
        (gpio > AR9382_MAX_GPIO_INPUT_PIN_NUM))
    {
        return AH_FALSE;
    }

    if (gpio <= AR9382_MAX_JTAG_GPIO_PIN_NUM) {
        OS_REG_SET_BIT(ah,
            AR_HOSTIF_REG(ah, AR_GPIO_INPUT_EN_VAL), AR_GPIO_JTAG_DISABLE);
    }


    gpio_shift = 2 * gpio;

    OS_REG_RMW(ah,
               AR_HOSTIF_REG(ah, AR_GPIO_OE_OUT),
               (AR_GPIO_OE_OUT_DRV_NO << gpio_shift),
               (AR_GPIO_OE_OUT_DRV << gpio_shift));
    return AH_TRUE;
}
