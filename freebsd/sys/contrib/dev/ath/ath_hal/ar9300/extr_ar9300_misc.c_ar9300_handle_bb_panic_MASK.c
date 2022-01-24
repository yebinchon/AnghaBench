#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_bb_panic_last_status; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int AR_PHY_BB_WD_STATUS_CLR ; 
 int /*<<< orphan*/  AR_PHY_PANIC_WD_STATUS ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct ath_hal *ah)
{
    u_int32_t status;
    /*
     * we want to avoid printing in ISR context so we save 
     * panic watchdog status to be printed later in DPC context
     */
    FUNC0(ah)->ah_bb_panic_last_status = status =
        FUNC1(ah, AR_PHY_PANIC_WD_STATUS);
    /*
     * panic watchdog timer should reset on status read
     * but to make sure we write 0 to the watchdog status bit
     */
    FUNC2(ah, AR_PHY_PANIC_WD_STATUS, status & ~AR_PHY_BB_WD_STATUS_CLR);
}