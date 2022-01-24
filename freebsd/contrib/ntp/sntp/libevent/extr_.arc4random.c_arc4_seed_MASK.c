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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/ * arc4random_urandom_filename ; 

__attribute__((used)) static int
FUNC5(void)
{
	int ok = 0;
	/* We try every method that might work, and don't give up even if one
	 * does seem to work.  There's no real harm in over-seeding, and if
	 * one of these sources turns out to be broken, that would be bad. */
#ifdef TRY_SEED_WIN32
	if (0 == arc4_seed_win32())
		ok = 1;
#endif
#ifdef TRY_SEED_URANDOM
	if (0 == arc4_seed_urandom())
		ok = 1;
#endif
#ifdef TRY_SEED_PROC_SYS_KERNEL_RANDOM_UUID
	if (arc4random_urandom_filename == NULL &&
	    0 == arc4_seed_proc_sys_kernel_random_uuid())
		ok = 1;
#endif
#ifdef TRY_SEED_SYSCTL_LINUX
	/* Apparently Linux is deprecating sysctl, and spewing warning
	 * messages when you try to use it. */
	if (!ok && 0 == arc4_seed_sysctl_linux())
		ok = 1;
#endif
#ifdef TRY_SEED_SYSCTL_BSD
	if (0 == arc4_seed_sysctl_bsd())
		ok = 1;
#endif
	return ok ? 0 : -1;
}