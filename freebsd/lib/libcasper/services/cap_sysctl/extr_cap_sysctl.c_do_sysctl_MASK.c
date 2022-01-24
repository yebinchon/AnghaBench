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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 scalar_t__ CAP_SYSCTL_READ ; 
 scalar_t__ CAP_SYSCTL_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ *,char*,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC9(cap_channel_t *chan, nvlist_t *nvl, void *oldp, size_t *oldlenp,
    const void *newp, size_t newlen)
{
	const uint8_t *retoldp;
	size_t oldlen;
	int error;
	uint8_t operation;

	operation = 0;
	if (oldlenp != NULL)
		operation |= CAP_SYSCTL_READ;
	if (newp != NULL)
		operation |= CAP_SYSCTL_WRITE;
	FUNC5(nvl, "operation", (uint64_t)operation);
	if (oldp == NULL && oldlenp != NULL)
		FUNC4(nvl, "justsize");
	else if (oldlenp != NULL)
		FUNC5(nvl, "oldlen", (uint64_t)*oldlenp);
	if (newp != NULL)
		FUNC3(nvl, "newp", newp, newlen);

	nvl = FUNC0(chan, nvl);
	if (nvl == NULL)
		return (-1);
	error = (int)FUNC1(nvl, "error", 0);
	if (error != 0) {
		FUNC6(nvl);
		errno = error;
		return (-1);
	}

	if (oldp == NULL && oldlenp != NULL) {
		*oldlenp = (size_t)FUNC8(nvl, "oldlen");
	} else if (oldp != NULL) {
		retoldp = FUNC7(nvl, "oldp", &oldlen);
		FUNC2(oldp, retoldp, oldlen);
		if (oldlenp != NULL)
			*oldlenp = oldlen;
	}

	FUNC6(nvl);

	return (0);
}