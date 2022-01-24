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
 char* Cdir ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int EX_OK ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  LOG_AUTH ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  O_WRONLY ; 
 unsigned long VERIEXEC_ACTIVE ; 
 unsigned long VERIEXEC_DEBUG_OFF ; 
 unsigned long VERIEXEC_DEBUG_ON ; 
 unsigned long VERIEXEC_ENFORCE ; 
 unsigned long VERIEXEC_GETSTATE ; 
 unsigned long VERIEXEC_GETVERSION ; 
 unsigned long VERIEXEC_LOCK ; 
 unsigned long VERIEXEC_STATE_ACTIVE ; 
 unsigned long VERIEXEC_STATE_ENFORCE ; 
 unsigned long VERIEXEC_STATE_LOADED ; 
 unsigned long VERIEXEC_STATE_LOCKED ; 
 int /*<<< orphan*/  Verbose ; 
 int VeriexecVersion ; 
 int /*<<< orphan*/  _PATH_DEV_VERIEXEC ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  dev_fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

int
FUNC16(int argc, char *argv[])
{
	unsigned long ctl;
	int c;
	int x;

	dev_fd = FUNC7(_PATH_DEV_VERIEXEC, O_WRONLY, 0);

	while ((c = FUNC4(argc, argv, "C:i:x:vz:")) != -1) {
		switch (c) {
		case 'C':
			Cdir = optarg;
			break;
		case 'i':
			if (dev_fd < 0) {
				FUNC1(EX_UNAVAILABLE, "cannot open veriexec");
			}
			if (FUNC6(dev_fd, VERIEXEC_GETSTATE, &x)) {
				FUNC1(EX_UNAVAILABLE,
				    "Cannot get veriexec state");
			}
			switch (optarg[0]) {
			case 'a':	/* active */
				ctl = VERIEXEC_STATE_ACTIVE;
				break;
			case 'e':	/* enforce */
				ctl = VERIEXEC_STATE_ENFORCE;
				break;
			case 'l':	/* loaded/locked */
				ctl = (FUNC10(optarg, "lock", 4)) ?
				    VERIEXEC_STATE_LOCKED :
				    VERIEXEC_STATE_LOADED;
				break;
			default:
				FUNC2(EX_USAGE, "unknown state %s", optarg);
				break;
			}
			FUNC3((x & ctl) == 0);
			break;
		case 'v':
			Verbose++;
			break;
		case 'x':
			/*
			 * -x says all other args are paths to check.
			 */
			for (x = 0; optind < argc; optind++) {
				if (FUNC13(argv[optind])) {
					FUNC15("%s", argv[optind]);
					x = 2;
				}
			}
			FUNC3(x);
			break;
		case 'z':
			switch (optarg[0]) {
			case 'a':	/* active */
				ctl = VERIEXEC_ACTIVE;
				break;
			case 'd':	/* debug* */
				ctl = (FUNC11(optarg, "off")) ?
				    VERIEXEC_DEBUG_OFF : VERIEXEC_DEBUG_ON;
				if (optind < argc && ctl == VERIEXEC_DEBUG_ON) {
					x = FUNC0(argv[optind]);
					if (x == 0)
						ctl = VERIEXEC_DEBUG_OFF;
				}
				break;
			case 'e':	/* enforce */
				ctl = VERIEXEC_ENFORCE;
				break;
			case 'g':
				ctl = VERIEXEC_GETSTATE; /* get state */
				break;
			case 'l':	/* lock */
				ctl = VERIEXEC_LOCK;
				break;
			default:
				FUNC2(EX_USAGE, "unknown command %s", optarg);
				break;
			}
			if (dev_fd < 0) {
				FUNC1(EX_UNAVAILABLE, "cannot open veriexec");
			}
			if (FUNC6(dev_fd, ctl, &x)) {
				FUNC1(EX_UNAVAILABLE, "cannot %s veriexec", optarg);
			}
			if (ctl == VERIEXEC_DEBUG_ON ||
			    ctl == VERIEXEC_DEBUG_OFF) {
				FUNC9("debug is: %d\n", x);
			} else if (ctl == VERIEXEC_GETSTATE) {
				FUNC9("%#o\n", x);
			}
			FUNC3(EX_OK);
			break;
		}
	}
	FUNC8(FUNC5(), LOG_PID, LOG_AUTH);
	if (FUNC12() < 1)
		FUNC2(EX_OSFILE, "cannot initialize trust store");
#ifdef VERIEXEC_GETVERSION
	if (ioctl(dev_fd, VERIEXEC_GETVERSION, &VeriexecVersion)) {
		VeriexecVersion = 0;	/* unknown */
	}
#endif

	for (; optind < argc; optind++) {
		if (FUNC14(argv[optind])) {
			FUNC1(EX_DATAERR, "cannot load %s", argv[optind]);
		}
	}
	FUNC3(EX_OK);
}