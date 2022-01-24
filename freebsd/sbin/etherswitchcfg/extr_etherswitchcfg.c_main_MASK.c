#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  es_nvlangroups; int /*<<< orphan*/  es_nports; } ;
struct cfg {char* controlfile; scalar_t__ fd; int mode; TYPE_1__ info; int /*<<< orphan*/  unit; TYPE_1__ conf; int /*<<< orphan*/  verbose; int /*<<< orphan*/  mediatypes; } ;
typedef  int /*<<< orphan*/  cfg ;
struct TYPE_4__ {char* name; int mode; int args; int (* f ) (struct cfg*,int,char**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IOETHERSWITCHGETCONF ; 
 int /*<<< orphan*/  IOETHERSWITCHGETINFO ; 
#define  MODE_ATU 134 
#define  MODE_CONFIG 133 
#define  MODE_NONE 132 
#define  MODE_PHYREG 131 
#define  MODE_PORT 130 
#define  MODE_REGISTER 129 
#define  MODE_VLANGROUP 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct cfg*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__* cmds ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg*,int const) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (struct cfg*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfg*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfg*,char*) ; 
 int FUNC12 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (struct cfg*,int,char**) ; 
 int /*<<< orphan*/  FUNC15 (struct cfg*,char**) ; 

int
FUNC16(int argc, char *argv[])
{
	int ch;
	struct cfg cfg;
	int i;
	
	FUNC0(&cfg, sizeof(cfg));
	cfg.controlfile = "/dev/etherswitch0";
	while ((ch = FUNC4(argc, argv, "f:mv?")) != -1)
		switch(ch) {
		case 'f':
			cfg.controlfile = optarg;
			break;
		case 'm':
			cfg.mediatypes++;
			break;
		case 'v':
			cfg.verbose++;
			break;
		case '?':
			/* FALLTHROUGH */
		default:
			FUNC15(&cfg, argv);
		}
	argc -= optind;
	argv += optind;
	cfg.fd = FUNC7(cfg.controlfile, O_RDONLY);
	if (cfg.fd < 0)
		FUNC2(EX_UNAVAILABLE, "Can't open control file: %s", cfg.controlfile);
	if (FUNC5(cfg.fd, IOETHERSWITCHGETINFO, &cfg.info) != 0)
		FUNC2(EX_OSERR, "ioctl(IOETHERSWITCHGETINFO)");
	if (FUNC5(cfg.fd, IOETHERSWITCHGETCONF, &cfg.conf) != 0)
		FUNC2(EX_OSERR, "ioctl(IOETHERSWITCHGETCONF)");
	if (argc == 0) {
		FUNC8(&cfg);
		return (0);
	}
	cfg.mode = MODE_NONE;
	while (argc > 0) {
		switch(cfg.mode) {
		case MODE_NONE:
			if (FUNC13(argv[0], "info") == 0) {
				FUNC8(&cfg);
			} else if (FUNC12(argv[0], "port%d", &cfg.unit) == 1) {
				if (cfg.unit < 0 || cfg.unit >= cfg.info.es_nports)
					FUNC3(EX_USAGE, "port unit must be between 0 and %d", cfg.info.es_nports - 1);
				FUNC6(&cfg, MODE_PORT);
			} else if (FUNC12(argv[0], "vlangroup%d", &cfg.unit) == 1) {
				if (cfg.unit < 0 || cfg.unit >= cfg.info.es_nvlangroups)
					FUNC3(EX_USAGE,
					    "vlangroup unit must be between 0 and %d",
					    cfg.info.es_nvlangroups - 1);
				FUNC6(&cfg, MODE_VLANGROUP);
			} else if (FUNC13(argv[0], "config") == 0) {
				FUNC6(&cfg, MODE_CONFIG);
			} else if (FUNC13(argv[0], "phy") == 0) {
				FUNC6(&cfg, MODE_PHYREG);
			} else if (FUNC13(argv[0], "reg") == 0) {
				FUNC6(&cfg, MODE_REGISTER);
			} else if (FUNC13(argv[0], "help") == 0) {
				FUNC15(&cfg, argv);
			} else if (FUNC13(argv[0], "atu") == 0) {
				FUNC6(&cfg, MODE_ATU);
			} else {
				FUNC3(EX_USAGE, "Unknown command \"%s\"", argv[0]);
			}
			break;
		case MODE_PORT:
		case MODE_CONFIG:
		case MODE_VLANGROUP:
		case MODE_ATU:
			for(i=0; cmds[i].name != NULL; i++) {
				int r;
				if (cfg.mode == cmds[i].mode &&
				    FUNC13(argv[0], cmds[i].name) == 0) {
					if ((cmds[i].args != -1) &&
					    (argc < (cmds[i].args + 1))) {
						FUNC9("%s needs %d argument%s\n",
						    cmds[i].name, cmds[i].args,
						    (cmds[i].args==1)?"":",");
						break;
					}

					r = (cmds[i].f)(&cfg, argc, argv);

					/* -1 here means "error" */
					if (r == -1) {
						argc = 0;
						break;
					}

					/* Legacy return value */
					if (r == 0)
						r = cmds[i].args;

					argc -= r;
					argv += r;
					break;
				}
			}
			if (cmds[i].name == NULL) {
				FUNC6(&cfg, MODE_NONE);
				continue;
			}
			break;
		case MODE_REGISTER:
			if (FUNC11(&cfg, argv[0]) != 0) {
				FUNC6(&cfg, MODE_NONE);
				continue;
			}
			break;
		case MODE_PHYREG:
			if (FUNC10(&cfg, argv[0]) != 0) {
				FUNC6(&cfg, MODE_NONE);
				continue;
			}
			break;
		}
		argc--;
		argv++;
	}
	/* switch back to command mode to print configuration for last command */
	FUNC6(&cfg, MODE_NONE);
	FUNC1(cfg.fd);
	return (0);
}