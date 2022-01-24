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
struct ath_hal_9300 {int ah_get_plcp_hdr; } ;
struct ath_hal {int dummy; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PCU_MISC ; 
 int /*<<< orphan*/  AR_PCU_SEL_EVM ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC3(struct ath_hal *ah, HAL_BOOL sel_evm, HAL_BOOL just_query)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    HAL_BOOL old_value = ahp->ah_get_plcp_hdr == 0;

    if (just_query) {
        return old_value;
    }
    if (sel_evm) {
        FUNC2(ah, AR_PCU_MISC, AR_PCU_SEL_EVM);
    } else {
        FUNC1(ah, AR_PCU_MISC, AR_PCU_SEL_EVM);
    }

    ahp->ah_get_plcp_hdr = !sel_evm;

    return old_value;
}