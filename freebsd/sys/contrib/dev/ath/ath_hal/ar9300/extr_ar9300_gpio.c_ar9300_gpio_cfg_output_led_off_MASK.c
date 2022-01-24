#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int hal_num_gpio_pins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef  size_t HAL_GPIO_MUX_TYPE ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  AR_GPIO_OE_OUT ; 
 int AR_GPIO_OE_OUT_DRV ; 
 int AR_GPIO_OE_OUT_DRV_NO ; 
#define  AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX 147 
#define  AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX 146 
#define  AR_GPIO_OUTPUT_MUX_AS_MAC_NETWORK_LED 145 
#define  AR_GPIO_OUTPUT_MUX_AS_MAC_POWER_LED 144 
#define  AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK 143 
#define  AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA 142 
#define  AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK 141 
#define  AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA 140 
#define  AR_GPIO_OUTPUT_MUX_AS_OUTPUT 139 
#define  AR_GPIO_OUTPUT_MUX_AS_PCIE_ATTENTION_LED 138 
#define  AR_GPIO_OUTPUT_MUX_AS_PCIE_POWER_LED 137 
#define  AR_GPIO_OUTPUT_MUX_AS_RUCKUS_DATA 136 
#define  AR_GPIO_OUTPUT_MUX_AS_RUCKUS_STROBE 135 
#define  AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL 134 
#define  AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL0 133 
#define  AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL1 132 
#define  AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL2 131 
#define  AR_GPIO_OUTPUT_MUX_AS_TX_FRAME 130 
#define  AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX 129 
#define  AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX 128 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int ATH_GPIOFUNC_ANTCHAIN0 ; 
 int ATH_GPIOFUNC_ANTCHAIN1 ; 
 int ATH_GPIOFUNC_ANTCHAIN2 ; 
 int ATH_GPIOPIN_ANTCHAIN0 ; 
 int ATH_GPIOPIN_ANTCHAIN1 ; 
 int ATH_GPIOPIN_ANTCHAIN2 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int,int) ; 

HAL_BOOL
FUNC7(
    struct ath_hal *ah,
    u_int32_t gpio,
    HAL_GPIO_MUX_TYPE halSignalType)
{
#define N(a)    (sizeof(a) / sizeof(a[0]))
    u_int32_t    ah_signal_type;
    u_int32_t    gpio_shift;
    u_int8_t    smart_ant = 0;

    static const u_int32_t    mux_signal_conversion_table[] = {
        /* HAL_GPIO_OUTPUT_MUX_AS_OUTPUT             */
        AR_GPIO_OUTPUT_MUX_AS_OUTPUT,
        /* HAL_GPIO_OUTPUT_MUX_AS_PCIE_ATTENTION_LED */
        AR_GPIO_OUTPUT_MUX_AS_PCIE_ATTENTION_LED,
        /* HAL_GPIO_OUTPUT_MUX_AS_PCIE_POWER_LED     */
        AR_GPIO_OUTPUT_MUX_AS_PCIE_POWER_LED,
        /* HAL_GPIO_OUTPUT_MUX_AS_MAC_NETWORK_LED    */
        AR_GPIO_OUTPUT_MUX_AS_MAC_NETWORK_LED,
        /* HAL_GPIO_OUTPUT_MUX_AS_MAC_POWER_LED      */
        AR_GPIO_OUTPUT_MUX_AS_MAC_POWER_LED,
        /* HAL_GPIO_OUTPUT_MUX_AS_WLAN_ACTIVE        */
        AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL,
        /* HAL_GPIO_OUTPUT_MUX_AS_TX_FRAME           */
        AR_GPIO_OUTPUT_MUX_AS_TX_FRAME,
        /* HAL_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA      */
        AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA,
        /* HAL_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK       */
        AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK,
        /* HAL_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA        */
        AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA,
        /* HAL_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK         */
        AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK,
        /* HAL_GPIO_OUTPUT_MUX_AS_WL_IN_TX           */
        AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX,
        /* HAL_GPIO_OUTPUT_MUX_AS_WL_IN_RX           */
        AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX,
        /* HAL_GPIO_OUTPUT_MUX_AS_BT_IN_TX           */
        AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX,
        /* HAL_GPIO_OUTPUT_MUX_AS_BT_IN_RX           */
        AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX,
        AR_GPIO_OUTPUT_MUX_AS_RUCKUS_STROBE,
        AR_GPIO_OUTPUT_MUX_AS_RUCKUS_DATA,
        AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL0,
        AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL1,
        AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL2
    };
    FUNC4(gpio < FUNC0(ah)->ah_caps.hal_num_gpio_pins);

    /* Convert HAL signal type definitions to hardware-specific values. */
    if ((int) halSignalType < FUNC1(mux_signal_conversion_table))
    {
        ah_signal_type = mux_signal_conversion_table[halSignalType];
    } else {
        return AH_FALSE;
    }
#if UMAC_SUPPORT_SMARTANTENNA
    /* Get the pin and func values for smart antenna */
    switch (halSignalType)
    {
        case AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL0:
            gpio = ATH_GPIOPIN_ANTCHAIN0;
            ah_signal_type = ATH_GPIOFUNC_ANTCHAIN0;
            smart_ant = 1;
            break; 
        case AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL1:
            gpio = ATH_GPIOPIN_ANTCHAIN1;
            ah_signal_type = ATH_GPIOFUNC_ANTCHAIN1;
            smart_ant = 1;
            break;
        case AR_GPIO_OUTPUT_MUX_AS_SMARTANT_CTRL2:    
            gpio = ATH_GPIOPIN_ANTCHAIN2;
            ah_signal_type = ATH_GPIOFUNC_ANTCHAIN2;
            smart_ant = 1;
            break;
        default:
            break;
    }
#endif

    if (smart_ant && FUNC3(ah))
    {
        return AH_FALSE;
    }

    // Configure the MUX
    FUNC6(ah, gpio, ah_signal_type);

    // 2 bits per output mode
    gpio_shift = 2*gpio;
    
    FUNC5(ah,
               FUNC2(ah, AR_GPIO_OE_OUT),
               (AR_GPIO_OE_OUT_DRV_NO << gpio_shift),
               (AR_GPIO_OE_OUT_DRV << gpio_shift));

    return AH_TRUE;
#undef N
}