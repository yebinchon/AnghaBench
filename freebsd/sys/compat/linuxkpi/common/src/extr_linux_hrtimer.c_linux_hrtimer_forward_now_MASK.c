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
struct hrtimer {int /*<<< orphan*/  mtx; int /*<<< orphan*/  precision; int /*<<< orphan*/  callout; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hrtimer_call_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct hrtimer *hrtimer, ktime_t interval)
{

	FUNC2(&hrtimer->mtx);
	FUNC0(&hrtimer->callout, FUNC4(FUNC1(interval)),
	    FUNC4(hrtimer->precision), hrtimer_call_handler, hrtimer, 0);
	FUNC3(&hrtimer->mtx);
}