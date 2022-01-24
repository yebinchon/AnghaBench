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
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int SLEEPQ_INTERRUPTIBLE ; 
 int SLEEPQ_SLEEP ; 
 scalar_t__ UINT_MAX ; 
 struct task_struct* current ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct completion*) ; 
 int /*<<< orphan*/  FUNC7 (struct completion*) ; 
 int /*<<< orphan*/  FUNC8 (struct completion*,int) ; 
 int FUNC9 (struct completion*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct completion*,int /*<<< orphan*/ ) ; 

int
FUNC11(struct completion *c, int timeout, int flags)
{
	struct task_struct *task;
	int end = jiffies + timeout;
	int error;

	if (FUNC2())
		return (0);

	task = current;

	if (flags != 0)
		flags = SLEEPQ_INTERRUPTIBLE | SLEEPQ_SLEEP;
	else
		flags = SLEEPQ_SLEEP;

	for (;;) {
		FUNC6(c);
		if (c->done)
			break;
		FUNC5(c, NULL, "completion", flags, 0);
		FUNC8(c, FUNC4(end));

		FUNC0();
		if (flags & SLEEPQ_INTERRUPTIBLE)
			error = -FUNC10(c, 0);
		else
			error = -FUNC9(c, 0);
		FUNC1();

		if (error != 0) {
			/* check for timeout */
			if (error == -EWOULDBLOCK) {
				error = 0;	/* timeout */
			} else {
				/* signal happened */
				FUNC3(task, error);
				error = -ERESTARTSYS;
			}
			goto done;
		}
	}
	if (c->done != UINT_MAX)
		c->done--;
	FUNC7(c);

	/* return how many jiffies are left */
	error = FUNC4(end);
done:
	return (error);
}