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
struct workqueue_struct {int /*<<< orphan*/  exec_mtx; int /*<<< orphan*/  exec_head; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/  draining; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct workqueue_struct* FUNC2 (int,int) ; 
 int linux_default_wq_cpus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

struct workqueue_struct *
FUNC6(const char *name, int cpus)
{
	struct workqueue_struct *wq;

	/*
	 * If zero CPUs are specified use the default number of CPUs:
	 */
	if (cpus == 0)
		cpus = linux_default_wq_cpus;

	wq = FUNC2(sizeof(*wq), M_WAITOK | M_ZERO);
	wq->taskqueue = FUNC4(name, M_WAITOK,
	    taskqueue_thread_enqueue, &wq->taskqueue);
	FUNC1(&wq->draining, 0);
	FUNC5(&wq->taskqueue, cpus, PWAIT, "%s", name);
	FUNC0(&wq->exec_head);
	FUNC3(&wq->exec_mtx, "linux_wq_exec", NULL, MTX_DEF);

	return (wq);
}