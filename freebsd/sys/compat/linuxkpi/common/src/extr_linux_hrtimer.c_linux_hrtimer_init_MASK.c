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
struct hrtimer {int /*<<< orphan*/  mtx; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_NOWITNESS ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 

void
FUNC3(struct hrtimer *hrtimer)
{

	FUNC1(hrtimer, 0, sizeof(*hrtimer));
	FUNC2(&hrtimer->mtx, "hrtimer", NULL,
	    MTX_DEF | MTX_RECURSE | MTX_NOWITNESS);
	FUNC0(&hrtimer->callout, &hrtimer->mtx, 0);
}