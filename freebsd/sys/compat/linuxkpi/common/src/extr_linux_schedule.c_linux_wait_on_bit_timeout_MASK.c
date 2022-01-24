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
 int MAX_SCHEDULE_TIMEOUT ; 
 unsigned int TASK_RUNNING ; 
 void* FUNC0 (unsigned long*,int) ; 
 struct task_struct* current ; 
 int FUNC1 (void*,struct task_struct*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int
FUNC5(unsigned long *word, int bit, unsigned int state,
    int timeout)
{
	struct task_struct *task;
	void *wchan;
	int ret;

	/* range check timeout */
	if (timeout < 1)
		timeout = 1;
	else if (timeout == MAX_SCHEDULE_TIMEOUT)
		timeout = 0;

	task = current;
	wchan = FUNC0(word, bit);
	for (;;) {
		FUNC3(wchan);
		if ((*word & (1 << bit)) == 0) {
			FUNC4(wchan);
			ret = 0;
			break;
		}
		FUNC2(task, state);
		ret = FUNC1(wchan, task, "wbit", timeout,
		    state);
		if (ret != 0)
			break;
	}
	FUNC2(task, TASK_RUNNING);

	return (ret);
}