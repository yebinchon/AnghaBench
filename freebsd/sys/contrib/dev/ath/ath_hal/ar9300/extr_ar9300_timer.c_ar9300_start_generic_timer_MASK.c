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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int mode_mask; int /*<<< orphan*/  mode_addr; int /*<<< orphan*/  period_addr; int /*<<< orphan*/  next_addr; } ;

/* Variables and functions */
 int AR_FIRST_NDP_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AR_GEN_TIMER_BANK_1_LEN ; 
 int /*<<< orphan*/  AR_IMR_S5 ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_THRESH ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_TRIG ; 
 int /*<<< orphan*/  AR_MAC_PCU_GEN_TIMER_TSF_SEL ; 
 int AR_NUM_GEN_TIMERS ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* gen_timer_configuration ; 

void
FUNC7(
    struct ath_hal *ah,
    int index,
    u_int32_t timer_next,
    u_int32_t timer_period)
{
    if ((index < AR_FIRST_NDP_TIMER) || (index >= AR_NUM_GEN_TIMERS)) {
        return;
    }

    /*
     * Program generic timer registers
     */
    FUNC5(ah, gen_timer_configuration[index].next_addr, timer_next);
    FUNC5(ah, gen_timer_configuration[index].period_addr, timer_period);
    FUNC4(ah,
        gen_timer_configuration[index].mode_addr,
        gen_timer_configuration[index].mode_mask);

    if (FUNC2(ah) || FUNC1(ah)) {
        /*
         * Starting from Jupiter, each generic timer can select which tsf to
         * use. But we still follow the old rule, 0 - 7 use tsf and 8 - 15
         * use tsf2.
         */
        if ((index < AR_GEN_TIMER_BANK_1_LEN)) {
            FUNC3(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL, (1 << index));
        }
        else {
            FUNC4(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL, (1 << index));
        }
    }

    /* Enable both trigger and thresh interrupt masks */
    FUNC4(ah, AR_IMR_S5,
                   (FUNC6(FUNC0(index), AR_IMR_S5_GENTIMER_THRESH) |
                    FUNC6(FUNC0(index), AR_IMR_S5_GENTIMER_TRIG)));
}