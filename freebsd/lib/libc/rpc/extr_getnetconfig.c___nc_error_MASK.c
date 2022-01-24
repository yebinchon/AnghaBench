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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  nc_key ; 
 scalar_t__ nc_key_error ; 
 int /*<<< orphan*/  nc_key_init ; 
 int /*<<< orphan*/  nc_once ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int *
FUNC6(void)
{
	static int nc_error = 0;
	int *nc_addr;

	/*
	 * Use the static `nc_error' if we are the main thread
	 * (including non-threaded programs), or if an allocation
	 * fails.
	 */
	if (FUNC3())
		return (&nc_error);
	if (FUNC4(&nc_once, nc_key_init) != 0 || nc_key_error != 0)
		return (&nc_error);
	if ((nc_addr = (int *)FUNC2(nc_key)) == NULL) {
		nc_addr = (int *)FUNC1(sizeof (int));
		if (FUNC5(nc_key, (void *) nc_addr) != 0) {
			FUNC0(nc_addr);
			return (&nc_error);
		}
		*nc_addr = 0;
	}
	return (nc_addr);
}