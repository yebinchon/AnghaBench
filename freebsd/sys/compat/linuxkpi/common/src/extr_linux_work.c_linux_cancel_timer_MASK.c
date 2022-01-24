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
struct TYPE_2__ {int /*<<< orphan*/  callout; int /*<<< orphan*/  mtx; } ;
struct delayed_work {TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC4(struct delayed_work *dwork, bool drain)
{
	bool cancelled;

	FUNC2(&dwork->timer.mtx);
	cancelled = (FUNC1(&dwork->timer.callout) == 1);
	FUNC3(&dwork->timer.mtx);

	/* check if we should drain */
	if (drain)
		FUNC0(&dwork->timer.callout);
	return (cancelled);
}