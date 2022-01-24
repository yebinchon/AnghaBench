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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* AUDITFILTERD_CONFFILE ; 
 char* AUDITFILTERD_PIPEFILE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (int,struct stat*) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,int) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(int argc, char *argv[])
{
	const char *pipefile, *trailfile, *conffile;
	FILE *trail_fp, *conf_fp;
	struct stat sb;
	int pipe_fd;
	int ch;

	conffile = AUDITFILTERD_CONFFILE;
	trailfile = NULL;
	pipefile = NULL;
	while ((ch = FUNC11(argc, argv, "c:dp:t:")) != -1) {
		switch (ch) {
		case 'c':
			conffile = optarg;
			break;

		case 'd':
			debug++;
			break;

		case 't':
			if (trailfile != NULL || pipefile != NULL)
				FUNC16();
			trailfile = optarg;
			break;

		case 'p':
			if (pipefile != NULL || trailfile != NULL)
				FUNC16();
			pipefile = optarg;
			break;

		default:
			FUNC16();
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 0)
		FUNC16();

	/*
	 * We allow only one of a pipe or a trail to be used.  If none is
	 * specified, we provide a default pipe path.
	 */
	if (pipefile == NULL && trailfile == NULL)
		pipefile = AUDITFILTERD_PIPEFILE;

	if (pipefile != NULL) {
		pipe_fd = FUNC14(pipefile, O_RDONLY);
		if (pipe_fd < 0)
			FUNC5(-1, "open:%s", pipefile);
		if (FUNC10(pipe_fd, &sb) < 0)
			FUNC5(-1, "stat: %s", pipefile);
		if (!FUNC0(sb.st_mode))
			FUNC6(-1, "fstat: %s not device", pipefile);
	} else {
		trail_fp = FUNC9(trailfile, "r");
		if (trail_fp == NULL)
			FUNC5(-1, "%s", trailfile);
	}

	conf_fp = FUNC9(conffile, "r");
	if (conf_fp == NULL)
		FUNC5(-1, "%s", conffile);

	FUNC3();
	if (FUNC1(conffile, conf_fp) < 0)
		FUNC7(-1);
	FUNC8(conf_fp);

	if (!debug) {
		if (FUNC4(0, 0) < 0)
			FUNC5(-1, "daemon");
	}

	FUNC15(SIGHUP, signal_handler);
	FUNC15(SIGINT, signal_handler);
	FUNC15(SIGQUIT, signal_handler);
	FUNC15(SIGTERM, signal_handler);

	if (pipefile != NULL)
		FUNC13(conffile, pipefile, pipe_fd);
	else
		FUNC12(conffile, trailfile, trail_fp);

	FUNC2();
	return (0);
}