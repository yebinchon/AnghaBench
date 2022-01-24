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
 int ENOTCAPABLE ; 
 int /*<<< orphan*/  FA_OPEN ; 
 int /*<<< orphan*/  allcached ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lastname ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	int fd;
	const char *name;

	if (limits == NULL)
		return (ENOTCAPABLE);

	if (!FUNC1(limits, nvlin, FA_OPEN))
		return (ENOTCAPABLE);

	name = FUNC3(nvlin, "name");

	fd = FUNC5(name);
	if (fd < 0)
		return (errno);

	if (!allcached && (lastname == NULL ||
	    FUNC6(name, lastname) == 0)) {
		FUNC2(nvlout, "cmd", "cache");
		FUNC0(nvlout, limits, name);
	} else {
		FUNC2(nvlout, "cmd", "open");
	}
	FUNC4(nvlout, "fd", fd);
	return (0);
}