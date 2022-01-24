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
 int LOG_PERROR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(cap_channel_t *chan, const char *ident, int logopt, int facility)
{
	nvlist_t *nvl;

	nvl = FUNC4(0);
	FUNC3(nvl, "cmd", "openlog");
	if (ident != NULL) {
		FUNC3(nvl, "ident", ident);
	}
	FUNC2(nvl, "logopt", logopt);
	FUNC2(nvl, "facility", facility);
	if (logopt & LOG_PERROR) {
		FUNC1(nvl, "stderr", STDERR_FILENO);
	}
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL) {
		return;
	}
	FUNC5(nvl);
}