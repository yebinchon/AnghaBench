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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAX_WIRED ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC4(u_long *old_value, u_long *new_value)
{
	size_t old_len;
	size_t new_len = (new_value == NULL ? 0 : sizeof(*new_value));

	if (old_value == NULL)
		FUNC1("Setting the new value to %lu\n", *new_value);
	else {
		FUNC0(FUNC3(VM_MAX_WIRED, NULL, &old_len,
		    new_value, new_len) == 0,
		    "sysctlbyname(%s) failed: %s", VM_MAX_WIRED, FUNC2(errno));
	}

	FUNC0(FUNC3(VM_MAX_WIRED, old_value, &old_len,
	    new_value, new_len) == 0,
	    "sysctlbyname(%s) failed: %s", VM_MAX_WIRED, FUNC2(errno));

	if (old_value != NULL)
		FUNC1("Saved the old value (%lu)\n", *old_value);
}