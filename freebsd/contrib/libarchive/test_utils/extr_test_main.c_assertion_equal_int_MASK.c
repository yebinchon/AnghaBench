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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,long long,long long,long long) ; 

int
FUNC4(const char *file, int line,
    long long v1, const char *e1, long long v2, const char *e2, void *extra)
{
	FUNC0(file, line);
	if (v1 == v2)
		return (1);
	FUNC2(file, line, "%s != %s", e1, e2);
	FUNC3("      %s=%lld (0x%llx, 0%llo)\n", e1, v1, v1, v1);
	FUNC3("      %s=%lld (0x%llx, 0%llo)\n", e2, v2, v2, v2);
	FUNC1(extra);
	return (0);
}