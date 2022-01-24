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
struct ath_hal_9300 {int /*<<< orphan*/  ah_avail_gen_timers; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int) ; 

void
FUNC3(struct ath_hal *ah, int index)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);

    FUNC2(ah, index);
    ahp->ah_avail_gen_timers |= FUNC1(index);
}