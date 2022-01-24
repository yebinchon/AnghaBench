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
struct completion {scalar_t__ done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int SLEEPQ_INTERRUPTIBLE ; 
 int SLEEPQ_SLEEP ; 
 scalar_t__ UINT_MAX ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 
 int /*<<< orphan*/  FUNC6 (struct completion*) ; 
 int /*<<< orphan*/  FUNC7 (struct completion*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct completion*,int /*<<< orphan*/ ) ; 

int
FUNC9(struct completion *c, int flags)
{
	struct task_struct *task;
	int error;

	if (FUNC2())
		return (0);

	task = current;

	if (flags != 0)
		flags = SLEEPQ_INTERRUPTIBLE | SLEEPQ_SLEEP;
	else
		flags = SLEEPQ_SLEEP;
	error = 0;
	for (;;) {
		FUNC5(c);
		if (c->done)
			break;
		FUNC4(c, NULL, "completion", flags, 0);
		if (flags & SLEEPQ_INTERRUPTIBLE) {
			FUNC0();
			error = -FUNC8(c, 0);
			FUNC1();
			if (error != 0) {
				FUNC3(task, error);
				error = -ERESTARTSYS;
				goto intr;
			}
		} else {
			FUNC0();
			FUNC7(c, 0);
			FUNC1();
		}
	}
	if (c->done != UINT_MAX)
		c->done--;
	FUNC6(c);

intr:
	return (error);
}