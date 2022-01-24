#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int ah_wa_reg_val; } ;
struct TYPE_4__ {scalar_t__ halMciSupport; } ;
struct TYPE_5__ {TYPE_1__ ah_caps; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_EN ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  AR_RTC_KEEP_AWAKE ; 
 int /*<<< orphan*/  AR_WA ; 
#define  HAL_RESET_COLD 130 
#define  HAL_RESET_POWER_ON 129 
#define  HAL_RESET_WARM 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 

HAL_BOOL
FUNC7(struct ath_hal *ah, u_int32_t type)
{
    HAL_BOOL ret = AH_FALSE;

    /*
     * Set force wake
     */
    FUNC4(ah, FUNC2(ah, AR_WA), FUNC0(ah)->ah_wa_reg_val);
    FUNC3(10); /* delay to allow AR_WA reg write to kick in */
    FUNC4(ah, AR_RTC_FORCE_WAKE,
        AR_RTC_FORCE_WAKE_EN | AR_RTC_FORCE_WAKE_ON_INT);

    switch (type) {
    case HAL_RESET_POWER_ON:
        ret = FUNC6(ah);
        break;
    case HAL_RESET_WARM:
    case HAL_RESET_COLD:
        ret = FUNC5(ah, type);
        break;
    default:
        break;
    }
    
#if ATH_SUPPORT_MCI
    if (AH_PRIVATE(ah)->ah_caps.halMciSupport) {
        OS_REG_WRITE(ah, AR_RTC_KEEP_AWAKE, 0x2);
    }
#endif

    return ret;
}