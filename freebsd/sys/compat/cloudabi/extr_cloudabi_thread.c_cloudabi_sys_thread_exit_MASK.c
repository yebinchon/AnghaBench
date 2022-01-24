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
struct thread {int dummy; } ;
struct cloudabi_sys_thread_exit_args {int /*<<< orphan*/  scope; int /*<<< orphan*/  lock; } ;
struct cloudabi_sys_lock_unlock_args {int /*<<< orphan*/  scope; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,struct cloudabi_sys_lock_unlock_args*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

int
FUNC4(struct thread *td,
    struct cloudabi_sys_thread_exit_args *uap)
{
	struct cloudabi_sys_lock_unlock_args cloudabi_sys_lock_unlock_args = {
		.lock = uap->lock,
		.scope = uap->scope,
	};

	FUNC3(td);

        /* Wake up joining thread. */
	FUNC0(td, &cloudabi_sys_lock_unlock_args);

        /*
	 * Attempt to terminate the thread. Terminate the process if
	 * it's the last thread.
	 */
	FUNC2(td);
	FUNC1(td, 0, 0);
	/* NOTREACHED */
}