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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ pthread_once_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  ONCE_IN_PROGRESS ; 
 int /*<<< orphan*/  ONCE_NEVER_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	pthread_once_t *once_control;

	once_control = arg;
	if (FUNC1(&once_control->state, ONCE_IN_PROGRESS,
	    ONCE_NEVER_DONE))
		return;
	FUNC2(&once_control->state, ONCE_NEVER_DONE);
	FUNC0(&once_control->state, INT_MAX, 0);
}