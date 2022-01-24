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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTCAPABLE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (char const*,int*,size_t*) ; 

__attribute__((used)) static int
FUNC7(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
	const char *name;
	size_t size;
	int error, *mibp;

	if (!FUNC5(limits, nvlin))
		return (ENOTCAPABLE);

	name = FUNC4(nvlin, "name");
	size = (size_t)FUNC3(nvlin, "size");

	mibp = FUNC1(size * sizeof(*mibp));
	if (mibp == NULL)
		return (ENOMEM);

	error = FUNC6(name, mibp, &size);
	if (error != 0) {
		error = errno;
		FUNC0(mibp);
		return (error);
	}

	FUNC2(nvlout, "mib", mibp, size * sizeof(*mibp));

	return (0);
}