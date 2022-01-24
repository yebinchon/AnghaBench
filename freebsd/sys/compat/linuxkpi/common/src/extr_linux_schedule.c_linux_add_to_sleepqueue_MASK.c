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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ERESTARTSYS ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int SLEEPQ_INTERRUPTIBLE ; 
 int SLEEPQ_SLEEP ; 
 int TASK_INTERRUPTIBLE ; 
 int TASK_NORMAL ; 
 int TASK_PARKED ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int FUNC9 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(void *wchan, struct task_struct *task,
    const char *wmesg, int timeout, int state)
{
	int flags, ret;

	FUNC1((state & ~(TASK_PARKED | TASK_NORMAL)) == 0);

	flags = SLEEPQ_SLEEP | ((state & TASK_INTERRUPTIBLE) != 0 ?
	    SLEEPQ_INTERRUPTIBLE : 0);

	FUNC4(wchan, NULL, wmesg, flags, 0);
	if (timeout != 0)
		FUNC5(wchan, timeout);

	FUNC0();
	if ((state & TASK_INTERRUPTIBLE) != 0) {
		if (timeout == 0)
			ret = -FUNC9(wchan, 0);
		else
			ret = -FUNC7(wchan, 0);
	} else {
		if (timeout == 0) {
			FUNC8(wchan, 0);
			ret = 0;
		} else
			ret = -FUNC6(wchan, 0);
	}
	FUNC2();

	/* filter return value */
	if (ret != 0 && ret != -EWOULDBLOCK) {
		FUNC3(task, ret);
		ret = -ERESTARTSYS;
	}
	return (ret);
}