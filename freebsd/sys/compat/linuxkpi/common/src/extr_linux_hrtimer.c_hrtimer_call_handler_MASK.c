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
struct hrtimer {int (* function ) (struct hrtimer*) ;int /*<<< orphan*/  callout; int /*<<< orphan*/  precision; int /*<<< orphan*/  expires; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hrtimer*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct hrtimer *hrtimer;
	enum hrtimer_restart ret;

	hrtimer = arg;
	ret = hrtimer->function(hrtimer);

	if (ret == HRTIMER_RESTART) {
		FUNC1(&hrtimer->callout,
		    FUNC2(hrtimer->expires), FUNC2(hrtimer->precision), 0);
	} else {
		FUNC0(&hrtimer->callout);
	}
}