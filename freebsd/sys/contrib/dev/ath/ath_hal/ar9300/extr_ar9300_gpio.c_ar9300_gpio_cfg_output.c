
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef size_t HAL_GPIO_MUX_TYPE ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR9382_GPIO_9_INPUT_ONLY ;
 int AR9382_GPIO_PIN_8_RESERVED ;
 int AR9382_MAX_JTAG_GPIO_PIN_NUM ;
 int ARRAY_LENGTH (int const*) ;
 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_JTAG_DISABLE ;
 int AR_GPIO_OE_OUT ;
 int AR_GPIO_OE_OUT_DRV ;
 int AR_GPIO_OE_OUT_DRV_ALL ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int ATH_GPIOFUNC_ANTCHAIN0 ;
 int ATH_GPIOFUNC_ANTCHAIN1 ;
 int ATH_GPIOFUNC_ANTCHAIN2 ;
 int ATH_GPIOFUNC_ROUTE_SWCOM3 ;
 int ATH_GPIOPIN_ANTCHAIN0 ;
 int ATH_GPIOPIN_ANTCHAIN1 ;
 int ATH_GPIOPIN_ANTCHAIN2 ;
 int ATH_GPIOPIN_ROUTE_SWCOM3 ;
 int HALASSERT (int) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int ar9300_gpio_cfg_output_mux (struct ath_hal*,int,int) ;
 int ar9340_soc_gpio_cfg_output_mux (struct ath_hal*,int,int) ;

HAL_BOOL
ar9300_gpio_cfg_output(
    struct ath_hal *ah,
    u_int32_t gpio,
    HAL_GPIO_MUX_TYPE hal_signal_type)
{
    u_int32_t ah_signal_type;
    u_int32_t gpio_shift;
    u_int8_t smart_ant = 0;
    static const u_int32_t mux_signal_conversion_table[] = {

        140,

        139,

        138,

        146,

        145,

        135,

        130,

        141,

        142,

        143,

        144,

        128,

        129,

        147,

        148,

        136,

        137,

        134,

        133,

        132,

        131,
    };

    HALASSERT(gpio < AH_PRIVATE(ah)->ah_caps.halNumGpioPins);
    if ((gpio == AR9382_GPIO_PIN_8_RESERVED) ||
        (gpio == AR9382_GPIO_9_INPUT_ONLY))
    {
        return AH_FALSE;
    }


    if ((int) hal_signal_type < ARRAY_LENGTH(mux_signal_conversion_table))
    {
        ah_signal_type = mux_signal_conversion_table[hal_signal_type];
    } else {
        return AH_FALSE;
    }

    if (gpio <= AR9382_MAX_JTAG_GPIO_PIN_NUM) {
        OS_REG_SET_BIT(ah,
            AR_HOSTIF_REG(ah, AR_GPIO_INPUT_EN_VAL), AR_GPIO_JTAG_DISABLE);
    }
    if (smart_ant && (AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)))
    {



        return AH_TRUE;
    } else
    {

        ar9300_gpio_cfg_output_mux(ah, gpio, ah_signal_type);
    }


    gpio_shift = 2 * gpio;

    OS_REG_RMW(ah,
               AR_HOSTIF_REG(ah, AR_GPIO_OE_OUT),
               (AR_GPIO_OE_OUT_DRV_ALL << gpio_shift),
               (AR_GPIO_OE_OUT_DRV << gpio_shift));
    return AH_TRUE;
}
