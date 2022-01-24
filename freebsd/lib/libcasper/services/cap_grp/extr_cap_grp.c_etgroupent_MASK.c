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
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

int
FUNC6(cap_channel_t *chan, int stayopen)
{
	nvlist_t *nvl;

	nvl = FUNC3(0);
	FUNC2(nvl, "cmd", "setgroupent");
	FUNC1(nvl, "stayopen", stayopen != 0);
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL)
		return (0);
	if (FUNC5(nvl, "error") != 0) {
		errno = FUNC5(nvl, "error");
		FUNC4(nvl);
		return (0);
	}
	FUNC4(nvl);

	return (1);
}