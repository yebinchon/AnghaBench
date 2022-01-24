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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int CAP_SYSCTL_READ ; 
 int CAP_SYSCTL_WRITE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTCAPABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int,size_t) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,void*,size_t) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int FUNC13 (int const*,size_t,void*,size_t*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (char const*,void*,size_t*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC17(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	const char *name;
	const void *newp;
	const int *mibp;
	void *oldp;
	uint64_t operation;
	size_t oldlen, newlen, size;
	size_t *oldlenp;
	int error;

	if (FUNC12(cmd, "sysctlnametomib") == 0)
		return (FUNC3(limits, nvlin, nvlout));

	if (FUNC12(cmd, "sysctlbyname") != 0 && FUNC12(cmd, "sysctl") != 0)
		return (EINVAL);
	error = FUNC15(nvlin, false);
	if (error != 0)
		return (error);
	if (!FUNC14(limits, nvlin))
		return (ENOTCAPABLE);

	operation = FUNC9(nvlin, "operation");
	if ((operation & CAP_SYSCTL_WRITE) != 0) {
		if (!FUNC5(nvlin, "newp"))
			return (EINVAL);
		newp = FUNC8(nvlin, "newp", &newlen);
		FUNC0(newp != NULL && newlen > 0);
	} else {
		newp = NULL;
		newlen = 0;
	}

	if ((operation & CAP_SYSCTL_READ) != 0) {
		if (FUNC6(nvlin, "justsize")) {
			oldp = NULL;
			oldlen = 0;
			oldlenp = &oldlen;
		} else {
			if (!FUNC7(nvlin, "oldlen"))
				return (EINVAL);
			oldlen = (size_t)FUNC9(nvlin, "oldlen");
			if (oldlen == 0)
				return (EINVAL);
			oldp = FUNC1(1, oldlen);
			if (oldp == NULL)
				return (ENOMEM);
			oldlenp = &oldlen;
		}
	} else {
		oldp = NULL;
		oldlen = 0;
		oldlenp = NULL;
	}

	if (FUNC12(cmd, "sysctlbyname") == 0) {
		name = FUNC10(nvlin, "name");
		error = FUNC16(name, oldp, oldlenp, newp, newlen);
	} else {
		mibp = FUNC8(nvlin, "mib", &size);
		error = FUNC13(mibp, size / sizeof(*mibp), oldp, oldlenp, newp,
		    newlen);
	}
	if (error != 0) {
		error = errno;
		FUNC2(oldp);
		return (error);
	}

	if ((operation & CAP_SYSCTL_READ) != 0) {
		if (FUNC6(nvlin, "justsize"))
			FUNC4(nvlout, "oldlen", (uint64_t)oldlen);
		else
			FUNC11(nvlout, "oldp", oldp, oldlen);
	}

	return (0);
}