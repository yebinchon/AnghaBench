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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  message ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int CAP_SYSLOG_LIMIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC6(cap_channel_t *chan, int priority, const char *fmt, va_list ap)
{
	nvlist_t *nvl;
	char message[CAP_SYSLOG_LIMIT];

	(void)FUNC5(message, sizeof(message), fmt, ap);

	nvl = FUNC3(0);
	FUNC2(nvl, "cmd", "vsyslog");
	FUNC1(nvl, "priority", priority);
	FUNC2(nvl, "message", message);
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL) {
		return;
	}
	FUNC4(nvl);
}