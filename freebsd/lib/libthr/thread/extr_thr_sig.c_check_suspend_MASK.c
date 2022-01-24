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
typedef  scalar_t__ uint32_t ;
struct pthread {int flags; scalar_t__ state; int /*<<< orphan*/  critical_count; int /*<<< orphan*/  lock; scalar_t__ cycle; scalar_t__ force_exit; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ PS_DEAD ; 
 int THR_FLAGS_NEED_SUSPEND ; 
 int THR_FLAGS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 struct pthread* _single_thread ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC4 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct pthread *curthread)
{
	uint32_t cycle;

	if (FUNC2((curthread->flags &
		(THR_FLAGS_NEED_SUSPEND | THR_FLAGS_SUSPENDED))
		!= THR_FLAGS_NEED_SUSPEND))
		return;
	if (curthread == _single_thread)
		return;
	if (curthread->force_exit)
		return;

	/* 
	 * Blocks SIGCANCEL which other threads must send.
	 */
	FUNC3(curthread);

	/*
	 * Increase critical_count, here we don't use THR_LOCK/UNLOCK
	 * because we are leaf code, we don't want to recursively call
	 * ourself.
	 */
	curthread->critical_count++;
	FUNC0(curthread, &(curthread)->lock);
	while ((curthread->flags & THR_FLAGS_NEED_SUSPEND) != 0) {
		curthread->cycle++;
		cycle = curthread->cycle;

		/* Wake the thread suspending us. */
		FUNC6(&curthread->cycle, INT_MAX, 0);

		/*
		 * if we are from pthread_exit, we don't want to
		 * suspend, just go and die.
		 */
		if (curthread->state == PS_DEAD)
			break;
		curthread->flags |= THR_FLAGS_SUSPENDED;
		FUNC1(curthread, &(curthread)->lock);
		FUNC5(&curthread->cycle, cycle, NULL, 0);
		FUNC0(curthread, &(curthread)->lock);
	}
	FUNC1(curthread, &(curthread)->lock);
	curthread->critical_count--;

	FUNC4(curthread);
}