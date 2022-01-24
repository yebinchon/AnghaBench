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
 int NO_RECOVERY ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	int error;

	if (FUNC4(cmd, "gethostbyname") == 0)
		error = FUNC2(limits, nvlin, nvlout);
	else if (FUNC4(cmd, "gethostbyaddr") == 0)
		error = FUNC1(limits, nvlin, nvlout);
	else if (FUNC4(cmd, "getnameinfo") == 0)
		error = FUNC3(limits, nvlin, nvlout);
	else if (FUNC4(cmd, "getaddrinfo") == 0)
		error = FUNC0(limits, nvlin, nvlout);
	else
		error = NO_RECOVERY;

	return (error);
}