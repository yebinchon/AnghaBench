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
struct daemon {int dummy; } ;
struct config_file {scalar_t__ do_daemonize; scalar_t__ use_systemd; int /*<<< orphan*/ * logfile; scalar_t__ use_syslog; scalar_t__ verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct daemon*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct config_file*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC5(struct daemon* daemon, struct config_file* cfg, 
	int cmdline_verbose, int debug_mode, const char* log_default_identity)
{
	/* apply if they have changed */
	verbosity = cmdline_verbose + cfg->verbosity;
	if (debug_mode > 1) {
		cfg->use_syslog = 0;
		FUNC2(cfg->logfile);
		cfg->logfile = NULL;
	}
	FUNC1(daemon, cfg);
	FUNC0(cfg);

	if (cfg->use_systemd && cfg->do_daemonize) {
		FUNC4("use-systemd and do-daemonize should not be enabled at the same time");
	}

	FUNC3(cfg, log_default_identity);
}