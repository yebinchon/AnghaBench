
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u_int32_t ;
struct ath_hal {int dummy; } ;
typedef size_t HAL_LED_STATE ;


 int AR_CFG_LED ;

 int AR_CFG_LED_ASSOC_CTL ;


 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int const) ;

void
ar9300_set_led_state(struct ath_hal *ah, HAL_LED_STATE state)
{
    static const u_int32_t ledbits[8] = {
        129,
        128,
        128,
        128,
        128,
        130,
        130,
        129,
    };

    OS_REG_RMW_FIELD(ah, AR_CFG_LED, AR_CFG_LED_ASSOC_CTL, ledbits[state]);
}
