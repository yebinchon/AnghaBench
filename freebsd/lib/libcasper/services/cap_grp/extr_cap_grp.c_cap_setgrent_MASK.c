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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

int
FUNC5(cap_channel_t *chan)
{
	nvlist_t *nvl;

	nvl = FUNC2(0);
	FUNC1(nvl, "cmd", "setgrent");
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL)
		return (0);
	if (FUNC4(nvl, "error") != 0) {
		errno = FUNC4(nvl, "error");
		FUNC3(nvl);
		return (0);
	}
	FUNC3(nvl);

	return (1);
}