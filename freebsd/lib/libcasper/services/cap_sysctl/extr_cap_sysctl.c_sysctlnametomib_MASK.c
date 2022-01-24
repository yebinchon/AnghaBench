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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*,size_t*) ; 

int
FUNC8(cap_channel_t *chan, const char *name, int *mibp,
    size_t *sizep)
{
	nvlist_t *req;
	const void *mib;
	size_t mibsz;
	int error;

	req = FUNC5(0);
	FUNC4(req, "cmd", "sysctlnametomib");
	FUNC4(req, "name", name);
	FUNC3(req, "operation", 0);
	FUNC3(req, "size", (uint64_t)*sizep);

	req = FUNC0(chan, req);
	if (req == NULL)
		return (-1);
	error = (int)FUNC1(req, "error", 0);
	if (error != 0) {
		FUNC6(req);
		errno = error;
		return (-1);
	}

	mib = FUNC7(req, "mib", &mibsz);
	*sizep = mibsz / sizeof(int);

	FUNC2(mibp, mib, mibsz); 

	FUNC6(req);

	return (0);
}