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
struct futex_lock {scalar_t__ fl_owner; } ;
typedef  int /*<<< orphan*/  cloudabi_lock_t ;

/* Variables and functions */
 scalar_t__ LOCK_OWNER_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct futex_lock*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct futex_lock *fl, cloudabi_lock_t *address)
{
	cloudabi_lock_t lock;
	int error;

	if (fl->fl_owner == LOCK_OWNER_UNKNOWN) {
		error = FUNC1(address, &lock);
		if (error != 0)
			return (error);
		FUNC0(fl, lock);
	}
	return (0);
}