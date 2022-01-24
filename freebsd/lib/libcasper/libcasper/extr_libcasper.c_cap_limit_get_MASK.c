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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 

int
FUNC8(const cap_channel_t *chan, nvlist_t **limitsp)
{
	nvlist_t *nvlmsg;
	int error;

	nvlmsg = FUNC3(FUNC1(chan));
	FUNC2(nvlmsg, "cmd", "limit_get");
	nvlmsg = FUNC0(chan, nvlmsg);
	if (nvlmsg == NULL)
		return (-1);
	error = (int)FUNC6(nvlmsg, "error");
	if (error != 0) {
		FUNC4(nvlmsg);
		errno = error;
		return (-1);
	}
	if (FUNC5(nvlmsg, "limits"))
		*limitsp = NULL;
	else
		*limitsp = FUNC7(nvlmsg, "limits");
	FUNC4(nvlmsg);
	return (0);
}