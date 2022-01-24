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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  LOG_ALERT 137 
#define  LOG_CRIT 136 
#define  LOG_DEBUG 135 
#define  LOG_EMERG 134 
#define  LOG_ERR 133 
#define  LOG_INFO 132 
#define  LOG_NOTICE 131 
#define  LOG_WARNING 130 
 scalar_t__ PJDLOG_INITIALIZED ; 
#define  PJDLOG_MODE_STD 129 
#define  PJDLOG_MODE_SYSLOG 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int pjdlog_debug_level ; 
 scalar_t__ pjdlog_initialized ; 
 char* FUNC4 (int) ; 
 int pjdlog_mode ; 
 char* pjdlog_prefix ; 
 int FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC10(int loglevel, int debuglevel, int error, const char *fmt,
    va_list ap)
{
	int saved_errno;

	FUNC1(pjdlog_initialized == PJDLOG_INITIALIZED);
	FUNC1(loglevel == LOG_EMERG || loglevel == LOG_ALERT ||
	    loglevel == LOG_CRIT || loglevel == LOG_ERR ||
	    loglevel == LOG_WARNING || loglevel == LOG_NOTICE ||
	    loglevel == LOG_INFO || loglevel == LOG_DEBUG);
	FUNC1(loglevel != LOG_DEBUG || debuglevel > 0);
	FUNC1(error >= -1);

	/* Ignore debug above configured level. */
	if (loglevel == LOG_DEBUG && debuglevel > pjdlog_debug_level)
		return;

	saved_errno = errno;

	switch (pjdlog_mode) {
	case PJDLOG_MODE_STD:
	    {
		FILE *out;

		/*
		 * We send errors and warning to stderr and the rest to stdout.
		 */
		switch (loglevel) {
		case LOG_EMERG:
		case LOG_ALERT:
		case LOG_CRIT:
		case LOG_ERR:
		case LOG_WARNING:
			out = stderr;
			break;
		case LOG_NOTICE:
		case LOG_INFO:
		case LOG_DEBUG:
			out = stdout;
			break;
		default:
			FUNC1(!"Invalid loglevel.");
			FUNC0();	/* XXX: gcc */
		}

		FUNC3(out, "[%s]", FUNC4(loglevel));
		/* Attach debuglevel if this is debug log. */
		if (loglevel == LOG_DEBUG)
			FUNC3(out, "[%d]", debuglevel);
		FUNC3(out, " %s", pjdlog_prefix);
		FUNC8(out, fmt, ap);
		if (error != -1)
			FUNC3(out, ": %s.", FUNC6(error));
		FUNC3(out, "\n");
		FUNC2(out);
		break;
	    }
	case PJDLOG_MODE_SYSLOG:
	    {
		char log[1024];
		int len;

		len = FUNC5(log, sizeof(log), "%s", pjdlog_prefix);
		if ((size_t)len < sizeof(log))
			len += FUNC9(log + len, sizeof(log) - len, fmt, ap);
		if (error != -1 && (size_t)len < sizeof(log)) {
			(void)FUNC5(log + len, sizeof(log) - len, ": %s.",
			    FUNC6(error));
		}
		FUNC7(loglevel, "%s", log);
		break;
	    }
	default:
		FUNC1(!"Invalid mode.");
	}

	errno = saved_errno;
}