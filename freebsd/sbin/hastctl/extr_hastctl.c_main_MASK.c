#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nv {int dummy; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  hc_controladdr; } ;

/* Variables and functions */
#define  CMD_CREATE 132 
#define  CMD_DUMP 131 
#define  CMD_LIST 130 
#define  CMD_ROLE 129 
#define  CMD_STATUS 128 
 int EX_CONFIG ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  HASTCTL_CMD_SETROLE ; 
 int /*<<< orphan*/  HASTCTL_CMD_STATUS ; 
 int /*<<< orphan*/  HAST_ROLE_INIT ; 
 int /*<<< orphan*/  HAST_ROLE_PRIMARY ; 
 int /*<<< orphan*/  HAST_ROLE_SECONDARY ; 
 int /*<<< orphan*/  HAST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PJDLOG_MODE_STD ; 
 TYPE_1__* cfg ; 
 int /*<<< orphan*/  cfgpath ; 
 int /*<<< orphan*/  FUNC2 (int,char**,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int FUNC4 (struct nv*) ; 
 int FUNC5 (struct nv*,char*) ; 
 int FUNC6 (struct nv*) ; 
 int /*<<< orphan*/  controlconn ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC11 (int,char**,char const*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct nv**) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nv*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct nv*) ; 
 int FUNC18 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct nv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 TYPE_1__* FUNC28 (int /*<<< orphan*/ ,int) ; 

int
FUNC29(int argc, char *argv[])
{
	struct nv *nv;
	int64_t mediasize, extentsize, keepdirty;
	int cmd, debug, error, ii;
	const char *optstr;

	debug = 0;
	mediasize = extentsize = keepdirty = 0;

	if (argc == 1)
		FUNC27();

	if (FUNC26(argv[1], "create") == 0) {
		cmd = CMD_CREATE;
		optstr = "c:de:k:m:h";
	} else if (FUNC26(argv[1], "role") == 0) {
		cmd = CMD_ROLE;
		optstr = "c:dh";
	} else if (FUNC26(argv[1], "list") == 0) {
		cmd = CMD_LIST;
		optstr = "c:dh";
	} else if (FUNC26(argv[1], "status") == 0) {
		cmd = CMD_STATUS;
		optstr = "c:dh";
	} else if (FUNC26(argv[1], "dump") == 0) {
		cmd = CMD_DUMP;
		optstr = "c:dh";
	} else
		FUNC27();

	argc--;
	argv++;

	for (;;) {
		int ch;

		ch = FUNC11(argc, argv, optstr);
		if (ch == -1)
			break;
		switch (ch) {
		case 'c':
			cfgpath = optarg;
			break;
		case 'd':
			debug++;
			break;
		case 'e':
			if (FUNC10(optarg, &extentsize) == -1)
				FUNC8(EX_USAGE, "Invalid extentsize");
			break;
		case 'k':
			if (FUNC10(optarg, &keepdirty) == -1)
				FUNC8(EX_USAGE, "Invalid keepdirty");
			break;
		case 'm':
			if (FUNC10(optarg, &mediasize) == -1)
				FUNC8(EX_USAGE, "Invalid mediasize");
			break;
		case 'h':
		default:
			FUNC27();
		}
	}
	argc -= optind;
	argv += optind;

	switch (cmd) {
	case CMD_CREATE:
	case CMD_ROLE:
		if (argc == 0)
			FUNC27();
		break;
	}

	FUNC23(PJDLOG_MODE_STD);
	FUNC20(debug);

	cfg = FUNC28(cfgpath, true);
	FUNC1(cfg != NULL);

	switch (cmd) {
	case CMD_CREATE:
		FUNC2(argc, argv, mediasize, extentsize, keepdirty);
		/* NOTREACHED */
		FUNC0("What are we doing here?!");
		break;
	case CMD_DUMP:
		/* Dump metadata from local component of the given resource. */
		FUNC3(argc, argv);
		/* NOTREACHED */
		FUNC0("What are we doing here?!");
		break;
	case CMD_ROLE:
		/* Change role for the given resources. */
		if (argc < 2)
			FUNC27();
		nv = FUNC16();
		FUNC15(nv, HASTCTL_CMD_SETROLE, "cmd");
		if (FUNC26(argv[0], "init") == 0)
			FUNC15(nv, HAST_ROLE_INIT, "role");
		else if (FUNC26(argv[0], "primary") == 0)
			FUNC15(nv, HAST_ROLE_PRIMARY, "role");
		else if (FUNC26(argv[0], "secondary") == 0)
			FUNC15(nv, HAST_ROLE_SECONDARY, "role");
		else
			FUNC27();
		for (ii = 0; ii < argc - 1; ii++)
			FUNC14(nv, argv[ii + 1], "resource%d", ii);
		break;
	case CMD_LIST:
	case CMD_STATUS:
		/* Obtain status of the given resources. */
		nv = FUNC16();
		FUNC15(nv, HASTCTL_CMD_STATUS, "cmd");
		if (argc == 0)
			FUNC14(nv, "all", "resource%d", 0);
		else {
			for (ii = 0; ii < argc; ii++)
				FUNC14(nv, argv[ii], "resource%d", ii);
		}
		break;
	default:
		FUNC0("Impossible command!");
	}

	/* Setup control connection... */
	if (FUNC24(NULL, cfg->hc_controladdr, &controlconn) == -1) {
		FUNC21(EX_OSERR,
		    "Unable to setup control connection to %s",
		    cfg->hc_controladdr);
	}
	/* ...and connect to hastd. */
	if (FUNC25(controlconn, HAST_TIMEOUT) == -1) {
		FUNC21(EX_OSERR, "Unable to connect to hastd via %s",
		    cfg->hc_controladdr);
	}

	if (FUNC7(NULL) != 0)
		FUNC9(EX_CONFIG);

	/* Send the command to the server... */
	if (FUNC13(NULL, controlconn, nv, NULL, 0) == -1) {
		FUNC21(EX_UNAVAILABLE,
		    "Unable to send command to hastd via %s",
		    cfg->hc_controladdr);
	}
	FUNC17(nv);
	/* ...and receive reply. */
	if (FUNC12(controlconn, &nv) == -1) {
		FUNC21(EX_UNAVAILABLE,
		    "cannot receive reply from hastd via %s",
		    cfg->hc_controladdr);
	}

	error = FUNC18(nv, "error");
	if (error != 0) {
		FUNC22(EX_SOFTWARE, "Error %d received from hastd.",
		    error);
	}
	FUNC19(nv, 0);

	switch (cmd) {
	case CMD_ROLE:
		error = FUNC5(nv, argv[0]);
		break;
	case CMD_LIST:
		error = FUNC4(nv);
		break;
	case CMD_STATUS:
		error = FUNC6(nv);
		break;
	default:
		FUNC0("Impossible command!");
	}

	FUNC9(error);
}