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
 int EINVAL ; 
 int ENOTCAPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int
FUNC8(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	int error;

	if (!FUNC0(limits, cmd))
		return (ENOTCAPABLE);

	if (FUNC7(cmd, "getgrent") == 0 || FUNC7(cmd, "getgrent_r") == 0)
		error = FUNC2(limits, nvlin, nvlout);
	else if (FUNC7(cmd, "getgrnam") == 0 || FUNC7(cmd, "getgrnam_r") == 0)
		error = FUNC4(limits, nvlin, nvlout);
	else if (FUNC7(cmd, "getgrgid") == 0 || FUNC7(cmd, "getgrgid_r") == 0)
		error = FUNC3(limits, nvlin, nvlout);
	else if (FUNC7(cmd, "setgroupent") == 0)
		error = FUNC6(limits, nvlin, nvlout);
	else if (FUNC7(cmd, "setgrent") == 0)
		error = FUNC5(limits, nvlin, nvlout);
	else if (FUNC7(cmd, "endgrent") == 0)
		error = FUNC1(limits, nvlin, nvlout);
	else
		error = EINVAL;

	return (error);
}