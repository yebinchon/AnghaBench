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
 int /*<<< orphan*/  LOG_LOCAL0 ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 scalar_t__ PJDLOG_INITIALIZED ; 
 int PJDLOG_MODE_SOCK ; 
 int PJDLOG_MODE_STD ; 
 int PJDLOG_MODE_SYSLOG ; 
 scalar_t__ PJDLOG_NEVER_INITIALIZED ; 
 scalar_t__ PJDLOG_NOT_INITIALIZED ; 
 int __use_xprintf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ pjdlog_debug_level ; 
 scalar_t__ pjdlog_initialized ; 
 int pjdlog_mode ; 
 char** pjdlog_prefix ; 
 scalar_t__ pjdlog_prefix_current ; 
 int /*<<< orphan*/  pjdlog_printf_arginfo_humanized_number ; 
 int /*<<< orphan*/  pjdlog_printf_arginfo_sockaddr ; 
 int /*<<< orphan*/  pjdlog_printf_render_humanized_number ; 
 int /*<<< orphan*/  pjdlog_printf_render_sockaddr ; 
 int /*<<< orphan*/  pjdlog_printf_render_sockaddr_ip ; 
 int pjdlog_sock ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(int mode)
{
	int saved_errno;

	FUNC0(pjdlog_initialized == PJDLOG_NEVER_INITIALIZED ||
	    pjdlog_initialized == PJDLOG_NOT_INITIALIZED);
#ifdef notyet
	assert(mode == PJDLOG_MODE_STD || mode == PJDLOG_MODE_SYSLOG ||
	    mode == PJDLOG_MODE_SOCK);
#else
	FUNC0(mode == PJDLOG_MODE_STD || mode == PJDLOG_MODE_SYSLOG);
#endif

	saved_errno = errno;

	if (pjdlog_initialized == PJDLOG_NEVER_INITIALIZED) {
		__use_xprintf = 1;
		FUNC3("T");
		FUNC2('N',
		    pjdlog_printf_render_humanized_number,
		    pjdlog_printf_arginfo_humanized_number);
		FUNC2('I',
		    pjdlog_printf_render_sockaddr_ip,
		    pjdlog_printf_arginfo_sockaddr);
		FUNC2('S',
		    pjdlog_printf_render_sockaddr,
		    pjdlog_printf_arginfo_sockaddr);
	}

	if (mode == PJDLOG_MODE_SYSLOG)
		FUNC1(NULL, LOG_PID | LOG_NDELAY, LOG_LOCAL0);
	pjdlog_mode = mode;
	pjdlog_debug_level = 0;
	pjdlog_prefix_current = 0;
	pjdlog_prefix[0][0] = '\0';

	pjdlog_initialized = PJDLOG_INITIALIZED;
	pjdlog_sock = -1;

	errno = saved_errno;
}