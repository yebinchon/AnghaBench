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
struct task_struct {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLEEPQ_SLEEP ; 
 int /*<<< orphan*/  TASK_WAKING ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int FUNC5 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct task_struct *task, unsigned int state)
{
	int ret, wakeup_swapper;

	ret = wakeup_swapper = 0;
	FUNC3(task);
	if ((FUNC0(&task->state) & state) != 0) {
		FUNC2(task, TASK_WAKING);
		wakeup_swapper = FUNC5(task, SLEEPQ_SLEEP, 0, 0);
		ret = 1;
	}
	FUNC4(task);
	if (wakeup_swapper)
		FUNC1();
	return (ret);
}