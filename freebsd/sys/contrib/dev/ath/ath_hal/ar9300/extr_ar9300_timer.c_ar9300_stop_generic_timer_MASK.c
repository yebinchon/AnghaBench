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
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int mode_mask; int /*<<< orphan*/  mode_addr; } ;

/* Variables and functions */
 int AR_FIRST_NDP_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_IMR_S5 ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_THRESH ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_TRIG ; 
 int AR_NUM_GEN_TIMERS ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* gen_timer_configuration ; 

void
FUNC3(struct ath_hal *ah, int index)
{
    if ((index < AR_FIRST_NDP_TIMER) || (index >= AR_NUM_GEN_TIMERS)) {
        return;
    }

    /*
     * Clear generic timer enable bits.
     */
    FUNC1(ah,
        gen_timer_configuration[index].mode_addr,
        gen_timer_configuration[index].mode_mask);

    /* Disable both trigger and thresh interrupt masks */
    FUNC1(ah, AR_IMR_S5,
                   (FUNC2(FUNC0(index), AR_IMR_S5_GENTIMER_THRESH) |
                    FUNC2(FUNC0(index), AR_IMR_S5_GENTIMER_TRIG)));
}