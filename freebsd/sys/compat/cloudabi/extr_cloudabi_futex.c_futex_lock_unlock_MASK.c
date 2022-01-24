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
struct thread {scalar_t__ td_tid; } ;
struct futex_lock {scalar_t__ fl_owner; } ;
typedef  int /*<<< orphan*/  cloudabi_lock_t ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ LOCK_UNMANAGED ; 
 int FUNC0 (struct futex_lock*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct futex_lock*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct futex_lock *fl, struct thread *td,
    cloudabi_lock_t *lock)
{
	int error;

	/* Validate that this thread is allowed to unlock. */
	error = FUNC0(fl, lock);
	if (error != 0)
		return (error);
	if (fl->fl_owner != LOCK_UNMANAGED && fl->fl_owner != td->td_tid)
		return (EPERM);
	return (FUNC1(fl, lock));
}