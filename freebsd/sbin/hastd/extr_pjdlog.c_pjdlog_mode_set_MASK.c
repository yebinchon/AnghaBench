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

/* Variables and functions */
 int /*<<< orphan*/  LOG_DAEMON ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 scalar_t__ PJDLOG_INITIALIZED ; 
 int PJDLOG_MODE_STD ; 
 int PJDLOG_MODE_SYSLOG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ pjdlog_initialized ; 
 int pjdlog_mode ; 

void
FUNC3(int mode)
{
	int saved_errno;

	FUNC0(pjdlog_initialized == PJDLOG_INITIALIZED);
	FUNC0(mode == PJDLOG_MODE_STD || mode == PJDLOG_MODE_SYSLOG);

	if (pjdlog_mode == mode)
		return;

	saved_errno = errno;

	if (mode == PJDLOG_MODE_SYSLOG)
		FUNC2(NULL, LOG_PID | LOG_NDELAY, LOG_DAEMON);
	else /* if (mode == PJDLOG_MODE_STD) */
		FUNC1();

	pjdlog_mode = mode;

	errno = saved_errno;
}