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
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (char const*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(const char *name, void *buf, const size_t len)
{
	size_t len2 = len;
	FUNC2("Querying sysctl variable: %s\n", name);
	int ret = FUNC4(name, buf, &len2, NULL, 0);
	if (ret == -1 && errno != ENOENT) {
		FUNC1(stderr, "sysctlbyname(2) failed: %s\n",
		    FUNC3(errno));
		FUNC0("Failed to query %s", name);
	}
	return ret != -1;
}