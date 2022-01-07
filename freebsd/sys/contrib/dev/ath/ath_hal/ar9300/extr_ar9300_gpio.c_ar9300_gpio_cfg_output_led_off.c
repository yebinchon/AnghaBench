
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int hal_num_gpio_pins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef size_t HAL_GPIO_MUX_TYPE ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int ARRAY_LENGTH (int const*) ;
 int AR_GPIO_OE_OUT ;
 int AR_GPIO_OE_OUT_DRV ;
 int AR_GPIO_OE_OUT_DRV_NO ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int ATH_GPIOFUNC_ANTCHAIN0 ;
 int ATH_GPIOFUNC_ANTCHAIN1 ;
 int ATH_GPIOFUNC_ANTCHAIN2 ;
 int ATH_GPIOPIN_ANTCHAIN0 ;
 int ATH_GPIOPIN_ANTCHAIN1 ;
 int ATH_GPIOPIN_ANTCHAIN2 ;
 int HALASSERT (int) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int) ;
 int ar9300_gpio_cfg_output_mux (struct ath_hal*,int,int) ;

HAL_BOOL
ar9300_gpio_cfg_output_led_off(
    struct ath_hal *ah,
    u_int32_t gpio,
    HAL_GPIO_MUX_TYPE halSignalType)
{

    u_int32_t ah_signal_type;
    u_int32_t gpio_shift;
    u_int8_t smart_ant = 0;

    static const u_int32_t mux_signal_conversion_table[] = {

        139,

        138,

        137,

        145,

        144,

        134,

        130,

        140,

        141,

        142,

        143,

        128,

        129,

        146,

        147,
        135,
        136,
        133,
        132,
        131
    };
    HALASSERT(gpio < AH_PRIVATE(ah)->ah_caps.hal_num_gpio_pins);


    if ((int) halSignalType < ARRAY_LENGTH(mux_signal_conversion_table))
    {
        ah_signal_type = mux_signal_conversion_table[halSignalType];
    } else {
        return AH_FALSE;
    }
    if (smart_ant && AR_SREV_WASP(ah))
    {
        return AH_FALSE;
    }


    ar9300_gpio_cfg_output_mux(ah, gpio, ah_signal_type);


    gpio_shift = 2*gpio;

    OS_REG_RMW(ah,
               AR_HOSTIF_REG(ah, AR_GPIO_OE_OUT),
               (AR_GPIO_OE_OUT_DRV_NO << gpio_shift),
               (AR_GPIO_OE_OUT_DRV << gpio_shift));

    return AH_TRUE;

}
