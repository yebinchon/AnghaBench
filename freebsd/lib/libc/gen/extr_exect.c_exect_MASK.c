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
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  PT_TRACE_ME ; 
 scalar_t__ errno ; 
 int FUNC0 (char const*,char* const*,char* const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(const char *path, char *const argv[], char *const envp[])
{

	if (FUNC1(PT_TRACE_ME, 0, 0, 0) != 0) {
		if (errno != EBUSY)
			return (-1);
	}

	return (FUNC0(path, argv, envp));
}