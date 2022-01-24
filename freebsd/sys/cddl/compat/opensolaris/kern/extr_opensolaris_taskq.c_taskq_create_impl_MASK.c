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
typedef  int uint_t ;
struct TYPE_4__ {int /*<<< orphan*/  tq_queue; } ;
typedef  TYPE_1__ taskq_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  pri_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int TASKQ_THREADS_CPU_PCT ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static taskq_t *
FUNC4(const char *name, int nthreads, pri_t pri, proc_t *proc,
    uint_t flags)
{
	taskq_t *tq;

	if ((flags & TASKQ_THREADS_CPU_PCT) != 0)
		nthreads = FUNC0((mp_ncpus * nthreads) / 100, 1);

	tq = FUNC1(sizeof(*tq), KM_SLEEP);
	tq->tq_queue = FUNC2(name, M_WAITOK, taskqueue_thread_enqueue,
	    &tq->tq_queue);
	(void) FUNC3(&tq->tq_queue, nthreads, pri,
	    proc, "%s", name);

	return ((taskq_t *)tq);
}