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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 unsigned int TASK_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int FUNC1 (void*,struct task_struct*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int
FUNC5(atomic_t *a, unsigned int state)
{
	struct task_struct *task;
	void *wchan;
	int ret;

	task = current;
	wchan = a;
	for (;;) {
		FUNC3(wchan);
		if (FUNC0(a) == 0) {
			FUNC4(wchan);
			ret = 0;
			break;
		}
		FUNC2(task, state);
		ret = FUNC1(wchan, task, "watomic", 0, state);
		if (ret != 0)
			break;
	}
	FUNC2(task, TASK_RUNNING);

	return (ret);
}