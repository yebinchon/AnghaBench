#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_20__ {int /*<<< orphan*/  (* ev_action ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;
typedef  TYPE_1__ isc_event_t ;
typedef  scalar_t__ isc_boolean_t ;
struct TYPE_21__ {int tasks_running; int /*<<< orphan*/  lock; void* mode; int /*<<< orphan*/  ready_priority_tasks; int /*<<< orphan*/  ready_tasks; int /*<<< orphan*/  work_available; int /*<<< orphan*/  paused; scalar_t__ pause_requested; int /*<<< orphan*/  exclusive_granted; scalar_t__ exclusive_requested; } ;
typedef  TYPE_2__ isc__taskmgr_t ;
typedef  int /*<<< orphan*/  isc__tasklist_t ;
struct TYPE_22__ {scalar_t__ state; scalar_t__ references; unsigned int quantum; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  events; int /*<<< orphan*/  now; } ;
typedef  TYPE_3__ isc__task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int DEFAULT_TASKMGR_QUANTUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ ISC_FALSE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_MSGSET_GENERAL ; 
 int /*<<< orphan*/  ISC_MSGSET_TASK ; 
 int /*<<< orphan*/  ISC_MSG_AWAKE ; 
 int /*<<< orphan*/  ISC_MSG_DONE ; 
 int /*<<< orphan*/  ISC_MSG_EMPTY ; 
 int /*<<< orphan*/  ISC_MSG_EXECUTE ; 
 int /*<<< orphan*/  ISC_MSG_QUANTUM ; 
 int /*<<< orphan*/  ISC_MSG_RUNNING ; 
 int /*<<< orphan*/  ISC_MSG_WAIT ; 
 int /*<<< orphan*/  ISC_MSG_WORKING ; 
 scalar_t__ ISC_TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int TASK_F_PRIVILEGED ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 void* isc_taskmgrmode_normal ; 
 TYPE_3__* FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ready_link ; 
 int /*<<< orphan*/  ready_priority_link ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 scalar_t__ FUNC26 (TYPE_3__*) ; 
 scalar_t__ task_state_done ; 
 scalar_t__ task_state_idle ; 
 scalar_t__ task_state_ready ; 
 scalar_t__ task_state_running ; 

__attribute__((used)) static void
FUNC27(isc__taskmgr_t *manager) {
	isc__task_t *task;
#ifndef USE_WORKER_THREADS
	unsigned int total_dispatch_count = 0;
	isc__tasklist_t new_ready_tasks;
	isc__tasklist_t new_priority_tasks;
#endif /* USE_WORKER_THREADS */

	FUNC10(FUNC14(manager));

	/*
	 * Again we're trying to hold the lock for as short a time as possible
	 * and to do as little locking and unlocking as possible.
	 *
	 * In both while loops, the appropriate lock must be held before the
	 * while body starts.  Code which acquired the lock at the top of
	 * the loop would be more readable, but would result in a lot of
	 * extra locking.  Compare:
	 *
	 * Straightforward:
	 *
	 *	LOCK();
	 *	...
	 *	UNLOCK();
	 *	while (expression) {
	 *		LOCK();
	 *		...
	 *		UNLOCK();
	 *
	 *	       	Unlocked part here...
	 *
	 *		LOCK();
	 *		...
	 *		UNLOCK();
	 *	}
	 *
	 * Note how if the loop continues we unlock and then immediately lock.
	 * For N iterations of the loop, this code does 2N+1 locks and 2N+1
	 * unlocks.  Also note that the lock is not held when the while
	 * condition is tested, which may or may not be important, depending
	 * on the expression.
	 *
	 * As written:
	 *
	 *	LOCK();
	 *	while (expression) {
	 *		...
	 *		UNLOCK();
	 *
	 *	       	Unlocked part here...
	 *
	 *		LOCK();
	 *		...
	 *	}
	 *	UNLOCK();
	 *
	 * For N iterations of the loop, this code does N+1 locks and N+1
	 * unlocks.  The while expression is always protected by the lock.
	 */

#ifndef USE_WORKER_THREADS
	FUNC8(new_ready_tasks);
	FUNC8(new_priority_tasks);
#endif
	FUNC9(&manager->lock);

	while (!FUNC4(manager)) {
#ifdef USE_WORKER_THREADS
		/*
		 * For reasons similar to those given in the comment in
		 * isc_task_send() above, it is safe for us to dequeue
		 * the task while only holding the manager lock, and then
		 * change the task to running state while only holding the
		 * task lock.
		 *
		 * If a pause has been requested, don't do any work
		 * until it's been released.
		 */
		while ((empty_readyq(manager) || manager->pause_requested ||
			manager->exclusive_requested) && !FINISHED(manager))
		{
			XTHREADTRACE(isc_msgcat_get(isc_msgcat,
						    ISC_MSGSET_GENERAL,
						    ISC_MSG_WAIT, "wait"));
			WAIT(&manager->work_available, &manager->lock);
			XTHREADTRACE(isc_msgcat_get(isc_msgcat,
						    ISC_MSGSET_TASK,
						    ISC_MSG_AWAKE, "awake"));
		}
#else /* USE_WORKER_THREADS */
		if (total_dispatch_count >= DEFAULT_TASKMGR_QUANTUM ||
		    FUNC19(manager))
			break;
#endif /* USE_WORKER_THREADS */
		FUNC17(FUNC20(isc_msgcat, ISC_MSGSET_TASK,
					    ISC_MSG_WORKING, "working"));

		task = FUNC22(manager);
		if (task != NULL) {
			unsigned int dispatch_count = 0;
			isc_boolean_t done = ISC_FALSE;
			isc_boolean_t requeue = ISC_FALSE;
			isc_boolean_t finished = ISC_FALSE;
			isc_event_t *event;

			FUNC6(FUNC15(task));

			/*
			 * Note we only unlock the manager lock if we actually
			 * have a task to do.  We must reacquire the manager
			 * lock before exiting the 'if (task != NULL)' block.
			 */
			manager->tasks_running++;
			FUNC13(&manager->lock);

			FUNC9(&task->lock);
			FUNC6(task->state == task_state_ready);
			task->state = task_state_running;
			FUNC18(FUNC20(isc_msgcat, ISC_MSGSET_GENERAL,
					      ISC_MSG_RUNNING, "running"));
			FUNC21(&task->now);
			do {
				if (!FUNC2(task->events)) {
					event = FUNC5(task->events);
					FUNC1(task->events, event, ev_link);

					/*
					 * Execute the event action.
					 */
					FUNC18(FUNC20(isc_msgcat,
							    ISC_MSGSET_TASK,
							    ISC_MSG_EXECUTE,
							    "execute action"));
					if (event->ev_action != NULL) {
						FUNC13(&task->lock);
						(event->ev_action)(
							(isc_task_t *)task,
							event);
						FUNC9(&task->lock);
					}
					dispatch_count++;
#ifndef USE_WORKER_THREADS
					total_dispatch_count++;
#endif /* USE_WORKER_THREADS */
				}

				if (task->references == 0 &&
				    FUNC2(task->events) &&
				    !FUNC12(task)) {
					isc_boolean_t was_idle;

					/*
					 * There are no references and no
					 * pending events for this task,
					 * which means it will not become
					 * runnable again via an external
					 * action (such as sending an event
					 * or detaching).
					 *
					 * We initiate shutdown to prevent
					 * it from becoming a zombie.
					 *
					 * We do this here instead of in
					 * the "if EMPTY(task->events)" block
					 * below because:
					 *
					 *	If we post no shutdown events,
					 *	we want the task to finish.
					 *
					 *	If we did post shutdown events,
					 *	will still want the task's
					 *	quantum to be applied.
					 */
					was_idle = FUNC26(task);
					FUNC6(!was_idle);
				}

				if (FUNC2(task->events)) {
					/*
					 * Nothing else to do for this task
					 * right now.
					 */
					FUNC18(FUNC20(isc_msgcat,
							      ISC_MSGSET_TASK,
							      ISC_MSG_EMPTY,
							      "empty"));
					if (task->references == 0 &&
					    FUNC12(task)) {
						/*
						 * The task is done.
						 */
						FUNC18(FUNC20(
							       isc_msgcat,
							       ISC_MSGSET_TASK,
							       ISC_MSG_DONE,
							       "done"));
						finished = ISC_TRUE;
						task->state = task_state_done;
					} else
						task->state = task_state_idle;
					done = ISC_TRUE;
				} else if (dispatch_count >= task->quantum) {
					/*
					 * Our quantum has expired, but
					 * there is more work to be done.
					 * We'll requeue it to the ready
					 * queue later.
					 *
					 * We don't check quantum until
					 * dispatching at least one event,
					 * so the minimum quantum is one.
					 */
					FUNC18(FUNC20(isc_msgcat,
							      ISC_MSGSET_TASK,
							      ISC_MSG_QUANTUM,
							      "quantum"));
					task->state = task_state_ready;
					requeue = ISC_TRUE;
					done = ISC_TRUE;
				}
			} while (!done);
			FUNC13(&task->lock);

			if (finished)
				FUNC25(task);

			FUNC9(&manager->lock);
			manager->tasks_running--;
#ifdef USE_WORKER_THREADS
			if (manager->exclusive_requested &&
			    manager->tasks_running == 1) {
				SIGNAL(&manager->exclusive_granted);
			} else if (manager->pause_requested &&
				   manager->tasks_running == 0) {
				SIGNAL(&manager->paused);
			}
#endif /* USE_WORKER_THREADS */
			if (requeue) {
				/*
				 * We know we're awake, so we don't have
				 * to wakeup any sleeping threads if the
				 * ready queue is empty before we requeue.
				 *
				 * A possible optimization if the queue is
				 * empty is to 'goto' the 'if (task != NULL)'
				 * block, avoiding the ENQUEUE of the task
				 * and the subsequent immediate DEQUEUE
				 * (since it is the only executable task).
				 * We don't do this because then we'd be
				 * skipping the exit_requested check.  The
				 * cost of ENQUEUE is low anyway, especially
				 * when you consider that we'd have to do
				 * an extra EMPTY check to see if we could
				 * do the optimization.  If the ready queue
				 * were usually nonempty, the 'optimization'
				 * might even hurt rather than help.
				 */
#ifdef USE_WORKER_THREADS
				push_readyq(manager, task);
#else
				FUNC3(new_ready_tasks, task, ready_link);
				if ((task->flags & TASK_F_PRIVILEGED) != 0)
					FUNC3(new_priority_tasks, task,
						ready_priority_link);
#endif
			}
		}

#ifdef USE_WORKER_THREADS
		/*
		 * If we are in privileged execution mode and there are no
		 * tasks remaining on the current ready queue, then
		 * we're stuck.  Automatically drop privileges at that
		 * point and continue with the regular ready queue.
		 */
		if (manager->tasks_running == 0 && empty_readyq(manager)) {
			manager->mode = isc_taskmgrmode_normal;
			if (!empty_readyq(manager))
				BROADCAST(&manager->work_available);
		}
#endif
	}

#ifndef USE_WORKER_THREADS
	FUNC7(manager->ready_tasks, new_ready_tasks, ready_link);
	FUNC7(manager->ready_priority_tasks, new_priority_tasks,
			    ready_priority_link);
	if (FUNC19(manager))
		manager->mode = isc_taskmgrmode_normal;
#endif

	FUNC13(&manager->lock);
}