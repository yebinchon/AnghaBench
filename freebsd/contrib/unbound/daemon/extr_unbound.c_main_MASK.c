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
typedef  int /*<<< orphan*/  lock_quick_type ;

/* Variables and functions */
 char* CONFIGFILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int,char const*,int) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,int,int) ; 

int 
FUNC10(int argc, char* argv[])
{
	int c;
	const char* cfgfile = CONFIGFILE;
	const char* winopt = NULL;
	const char* log_ident_default;
	int cmdline_verbose = 0;
	int debug_mode = 0;
	int need_pidfile = 1;

#ifdef UB_ON_WINDOWS
	int cmdline_cfg = 0;
#endif

	FUNC5(NULL, 0, NULL);
	log_ident_default = FUNC7(argv[0],'/')?FUNC7(argv[0],'/')+1:argv[0];
	FUNC4(log_ident_default);
	/* parse the options */
	while( (c=FUNC1(argc, argv, "c:dhpvw:")) != -1) {
		switch(c) {
		case 'c':
			cfgfile = optarg;
#ifdef UB_ON_WINDOWS
			cmdline_cfg = 1;
#endif
			break;
		case 'v':
			cmdline_verbose++;
			verbosity++;
			break;
		case 'p':
			need_pidfile = 0;
			break;
		case 'd':
			debug_mode++;
			break;
		case 'w':
			winopt = optarg;
			break;
		case '?':
		case 'h':
		default:
			FUNC8();
			return 1;
		}
	}
	argc -= optind;
	/* argv += optind; not using further arguments */

	if(winopt) {
#ifdef UB_ON_WINDOWS
		wsvc_command_option(winopt, cfgfile, cmdline_verbose, 
			cmdline_cfg);
#else
		FUNC0("option not supported");
#endif
	}

	if(argc != 0) {
		FUNC8();
		return 1;
	}

	FUNC6(cfgfile, cmdline_verbose, debug_mode, log_ident_default, need_pidfile);
	FUNC5(NULL, 0, NULL); /* close logfile */
#ifndef unbound_testbound
	if(FUNC3()) {
		FUNC2((lock_quick_type*)FUNC3());
	}
#endif
	return 0;
}