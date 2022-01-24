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
struct futex_lock {scalar_t__ fl_owner; scalar_t__ fl_waitcount; int /*<<< orphan*/  fl_writers; int /*<<< orphan*/  fl_readers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ LOCK_UNMANAGED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(const struct futex_lock *fl)
{

	/*
	 * A futex lock can only be kernel-managed if it has waiters.
	 * Vice versa: if a futex lock has waiters, it must be
	 * kernel-managed.
	 */
	FUNC0((fl->fl_owner == LOCK_UNMANAGED) ==
	    (FUNC1(&fl->fl_readers) == 0 &&
	    FUNC1(&fl->fl_writers) == 0),
	    ("Managed locks must have waiting threads"));
	FUNC0(fl->fl_waitcount != 0 || fl->fl_owner == LOCK_UNMANAGED,
	    ("Lock with no waiters must be unmanaged"));
}