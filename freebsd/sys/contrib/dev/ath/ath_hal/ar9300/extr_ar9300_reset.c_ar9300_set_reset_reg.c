
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int ah_wa_reg_val; } ;
struct TYPE_4__ {scalar_t__ halMciSupport; } ;
struct TYPE_5__ {TYPE_1__ ah_caps; } ;
typedef int HAL_BOOL ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 int AR_RTC_KEEP_AWAKE ;
 int AR_WA ;



 int OS_DELAY (int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar9300_set_reset (struct ath_hal*,int) ;
 int ar9300_set_reset_power_on (struct ath_hal*) ;

HAL_BOOL
ar9300_set_reset_reg(struct ath_hal *ah, u_int32_t type)
{
    HAL_BOOL ret = AH_FALSE;




    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_WA), AH9300(ah)->ah_wa_reg_val);
    OS_DELAY(10);
    OS_REG_WRITE(ah, AR_RTC_FORCE_WAKE,
        AR_RTC_FORCE_WAKE_EN | AR_RTC_FORCE_WAKE_ON_INT);

    switch (type) {
    case 129:
        ret = ar9300_set_reset_power_on(ah);
        break;
    case 128:
    case 130:
        ret = ar9300_set_reset(ah, type);
        break;
    default:
        break;
    }







    return ret;
}
