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
struct daemon {scalar_t__ pidfile; int /*<<< orphan*/  chroot; int /*<<< orphan*/  need_to_exit; } ;
struct config_file {int /*<<< orphan*/  chrootdir; int /*<<< orphan*/  logfile; int /*<<< orphan*/  use_syslog; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PACKAGE_STRING ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 (struct daemon*,struct config_file*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct config_file* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct config_file*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC7 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC8 (struct daemon*) ; 
 struct daemon* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct daemon*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct daemon*,struct config_file*,int,char const**,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void 
FUNC18(const char* cfgfile, int cmdline_verbose, int debug_mode, const char* log_default_identity, int need_pidfile)
{
	struct config_file* cfg = NULL;
	struct daemon* daemon = NULL;
	int done_setup = 0;

	if(!(daemon = FUNC9()))
		FUNC11("alloc failure");
	while(!daemon->need_to_exit) {
		if(done_setup)
			FUNC17(VERB_OPS, "Restart of %s.", PACKAGE_STRING);
		else	FUNC17(VERB_OPS, "Start of %s.", PACKAGE_STRING);

		/* config stuff */
		if(!(cfg = FUNC2()))
			FUNC11("Could not alloc config defaults");
		if(!FUNC5(cfg, cfgfile, daemon->chroot)) {
			if(errno != ENOENT)
				FUNC11("Could not read config file: %s."
					" Maybe try unbound -dd, it stays on "
					"the commandline to see more errors, "
					"or unbound-checkconf", cfgfile);
			FUNC13("Continuing with default config settings");
		}
		FUNC0(daemon, cfg, cmdline_verbose, debug_mode, log_default_identity);
		if(!done_setup)
			FUNC4(cfg);
	
		/* prepare */
		if(!FUNC10(daemon))
			FUNC11("could not open ports");
		if(!done_setup) { 
			FUNC15(daemon, cfg, debug_mode, &cfgfile, need_pidfile);
			done_setup = 1; 
		} else {
			/* reopen log after HUP to facilitate log rotation */
			if(!cfg->use_syslog)
				FUNC12(cfg->logfile, 0, cfg->chrootdir);
		}
		/* work */
		FUNC8(daemon);

		/* clean up for restart */
		FUNC17(VERB_ALGO, "cleanup.");
		FUNC6(daemon);
		FUNC3(cfg);
	}
	FUNC17(VERB_ALGO, "Exit cleanup.");
	/* this unlink may not work if the pidfile is located outside
	 * of the chroot/workdir or we no longer have permissions */
	if(daemon->pidfile) {
		int fd;
		/* truncate pidfile */
		fd = FUNC14(daemon->pidfile, O_WRONLY | O_TRUNC, 0644);
		if(fd != -1)
			FUNC1(fd);
		/* delete pidfile */
		FUNC16(daemon->pidfile);
	}
	FUNC7(daemon);
}