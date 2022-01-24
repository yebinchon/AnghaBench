#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int AR9300_INTR_SYNC_DEFAULT ; 
 int AR9300_INTR_SYNC_DEF_NO_HOST1_PERR ; 
 int AR9340_INTR_SYNC_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_INTR_ASYNC_CAUSE ; 
 int AR_INTR_ASYNC_USED ; 
 int AR_INTR_SPURIOUS ; 
 int /*<<< orphan*/  AR_INTR_SYNC_CAUSE ; 
 int AR_INTR_SYNC_MASK_GPIO ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC4(struct ath_hal *ah)
{
    u_int32_t sync_en_def = AR9300_INTR_SYNC_DEFAULT;
    u_int32_t host_isr;

    /*
     * Some platforms trigger our ISR before applying power to
     * the card, so make sure.
     */
    host_isr = FUNC3(ah, FUNC0(ah, AR_INTR_ASYNC_CAUSE));
    if ((host_isr & AR_INTR_ASYNC_USED) && (host_isr != AR_INTR_SPURIOUS)) {
        return AH_TRUE;
    }

    host_isr = FUNC3(ah, FUNC0(ah, AR_INTR_SYNC_CAUSE));
    if (FUNC1(ah)) {
        sync_en_def = AR9300_INTR_SYNC_DEF_NO_HOST1_PERR;
    }
    else if (FUNC2(ah)) {
        sync_en_def = AR9340_INTR_SYNC_DEFAULT;
    }

    if ((host_isr & (sync_en_def | AR_INTR_SYNC_MASK_GPIO)) &&
        (host_isr != AR_INTR_SPURIOUS)) {
        return AH_TRUE;
    }

    return AH_FALSE;
}