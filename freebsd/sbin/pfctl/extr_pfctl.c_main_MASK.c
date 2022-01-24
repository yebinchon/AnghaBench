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
typedef  int /*<<< orphan*/  anchorname ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int PFCTL_FLAG_ALTQ ; 
 int PFCTL_FLAG_FILTER ; 
 int PFCTL_FLAG_NAT ; 
 int PFCTL_FLAG_OPTION ; 
 int PFCTL_FLAG_TABLE ; 
 int PFCTL_SHOW_LABELS ; 
 int PFCTL_SHOW_NOTHING ; 
 int PFCTL_SHOW_RULES ; 
 int /*<<< orphan*/  PF_DEBUG_MISC ; 
 int /*<<< orphan*/  PF_DEBUG_NOISY ; 
 int /*<<< orphan*/  PF_DEBUG_NONE ; 
 int /*<<< orphan*/  PF_DEBUG_URGENT ; 
 int PF_OPTIMIZE_BASIC ; 
 int PF_OPTIMIZE_PROFILE ; 
 int PF_OPT_CLRRULECTRS ; 
 int PF_OPT_DEBUG ; 
 int PF_OPT_DISABLE ; 
 int PF_OPT_DUMMYACTION ; 
 int PF_OPT_ENABLE ; 
 int PF_OPT_MERGE ; 
 int PF_OPT_NOACTION ; 
 int PF_OPT_NUMERIC ; 
 int PF_OPT_OPTIMIZE ; 
 int PF_OPT_QUIET ; 
 int PF_OPT_RECURSE ; 
 int PF_OPT_SHOWALL ; 
 int PF_OPT_USEDNS ; 
 int PF_OPT_VERBOSE ; 
 int PF_OPT_VERBOSE2 ; 
 int /*<<< orphan*/  PF_OSFP_FILE ; 
 int altqsupport ; 
 char* anchoropt ; 
 char* FUNC0 (int,int) ; 
 int* clearopt ; 
 int /*<<< orphan*/  clearopt_list ; 
 int* debugopt ; 
 int /*<<< orphan*/  debugopt_list ; 
 int dev ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 char* ifaceopt ; 
 int loadopt ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int) ; 
 char* optarg ; 
 int optind ; 
 int* optiopt ; 
 int /*<<< orphan*/  optiopt_list ; 
 char* pf_device ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int,char**,char*,int*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int,int) ; 
 scalar_t__ FUNC20 (int,int) ; 
 scalar_t__ FUNC21 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int,int) ; 
 void* FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int,char*,int) ; 
 scalar_t__ FUNC29 (int,char*,int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (char*,int) ; 
 int /*<<< orphan*/  FUNC34 (int,int) ; 
 int /*<<< orphan*/  FUNC35 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC36 (int,char*,int,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (int,int) ; 
 int /*<<< orphan*/  FUNC39 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC40 (int,int) ; 
 int /*<<< orphan*/  FUNC41 (char*,int) ; 
 int /*<<< orphan*/  FUNC42 (int,int) ; 
 int FUNC43 (int,int) ; 
 char* rulesopt ; 
 int* showopt ; 
 int /*<<< orphan*/  showopt_list ; 
 char** src_node_kill ; 
 int src_node_killers ; 
 char** state_kill ; 
 int state_killers ; 
 scalar_t__ FUNC44 (char*,int) ; 
 int /*<<< orphan*/  FUNC45 (char*,char*) ; 
 int FUNC46 (char*,char*,int) ; 
 int FUNC47 (char*) ; 
 int /*<<< orphan*/ * FUNC48 (char*,char*) ; 
 char* tableopt ; 
 int* tblcmdopt ; 
 int /*<<< orphan*/  tblcmdopt_list ; 
 int /*<<< orphan*/  FUNC49 () ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC51 (char*,...) ; 

int
FUNC52(int argc, char *argv[])
{
	int	 error = 0;
	int	 ch;
	int	 mode = O_RDONLY;
	int	 opts = 0;
	int	 optimize = PF_OPTIMIZE_BASIC;
	char	 anchorname[MAXPATHLEN];
	char	*path;

	if (argc < 2)
		FUNC49();

	while ((ch = FUNC4(argc, argv,
	    "a:AdD:eqf:F:ghi:k:K:mnNOo:Pp:rRs:t:T:vx:z")) != -1) {
		switch (ch) {
		case 'a':
			anchoropt = optarg;
			break;
		case 'd':
			opts |= PF_OPT_DISABLE;
			mode = O_RDWR;
			break;
		case 'D':
			if (FUNC16(optarg) < 0)
				FUNC51("could not parse macro definition %s",
				    optarg);
			break;
		case 'e':
			opts |= PF_OPT_ENABLE;
			mode = O_RDWR;
			break;
		case 'q':
			opts |= PF_OPT_QUIET;
			break;
		case 'F':
			clearopt = FUNC27(optarg, clearopt_list);
			if (clearopt == NULL) {
				FUNC51("Unknown flush modifier '%s'", optarg);
				FUNC49();
			}
			mode = O_RDWR;
			break;
		case 'i':
			ifaceopt = optarg;
			break;
		case 'k':
			if (state_killers >= 2) {
				FUNC51("can only specify -k twice");
				FUNC49();
				/* NOTREACHED */
			}
			state_kill[state_killers++] = optarg;
			mode = O_RDWR;
			break;
		case 'K':
			if (src_node_killers >= 2) {
				FUNC51("can only specify -K twice");
				FUNC49();
				/* NOTREACHED */
			}
			src_node_kill[src_node_killers++] = optarg;
			mode = O_RDWR;
			break;
		case 'm':
			opts |= PF_OPT_MERGE;
			break;
		case 'n':
			opts |= PF_OPT_NOACTION;
			break;
		case 'N':
			loadopt |= PFCTL_FLAG_NAT;
			break;
		case 'r':
			opts |= PF_OPT_USEDNS;
			break;
		case 'f':
			rulesopt = optarg;
			mode = O_RDWR;
			break;
		case 'g':
			opts |= PF_OPT_DEBUG;
			break;
		case 'A':
			loadopt |= PFCTL_FLAG_ALTQ;
			break;
		case 'R':
			loadopt |= PFCTL_FLAG_FILTER;
			break;
		case 'o':
			optiopt = FUNC27(optarg, optiopt_list);
			if (optiopt == NULL) {
				FUNC51("Unknown optimization '%s'", optarg);
				FUNC49();
			}
			opts |= PF_OPT_OPTIMIZE;
			break;
		case 'O':
			loadopt |= PFCTL_FLAG_OPTION;
			break;
		case 'p':
			pf_device = optarg;
			break;
		case 'P':
			opts |= PF_OPT_NUMERIC;
			break;
		case 's':
			showopt = FUNC27(optarg, showopt_list);
			if (showopt == NULL) {
				FUNC51("Unknown show modifier '%s'", optarg);
				FUNC49();
			}
			break;
		case 't':
			tableopt = optarg;
			break;
		case 'T':
			tblcmdopt = FUNC27(optarg, tblcmdopt_list);
			if (tblcmdopt == NULL) {
				FUNC51("Unknown table command '%s'", optarg);
				FUNC49();
			}
			break;
		case 'v':
			if (opts & PF_OPT_VERBOSE)
				opts |= PF_OPT_VERBOSE2;
			opts |= PF_OPT_VERBOSE;
			break;
		case 'x':
			debugopt = FUNC27(optarg, debugopt_list);
			if (debugopt == NULL) {
				FUNC51("Unknown debug level '%s'", optarg);
				FUNC49();
			}
			mode = O_RDWR;
			break;
		case 'z':
			opts |= PF_OPT_CLRRULECTRS;
			mode = O_RDWR;
			break;
		case 'h':
			/* FALLTHROUGH */
		default:
			FUNC49();
			/* NOTREACHED */
		}
	}

	if (tblcmdopt != NULL) {
		argc -= optind;
		argv += optind;
		ch = *tblcmdopt;
		if (ch == 'l') {
			loadopt |= PFCTL_FLAG_TABLE;
			tblcmdopt = NULL;
		} else
			mode = FUNC44("acdefkrz", ch) ? O_RDWR : O_RDONLY;
	} else if (argc != optind) {
		FUNC51("unknown command line argument: %s ...", argv[optind]);
		FUNC49();
		/* NOTREACHED */
	}
	if (loadopt == 0)
		loadopt = ~0;

	if ((path = FUNC0(1, MAXPATHLEN)) == NULL)
		FUNC2(1, "pfctl: calloc");
	FUNC5(anchorname, 0, sizeof(anchorname));
	if (anchoropt != NULL) {
		int len = FUNC47(anchoropt);

		if (anchoropt[len - 1] == '*') {
			if (len >= 2 && anchoropt[len - 2] == '/')
				anchoropt[len - 2] = '\0';
			else
				anchoropt[len - 1] = '\0';
			opts |= PF_OPT_RECURSE;
		}
		if (FUNC46(anchorname, anchoropt,
		    sizeof(anchorname)) >= sizeof(anchorname))
			FUNC2(1, "anchor name '%s' too long",
			    anchoropt);
		loadopt &= PFCTL_FLAG_FILTER|PFCTL_FLAG_NAT|PFCTL_FLAG_TABLE;
	}

	if ((opts & PF_OPT_NOACTION) == 0) {
		dev = FUNC6(pf_device, mode);
		if (dev == -1)
			FUNC1(1, "%s", pf_device);
		altqsupport = FUNC43(dev, opts);
	} else {
		dev = FUNC6(pf_device, O_RDONLY);
		if (dev >= 0)
			opts |= PF_OPT_DUMMYACTION;
		/* turn off options */
		opts &= ~ (PF_OPT_DISABLE | PF_OPT_ENABLE);
		clearopt = showopt = debugopt = NULL;
#if !defined(ENABLE_ALTQ)
		altqsupport = 0;
#else
		altqsupport = 1;
#endif
	}

	if (opts & PF_OPT_DISABLE)
		if (FUNC19(dev, opts))
			error = 1;

	if (showopt != NULL) {
		switch (*showopt) {
		case 'A':
			FUNC31(dev, opts, anchorname);
			break;
		case 'r':
			FUNC26(dev, opts);
			FUNC36(dev, path, opts, PFCTL_SHOW_RULES,
			    anchorname, 0);
			break;
		case 'l':
			FUNC26(dev, opts);
			FUNC36(dev, path, opts, PFCTL_SHOW_LABELS,
			    anchorname, 0);
			break;
		case 'n':
			FUNC26(dev, opts);
			FUNC35(dev, opts, anchorname);
			break;
		case 'q':
			FUNC30(dev, ifaceopt, opts,
			    opts & PF_OPT_VERBOSE2);
			break;
		case 's':
			FUNC39(dev, ifaceopt, opts);
			break;
		case 'S':
			FUNC38(dev, opts);
			break;
		case 'i':
			FUNC40(dev, opts);
			break;
		case 'R':
			error = FUNC37(dev);
			break;
		case 't':
			FUNC42(dev, opts);
			break;
		case 'm':
			FUNC34(dev, opts);
			break;
		case 'a':
			opts |= PF_OPT_SHOWALL;
			FUNC26(dev, opts);

			FUNC35(dev, opts, anchorname);
			FUNC36(dev, path, opts, 0, anchorname, 0);
			FUNC30(dev, ifaceopt, opts, 0);
			FUNC39(dev, ifaceopt, opts);
			FUNC38(dev, opts);
			FUNC40(dev, opts);
			FUNC36(dev, path, opts, 1, anchorname, 0);
			FUNC42(dev, opts);
			FUNC34(dev, opts);
			FUNC41(anchorname, opts);
			FUNC32(opts);
			break;
		case 'T':
			FUNC41(anchorname, opts);
			break;
		case 'o':
			FUNC26(dev, opts);
			FUNC32(opts);
			break;
		case 'I':
			FUNC33(ifaceopt, opts);
			break;
		}
	}

	if ((opts & PF_OPT_CLRRULECTRS) && showopt == NULL)
		FUNC36(dev, path, opts, PFCTL_SHOW_NOTHING,
		    anchorname, 0);

	if (clearopt != NULL) {
		if (anchorname[0] == '_' || FUNC48(anchorname, "/_") != NULL)
			FUNC2(1, "anchor names beginning with '_' cannot "
			    "be modified from the command line");

		switch (*clearopt) {
		case 'r':
			FUNC11(dev, opts, anchorname);
			break;
		case 'n':
			FUNC10(dev, opts, anchorname);
			break;
		case 'q':
			FUNC7(dev, opts);
			break;
		case 's':
			FUNC13(dev, ifaceopt, opts);
			break;
		case 'S':
			FUNC12(dev, opts);
			break;
		case 'i':
			FUNC14(dev, opts);
			break;
		case 'a':
			FUNC11(dev, opts, anchorname);
			FUNC10(dev, opts, anchorname);
			FUNC15(anchorname, opts);
			if (!*anchorname) {
				FUNC7(dev, opts);
				FUNC13(dev, ifaceopt, opts);
				FUNC12(dev, opts);
				FUNC14(dev, opts);
				FUNC8(dev, opts);
				FUNC9(dev, opts);
			}
			break;
		case 'o':
			FUNC8(dev, opts);
			break;
		case 'T':
			FUNC15(anchorname, opts);
			break;
		}
	}
	if (state_killers) {
		if (!FUNC45(state_kill[0], "label"))
			FUNC25(dev, ifaceopt, opts);
		else if (!FUNC45(state_kill[0], "id"))
			FUNC23(dev, ifaceopt, opts);
		else
			FUNC28(dev, ifaceopt, opts);
	}

	if (src_node_killers)
		FUNC24(dev, ifaceopt, opts);

	if (tblcmdopt != NULL) {
		error = FUNC17(argc, argv, tableopt,
		    tblcmdopt, rulesopt, anchorname, opts);
		rulesopt = NULL;
	}
	if (optiopt != NULL) {
		switch (*optiopt) {
		case 'n':
			optimize = 0;
			break;
		case 'b':
			optimize |= PF_OPTIMIZE_BASIC;
			break;
		case 'o':
		case 'p':
			optimize |= PF_OPTIMIZE_PROFILE;
			break;
		}
	}

	if ((rulesopt != NULL) && (loadopt & PFCTL_FLAG_OPTION) &&
	    !anchorname[0] && !(opts & PF_OPT_NOACTION))
		if (FUNC22())
			error = 1;

	if (rulesopt != NULL && !(opts & (PF_OPT_MERGE|PF_OPT_NOACTION)) &&
	    !anchorname[0] && (loadopt & PFCTL_FLAG_OPTION))
		if (FUNC21(dev, opts, PF_OSFP_FILE))
			error = 1;

	if (rulesopt != NULL) {
		if (anchorname[0] == '_' || FUNC48(anchorname, "/_") != NULL)
			FUNC2(1, "anchor names beginning with '_' cannot "
			    "be modified from the command line");
		if (FUNC29(dev, rulesopt, opts, optimize,
		    anchorname, NULL))
			error = 1;
		else if (!(opts & PF_OPT_NOACTION) &&
		    (loadopt & PFCTL_FLAG_TABLE))
			FUNC50(NULL);
	}

	if (opts & PF_OPT_ENABLE)
		if (FUNC20(dev, opts))
			error = 1;

	if (debugopt != NULL) {
		switch (*debugopt) {
		case 'n':
			FUNC18(dev, PF_DEBUG_NONE, opts);
			break;
		case 'u':
			FUNC18(dev, PF_DEBUG_URGENT, opts);
			break;
		case 'm':
			FUNC18(dev, PF_DEBUG_MISC, opts);
			break;
		case 'l':
			FUNC18(dev, PF_DEBUG_NOISY, opts);
			break;
		}
	}

	FUNC3(error);
}