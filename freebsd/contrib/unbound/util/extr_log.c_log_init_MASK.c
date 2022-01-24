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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_NDELAY ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ _IOLBF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  ident ; 
 int key_created ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_lock ; 
 int /*<<< orphan*/ * logfile ; 
 int logging_to_syslog ; 
 int /*<<< orphan*/  logkey ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC14(const char* filename, int use_syslog, const char* chrootdir)
{
	FILE *f;
	if(!key_created) {
		key_created = 1;
		FUNC12(&logkey, NULL);
		FUNC3(&log_lock);
	}
	FUNC4(&log_lock);
	if(logfile 
#if defined(HAVE_SYSLOG_H) || defined(UB_ON_WINDOWS)
	|| logging_to_syslog
#endif
	) {
		FUNC5(&log_lock); /* verbose() needs the lock */
		FUNC13(VERB_QUERY, "switching log to %s", 
			use_syslog?"syslog":(filename&&filename[0]?filename:"stderr"));
		FUNC4(&log_lock);
	}
	if(logfile && logfile != stderr) {
		FILE* cl = logfile;
		logfile = NULL; /* set to NULL before it is closed, so that
			other threads have a valid logfile or NULL */
		FUNC1(cl);
	}
#ifdef HAVE_SYSLOG_H
	if(logging_to_syslog) {
		closelog();
		logging_to_syslog = 0;
	}
	if(use_syslog) {
		/* do not delay opening until first write, because we may
		 * chroot and no longer be able to access dev/log and so on */
		openlog(ident, LOG_NDELAY, LOG_DAEMON);
		logging_to_syslog = 1;
		lock_quick_unlock(&log_lock);
		return;
	}
#elif defined(UB_ON_WINDOWS)
	if(logging_to_syslog) {
		logging_to_syslog = 0;
	}
	if(use_syslog) {
		logging_to_syslog = 1;
		lock_quick_unlock(&log_lock);
		return;
	}
#endif /* HAVE_SYSLOG_H */
	if(!filename || !filename[0]) {
		logfile = stderr;
		FUNC5(&log_lock);
		return;
	}
	/* open the file for logging */
	if(chrootdir && chrootdir[0] && FUNC11(filename, chrootdir,
		FUNC10(chrootdir)) == 0) 
		filename += FUNC10(chrootdir);
	f = FUNC2(filename, "a");
	if(!f) {
		FUNC5(&log_lock);
		FUNC6("Could not open logfile %s: %s", filename, 
			FUNC9(errno));
		return;
	}
#ifndef UB_ON_WINDOWS
	/* line buffering does not work on windows */
	FUNC8(f, NULL, (int)_IOLBF, 0);
#endif
	logfile = f;
	FUNC5(&log_lock);
}