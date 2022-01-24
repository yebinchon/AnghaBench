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
struct futex_lock {scalar_t__ fl_waitcount; scalar_t__ fl_owner; int /*<<< orphan*/  fl_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct futex_lock*,int /*<<< orphan*/ ) ; 
 scalar_t__ LOCK_UNMANAGED ; 
 int /*<<< orphan*/  M_FUTEX ; 
 int /*<<< orphan*/  fl_next ; 
 int /*<<< orphan*/  FUNC2 (struct futex_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  futex_global_lock ; 
 int /*<<< orphan*/  FUNC4 (struct futex_lock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct futex_lock *fl)
{

	FUNC4(fl);
	if (fl->fl_waitcount == 0) {
		/* Lock object is unreferenced. Deallocate it. */
		FUNC0(fl->fl_owner == LOCK_UNMANAGED,
		    ("Attempted to free a managed lock"));
		FUNC3(&fl->fl_address);
		FUNC1(fl, fl_next);
		FUNC2(fl, M_FUTEX);
	}
	FUNC5(&futex_global_lock);
}