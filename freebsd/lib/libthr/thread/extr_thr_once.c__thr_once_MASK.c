#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pthread {int dummy; } ;
struct TYPE_4__ {int state; } ;
typedef  TYPE_1__ pthread_once_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INT_MAX ; 
 int ONCE_DONE ; 
 int ONCE_IN_PROGRESS ; 
 int ONCE_NEVER_DONE ; 
 int ONCE_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct pthread* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*,int,int) ; 
 scalar_t__ FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  once_cancel_handler ; 

int
FUNC10(pthread_once_t *once_control, void (*init_routine)(void))
{
	struct pthread *curthread;
	int state;

	FUNC3();

	for (;;) {
		state = once_control->state;
		if (state == ONCE_DONE) {
			FUNC9();
			return (0);
		}
		if (state == ONCE_NEVER_DONE) {
			if (FUNC6(&once_control->state, state,
			    ONCE_IN_PROGRESS))
				break;
		} else if (state == ONCE_IN_PROGRESS) {
			if (FUNC6(&once_control->state, state,
			    ONCE_WAIT))
				FUNC4(&once_control->state,
				    ONCE_WAIT, NULL, 0);
		} else if (state == ONCE_WAIT) {
			FUNC4(&once_control->state, state,
			    NULL, 0);
		} else
			return (EINVAL);
        }

	curthread = FUNC2();
	FUNC1(curthread, once_cancel_handler, once_control);
	init_routine();
	FUNC0(curthread, 0);
	if (FUNC7(&once_control->state, ONCE_IN_PROGRESS,
	    ONCE_DONE))
		return (0);
	FUNC8(&once_control->state, ONCE_DONE);
	FUNC5(&once_control->state, INT_MAX, 0);
	return (0);
}