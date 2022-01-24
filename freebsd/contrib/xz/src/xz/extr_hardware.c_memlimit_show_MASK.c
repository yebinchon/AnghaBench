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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ UINT64_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC4(const char *str, uint64_t value)
{
	// The memory usage limit is considered to be disabled if value
	// is 0 or UINT64_MAX. This might get a bit more complex once there
	// is threading support. See the comment in hardware_memlimit_get().
	if (value == 0 || value == UINT64_MAX)
		FUNC1("%s %s\n", str, FUNC0("Disabled"));
	else
		FUNC1("%s %s MiB (%s B)\n", str,
				FUNC3(FUNC2(value), 0),
				FUNC3(value, 1));

	return;
}