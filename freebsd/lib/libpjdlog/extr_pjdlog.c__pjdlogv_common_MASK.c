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
typedef  int /*<<< orphan*/  log ;

/* Variables and functions */
 int LOG_ALERT ; 
 int LOG_CRIT ; 
 int LOG_DEBUG ; 
 int LOG_EMERG ; 
 int LOG_ERR ; 
 int LOG_INFO ; 
 int LOG_NOTICE ; 
 int LOG_WARNING ; 
 scalar_t__ PJDLOG_INITIALIZED ; 
 int PJDLOG_MAX_MSGSIZE ; 
 scalar_t__ PJDLOG_MODE_SOCK ; 
 scalar_t__ PJDLOG_MODE_STD ; 
 scalar_t__ PJDLOG_MODE_SYSLOG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int pjdlog_debug_level ; 
 scalar_t__ pjdlog_initialized ; 
 scalar_t__ pjdlog_mode ; 
 scalar_t__ pjdlog_sock ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int,int,int,int,char const*) ; 
 char* FUNC2 (char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(const char *func, const char *file, int line, int loglevel,
    int debuglevel, int error, const char *fmt, va_list ap)
{
	char log[PJDLOG_MAX_MSGSIZE];
	char *logp, *curline;
	const char *prvline;
	int saved_errno;

	FUNC0(pjdlog_initialized == PJDLOG_INITIALIZED);
	FUNC0(pjdlog_mode == PJDLOG_MODE_STD ||
	    pjdlog_mode == PJDLOG_MODE_SYSLOG ||
	    pjdlog_mode == PJDLOG_MODE_SOCK);
	FUNC0(pjdlog_mode != PJDLOG_MODE_SOCK || pjdlog_sock >= 0);
	FUNC0(loglevel == LOG_EMERG || loglevel == LOG_ALERT ||
	    loglevel == LOG_CRIT || loglevel == LOG_ERR ||
	    loglevel == LOG_WARNING || loglevel == LOG_NOTICE ||
	    loglevel == LOG_INFO || loglevel == LOG_DEBUG);
	FUNC0(loglevel != LOG_DEBUG || debuglevel > 0);
	FUNC0(debuglevel <= 127);
	FUNC0(error >= -1);

	/* Ignore debug above configured level. */
	if (loglevel == LOG_DEBUG && debuglevel > pjdlog_debug_level)
		return;

	saved_errno = errno;

	FUNC3(log, sizeof(log), fmt, ap);
	logp = log;
	prvline = NULL;

	while ((curline = FUNC2(&logp, "\n")) != NULL) {
		if (*curline == '\0')
			continue;
		if (prvline != NULL) {
			FUNC1(func, file, line, loglevel,
			    debuglevel, -1, prvline);
		}
		prvline = curline;
	}
	if (prvline == NULL)
		prvline = "";
	FUNC1(func, file, line, loglevel, debuglevel,
	    error, prvline);

	errno = saved_errno;
}