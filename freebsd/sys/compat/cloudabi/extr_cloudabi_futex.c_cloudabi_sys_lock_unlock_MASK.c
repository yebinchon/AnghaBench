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
struct futex_lock {int dummy; } ;
struct cloudabi_sys_lock_unlock_args {int /*<<< orphan*/  lock; int /*<<< orphan*/  scope; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct futex_lock**) ; 
 int /*<<< orphan*/  FUNC1 (struct futex_lock*) ; 
 int FUNC2 (struct futex_lock*,struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td,
    struct cloudabi_sys_lock_unlock_args *uap)
{
	struct futex_lock *fl;
	int error;

	error = FUNC0(td, uap->lock, uap->scope, &fl);
	if (error != 0)
		return (error);
	error = FUNC2(fl, td, uap->lock);
	FUNC1(fl);
	return (error);
}