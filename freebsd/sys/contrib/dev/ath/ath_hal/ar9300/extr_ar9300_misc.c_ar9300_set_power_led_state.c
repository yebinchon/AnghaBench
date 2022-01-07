
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_CFG_LED ;
 int AR_CFG_LED_MODE_POWER_OFF ;
 int AR_CFG_LED_MODE_POWER_ON ;
 int AR_CFG_LED_POWER ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;

void
ar9300_set_power_led_state(struct ath_hal *ah, u_int8_t enabled)
{
    u_int32_t val;

    val = enabled ? AR_CFG_LED_MODE_POWER_ON : AR_CFG_LED_MODE_POWER_OFF;
    OS_REG_RMW_FIELD(ah, AR_CFG_LED, AR_CFG_LED_POWER, val);
}
