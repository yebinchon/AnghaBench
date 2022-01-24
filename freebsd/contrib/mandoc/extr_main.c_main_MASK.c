#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct winsize {int ws_col; } ;
struct tag_files {char* tagname; int /*<<< orphan*/  ofd; scalar_t__ tcpgid; int /*<<< orphan*/  ofn; } ;
struct TYPE_5__ {int synopsisonly; int width; int indent; char* tag; int /*<<< orphan*/  noval; } ;
struct TYPE_4__ {int /*<<< orphan*/ * paths; } ;
struct mansearch {char* outkey; int argmode; int outtype; char* os_s; char* arch; char* sec; int firstmatch; int /*<<< orphan*/  mp; int /*<<< orphan*/ * outdata; scalar_t__ wstop; TYPE_2__ output; TYPE_1__ manpath; int /*<<< orphan*/  os_e; TYPE_2__* outopts; } ;
struct manpage {char* file; char* names; char* output; size_t ipath; int sec; scalar_t__ form; scalar_t__ bits; } ;
struct manconf {char* outkey; int argmode; int outtype; char* os_s; char* arch; char* sec; int firstmatch; int /*<<< orphan*/  mp; int /*<<< orphan*/ * outdata; scalar_t__ wstop; TYPE_2__ output; TYPE_1__ manpath; int /*<<< orphan*/  os_e; TYPE_2__* outopts; } ;
struct curparse {char* outkey; int argmode; int outtype; char* os_s; char* arch; char* sec; int firstmatch; int /*<<< orphan*/  mp; int /*<<< orphan*/ * outdata; scalar_t__ wstop; TYPE_2__ output; TYPE_1__ manpath; int /*<<< orphan*/  os_e; TYPE_2__* outopts; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ pid_t ;
typedef  enum outmode { ____Placeholder_outmode } outmode ;
typedef  int /*<<< orphan*/  conf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* ARG_EXPR ; 
#define  ARG_FILE 135 
#define  ARG_NAME 134 
 void* ARG_WORD ; 
 char* BINM_APROPOS ; 
 char* BINM_MAKEWHATIS ; 
 char* BINM_MAN ; 
 char* BINM_WHATIS ; 
 scalar_t__ EINTR ; 
 scalar_t__ FORM_SRC ; 
 char* MACHINE ; 
 int /*<<< orphan*/  MANDOCERR_BADARG_BAD ; 
 int /*<<< orphan*/  MANDOCERR_BADARG_DUPE ; 
 int /*<<< orphan*/  MANDOCERR_BASE ; 
 int /*<<< orphan*/  MANDOCERR_OPEN ; 
 int /*<<< orphan*/  MANDOCERR_PLEDGE ; 
 int /*<<< orphan*/  MANDOCERR_WAIT ; 
 int /*<<< orphan*/  MANDOCERR_WRITE ; 
 int /*<<< orphan*/  MANDOCLEVEL_BADARG ; 
 scalar_t__ MANDOCLEVEL_OK ; 
 scalar_t__ MANDOCLEVEL_SYSERR ; 
 int MPARSE_LATIN1 ; 
 int MPARSE_MAN ; 
 int MPARSE_MDOC ; 
 int MPARSE_SO ; 
 int MPARSE_UTF8 ; 
 int MPARSE_VALIDATE ; 
 int OUTMODE_ALL ; 
 int OUTMODE_DEF ; 
 int OUTMODE_FLN ; 
 int OUTMODE_LST ; 
 int OUTMODE_ONE ; 
#define  OUTT_ASCII 133 
#define  OUTT_HTML 132 
 int OUTT_LINT ; 
#define  OUTT_LOCALE 131 
 int OUTT_MAN ; 
 int OUTT_MARKDOWN ; 
#define  OUTT_PDF 130 
#define  OUTT_PS 129 
 int OUTT_TREE ; 
#define  OUTT_UTF8 128 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  SANDBOX_NAMED ; 
 int SIGCONT ; 
 int SIGSTOP ; 
 int SIGTTIN ; 
 size_t SIZE_MAX ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct mansearch*,TYPE_1__*,int,char**,struct manpage**,size_t*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int,char**,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 char* FUNC19 () ; 
 char** help_argv ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC22 (unsigned char) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (unsigned char) ; 
 int /*<<< orphan*/  kSBXProfileNoInternet ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mansearch*) ; 
 int FUNC27 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct mansearch*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (char const*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 struct manpage* FUNC36 (struct manpage*,size_t,int) ; 
 void* FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int FUNC39 (int,char**) ; 
 int /*<<< orphan*/  FUNC40 (struct mansearch*,TYPE_1__*,int,char**,struct manpage**,size_t*) ; 
 int /*<<< orphan*/  FUNC41 (struct manpage*,size_t) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (struct mansearch*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int FUNC47 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ) ; 
 int FUNC49 (char*,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC50 (struct mansearch*) ; 
 int /*<<< orphan*/  FUNC51 (struct mansearch*,int,char const*) ; 
 int /*<<< orphan*/  FUNC52 (int,int) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *) ; 
 int FUNC54 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC55 (char*,char*) ; 
 int /*<<< orphan*/  FUNC56 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC58 (char*) ; 
 int FUNC59 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* sec_prios ; 
 int /*<<< orphan*/  FUNC60 (char const*) ; 
 scalar_t__ FUNC61 (struct tag_files*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC62 (char*,char) ; 
 scalar_t__ FUNC63 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC64 (char const*,char*) ; 
 char* FUNC65 (char*) ; 
 char* FUNC66 (scalar_t__) ; 
 size_t FUNC67 (char const*) ; 
 scalar_t__ FUNC68 (char const*,char*,size_t) ; 
 char* FUNC69 (char*,char) ; 
 int /*<<< orphan*/  FUNC70 (char**,char*) ; 
 struct tag_files* FUNC71 () ; 
 int /*<<< orphan*/  FUNC72 () ; 
 int /*<<< orphan*/  FUNC73 () ; 
 scalar_t__ FUNC74 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC75 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC76 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC77 (int) ; 
 scalar_t__ FUNC78 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC79 (char*) ; 
 int FUNC80 (struct mansearch*,char*) ; 

int
FUNC81(int argc, char *argv[])
{
	struct manconf	 conf;
	struct mansearch search;
	struct curparse	 curp;
	struct winsize	 ws;
	struct tag_files *tag_files;
	struct manpage	*res, *resp;
	const char	*progname, *sec, *thisarg;
	char		*conf_file, *defpaths, *auxpaths;
	char		*oarg, *tagarg;
	unsigned char	*uc;
	size_t		 i, sz, ssz;
	int		 prio, best_prio;
	enum outmode	 outmode;
	int		 fd, startdir;
	int		 show_usage;
	int		 options;
	int		 use_pager;
	int		 status, signum;
	int		 c;
	pid_t		 pager_pid, tc_pgid, man_pgid, pid;

#if HAVE_PROGNAME
	progname = getprogname();
#else
	if (argc < 1)
		progname = FUNC37("mandoc");
	else if ((progname = FUNC69(argv[0], '/')) == NULL)
		progname = argv[0];
	else
		++progname;
	FUNC60(progname);
#endif

	FUNC33(stderr);
	if (FUNC68(progname, "mandocdb", 8) == 0 ||
	    FUNC63(progname, BINM_MAKEWHATIS) == 0)
		return FUNC39(argc, argv);

#if HAVE_PLEDGE
	if (pledge("stdio rpath tmppath tty proc exec", NULL) == -1) {
		mandoc_msg(MANDOCERR_PLEDGE, 0, 0, "%s", strerror(errno));
		return mandoc_msg_getrc();
	}
#endif
#if HAVE_SANDBOX_INIT
	if (sandbox_init(kSBXProfileNoInternet, SANDBOX_NAMED, NULL) == -1)
		errx((int)MANDOCLEVEL_SYSERR, "sandbox_init");
#endif

	/* Search options. */

	FUNC44(&conf, 0, sizeof(conf));
	conf_file = defpaths = NULL;
	auxpaths = NULL;

	FUNC44(&search, 0, sizeof(struct mansearch));
	search.outkey = "Nd";
	oarg = NULL;

	if (FUNC63(progname, BINM_MAN) == 0)
		search.argmode = ARG_NAME;
	else if (FUNC63(progname, BINM_APROPOS) == 0)
		search.argmode = ARG_EXPR;
	else if (FUNC63(progname, BINM_WHATIS) == 0)
		search.argmode = ARG_WORD;
	else if (FUNC68(progname, "help", 4) == 0)
		search.argmode = ARG_NAME;
	else
		search.argmode = ARG_FILE;

	/* Parser and formatter options. */

	FUNC44(&curp, 0, sizeof(struct curparse));
	curp.outtype = OUTT_LOCALE;
	curp.outopts = &conf.output;
	options = MPARSE_SO | MPARSE_UTF8 | MPARSE_LATIN1;

	use_pager = 1;
	tag_files = NULL;
	show_usage = 0;
	outmode = OUTMODE_DEF;

	while ((c = FUNC15(argc, argv,
	    "aC:cfhI:iK:klM:m:O:S:s:T:VW:w")) != -1) {
		if (c == 'i' && search.argmode == ARG_EXPR) {
			optind--;
			break;
		}
		switch (c) {
		case 'a':
			outmode = OUTMODE_ALL;
			break;
		case 'C':
			conf_file = optarg;
			break;
		case 'c':
			use_pager = 0;
			break;
		case 'f':
			search.argmode = ARG_WORD;
			break;
		case 'h':
			conf.output.synopsisonly = 1;
			use_pager = 0;
			outmode = OUTMODE_ALL;
			break;
		case 'I':
			if (FUNC68(optarg, "os=", 3) != 0) {
				FUNC29(MANDOCERR_BADARG_BAD, 0, 0,
				    "-I %s", optarg);
				return FUNC30();
			}
			if (curp.os_s != NULL) {
				FUNC29(MANDOCERR_BADARG_DUPE, 0, 0,
				    "-I %s", optarg);
				return FUNC30();
			}
			curp.os_s = FUNC37(optarg + 3);
			break;
		case 'K':
			options &= ~(MPARSE_UTF8 | MPARSE_LATIN1);
			if (FUNC63(optarg, "utf-8") == 0)
				options |=  MPARSE_UTF8;
			else if (FUNC63(optarg, "iso-8859-1") == 0)
				options |=  MPARSE_LATIN1;
			else if (FUNC63(optarg, "us-ascii") != 0) {
				FUNC29(MANDOCERR_BADARG_BAD, 0, 0,
				    "-K %s", optarg);
				return FUNC30();
			}
			break;
		case 'k':
			search.argmode = ARG_EXPR;
			break;
		case 'l':
			search.argmode = ARG_FILE;
			outmode = OUTMODE_ALL;
			break;
		case 'M':
#ifdef __FreeBSD__
			defpaths = strdup(optarg);
			if (defpaths == NULL)
				err(1, "strdup");
#else
			defpaths = optarg;
#endif
			break;
		case 'm':
			auxpaths = optarg;
			break;
		case 'O':
			oarg = optarg;
			break;
		case 'S':
			search.arch = optarg;
			break;
		case 's':
			search.sec = optarg;
			break;
		case 'T':
			if (FUNC63(optarg, "ascii") == 0)
				curp.outtype = OUTT_ASCII;
			else if (FUNC63(optarg, "lint") == 0) {
				curp.outtype = OUTT_LINT;
				FUNC33(stdout);
				FUNC32(MANDOCERR_BASE);
			} else if (FUNC63(optarg, "tree") == 0)
				curp.outtype = OUTT_TREE;
			else if (FUNC63(optarg, "man") == 0)
				curp.outtype = OUTT_MAN;
			else if (FUNC63(optarg, "html") == 0)
				curp.outtype = OUTT_HTML;
			else if (FUNC63(optarg, "markdown") == 0)
				curp.outtype = OUTT_MARKDOWN;
			else if (FUNC63(optarg, "utf8") == 0)
				curp.outtype = OUTT_UTF8;
			else if (FUNC63(optarg, "locale") == 0)
				curp.outtype = OUTT_LOCALE;
			else if (FUNC63(optarg, "ps") == 0)
				curp.outtype = OUTT_PS;
			else if (FUNC63(optarg, "pdf") == 0)
				curp.outtype = OUTT_PDF;
			else {
				FUNC29(MANDOCERR_BADARG_BAD, 0, 0,
				    "-T %s", optarg);
				return FUNC30();
			}
			break;
		case 'W':
			if (FUNC80(&curp, optarg) == -1)
				return FUNC30();
			break;
		case 'w':
			outmode = OUTMODE_FLN;
			break;
		default:
			show_usage = 1;
			break;
		}
	}

	if (show_usage)
		FUNC77(search.argmode);

	/* Postprocess options. */

	if (outmode == OUTMODE_DEF) {
		switch (search.argmode) {
		case ARG_FILE:
			outmode = OUTMODE_ALL;
			use_pager = 0;
			break;
		case ARG_NAME:
			outmode = OUTMODE_ONE;
			break;
		default:
			outmode = OUTMODE_LST;
			break;
		}
	}

	if (oarg != NULL) {
		if (outmode == OUTMODE_LST)
			search.outkey = oarg;
		else {
			while (oarg != NULL) {
				if (FUNC27(&conf.output,
				    FUNC70(&oarg, ","), 0) == -1)
					return FUNC30();
			}
		}
	}

	if (curp.outtype != OUTT_TREE || !curp.outopts->noval)
		options |= MPARSE_VALIDATE;

	if (outmode == OUTMODE_FLN ||
	    outmode == OUTMODE_LST ||
	    !FUNC23(STDOUT_FILENO))
		use_pager = 0;

	if (use_pager &&
	    (conf.output.width == 0 || conf.output.indent == 0) &&
	    FUNC21(STDOUT_FILENO, TIOCGWINSZ, &ws) != -1 &&
	    ws.ws_col > 1) {
		if (conf.output.width == 0 && ws.ws_col < 79)
			conf.output.width = ws.ws_col - 1;
		if (conf.output.indent == 0 && ws.ws_col < 66)
			conf.output.indent = 3;
	}

#if HAVE_PLEDGE
	if (use_pager == 0) {
		if (pledge("stdio rpath", NULL) == -1) {
			mandoc_msg(MANDOCERR_PLEDGE, 0, 0,
			    "%s", strerror(errno));
			return mandoc_msg_getrc();
		}
	}
#endif

	/* Parse arguments. */

	if (argc > 0) {
		argc -= optind;
		argv += optind;
	}
	resp = NULL;

	/*
	 * Quirks for help(1)
	 * and for a man(1) section argument without -s.
	 */

	if (search.argmode == ARG_NAME) {
		if (*progname == 'h') {
			if (argc == 0) {
				argv = help_argv;
				argc = 1;
			}
		} else if (argc > 1 &&
		    ((uc = (unsigned char *)argv[0]) != NULL) &&
		    ((FUNC24(uc[0]) && (uc[1] == '\0' ||
		      FUNC22(uc[1]))) ||
		     (uc[0] == 'n' && uc[1] == '\0'))) {
			search.sec = (char *)uc;
			argv++;
			argc--;
		}
		if (search.arch == NULL)
			search.arch = FUNC13("MACHINE");
#ifdef MACHINE
		if (search.arch == NULL)
			search.arch = MACHINE;
#endif
	}

	/*
	 * Use the first argument for -O tag in addition to
	 * using it as a search term for man(1) or apropos(1).
	 */

	if (conf.output.tag != NULL && *conf.output.tag == '\0') {
		tagarg = argc > 0 && search.argmode == ARG_EXPR ?
		    FUNC62(*argv, '=') : NULL;
		conf.output.tag = tagarg == NULL ? *argv : tagarg + 1;
	}

	/* man(1), whatis(1), apropos(1) */

	if (search.argmode != ARG_FILE) {
		if (search.argmode == ARG_NAME &&
		    outmode == OUTMODE_ONE)
			search.firstmatch = 1;

#ifdef __FreeBSD__
		/*
		 * Use manpath(1) to populate defpaths if -M is not specified.
		 * Don't treat any failures as fatal.
		 */
		if (defpaths == NULL) {
			FILE *fp;
			size_t linecap = 0;
			ssize_t linelen;

			if ((fp = popen("/usr/bin/manpath -q", "r")) != NULL) {
				if ((linelen = getline(&defpaths,
				    &linecap, fp)) > 0) {
					/* Strip trailing newline */
					defpaths[linelen - 1] = '\0';
				}
				pclose(fp);
			}
		}
#endif

		/* Access the mandoc database. */

		FUNC28(&conf, conf_file, defpaths, auxpaths);
#ifdef __FreeBSD__
		free(defpaths);
#endif

		if ( ! FUNC40(&search, &conf.manpath,
		    argc, argv, &res, &sz))
			FUNC77(search.argmode);

		if (sz == 0 && search.argmode == ARG_NAME)
			(void)FUNC12(&search, &conf.manpath,
			    argc, argv, &res, &sz);

		if (search.argmode == ARG_NAME) {
			for (c = 0; c < argc; c++) {
				if (FUNC62(argv[c], '/') == NULL)
					continue;
				if (FUNC2(argv[c], R_OK) == -1) {
					FUNC31(argv[c]);
					FUNC29(MANDOCERR_BADARG_BAD,
					    0, 0, "%s", FUNC66(errno));
					FUNC31(NULL);
					continue;
				}
				res = FUNC36(res,
				    sz + 1, sizeof(*res));
				res[sz].file = FUNC37(argv[c]);
				res[sz].names = NULL;
				res[sz].output = NULL;
				res[sz].bits = 0;
				res[sz].ipath = SIZE_MAX;
				res[sz].sec = 10;
				res[sz].form = FORM_SRC;
				sz++;
			}
		}

		if (sz == 0) {
			if (search.argmode != ARG_NAME)
				FUNC79("nothing appropriate");
			FUNC34(MANDOCLEVEL_BADARG);
			goto out;
		}

		/*
		 * For standard man(1) and -a output mode,
		 * prepare for copying filename pointers
		 * into the program parameter array.
		 */

		if (outmode == OUTMODE_ONE) {
			argc = 1;
			best_prio = 40;
		} else if (outmode == OUTMODE_ALL)
			argc = (int)sz;

		/* Iterate all matching manuals. */

		resp = res;
		for (i = 0; i < sz; i++) {
			if (outmode == OUTMODE_FLN)
				FUNC58(res[i].file);
			else if (outmode == OUTMODE_LST)
				FUNC56("%s - %s\n", res[i].names,
				    res[i].output == NULL ? "" :
				    res[i].output);
			else if (outmode == OUTMODE_ONE) {
				/* Search for the best section. */
				sec = res[i].file;
				sec += FUNC64(sec, "123456789");
				if (sec[0] == '\0')
					continue; /* No section at all. */
				prio = sec_prios[sec[0] - '1'];
				if (search.sec != NULL) {
					ssz = FUNC67(search.sec);
					if (FUNC68(sec, search.sec, ssz) == 0)
						sec += ssz;
				} else
					sec++; /* Prefer without suffix. */
				if (*sec != '/')
					prio += 10; /* Wrong dir name. */
				if (search.sec != NULL &&
				    (FUNC67(sec) <= ssz  + 3 ||
				     FUNC63(sec + FUNC67(sec) - ssz,
				      search.sec) != 0))
					prio += 20; /* Wrong file ext. */
				if (prio >= best_prio)
					continue;
				best_prio = prio;
				resp = res + i;
			}
		}

		/*
		 * For man(1), -a and -i output mode, fall through
		 * to the main mandoc(1) code iterating files
		 * and running the parsers on each of them.
		 */

		if (outmode == OUTMODE_FLN || outmode == OUTMODE_LST)
			goto out;
	}

	/* mandoc(1) */

#if HAVE_PLEDGE
	if (use_pager) {
		if (pledge("stdio rpath tmppath tty proc exec", NULL) == -1) {
			mandoc_msg(MANDOCERR_PLEDGE, 0, 0,
			    "%s", strerror(errno));
			return mandoc_msg_getrc();
		}
	} else {
		if (pledge("stdio rpath", NULL) == -1) {
			mandoc_msg(MANDOCERR_PLEDGE, 0, 0,
			    "%s", strerror(errno));
			return mandoc_msg_getrc();
		}
	}
#endif

	if (search.argmode == ARG_FILE && auxpaths != NULL) {
		if (FUNC63(auxpaths, "doc") == 0)
			options |= MPARSE_MDOC;
		else if (FUNC63(auxpaths, "an") == 0)
			options |= MPARSE_MAN;
	}

	FUNC42();
	curp.mp = FUNC45(options, curp.os_e, curp.os_s);

	if (argc < 1) {
		if (use_pager) {
			tag_files = FUNC71();
			if (tag_files != NULL)
				tag_files->tagname = conf.output.tag;
		}
		thisarg = "<stdin>";
		FUNC31(thisarg);
		FUNC51(&curp, STDIN_FILENO, thisarg);
		FUNC31(NULL);
	}

	/*
	 * Remember the original working directory, if possible.
	 * This will be needed if some names on the command line
	 * are page names and some are relative file names.
	 * Do not error out if the current directory is not
	 * readable: Maybe it won't be needed after all.
	 */
	startdir = FUNC49(".", O_RDONLY | O_DIRECTORY);

	while (argc > 0) {

		/*
		 * Changing directories is not needed in ARG_FILE mode.
		 * Do it on a best-effort basis.  Even in case of
		 * failure, some functionality may still work.
		 */
		if (resp != NULL) {
			if (resp->ipath != SIZE_MAX)
				(void)FUNC4(conf.manpath.paths[resp->ipath]);
			else if (startdir != -1)
				(void)FUNC8(startdir);
			thisarg = resp->file;
		} else
			thisarg = *argv;

		FUNC31(thisarg);
		fd = FUNC47(curp.mp, thisarg);
		if (fd != -1) {
			if (use_pager) {
				use_pager = 0;
				tag_files = FUNC71();
				if (tag_files != NULL)
					tag_files->tagname = conf.output.tag;
			}

			if (resp == NULL || resp->form == FORM_SRC)
				FUNC51(&curp, fd, thisarg);
			else
				FUNC52(fd, conf.output.synopsisonly);

			if (FUNC10(stdout)) {
				if (tag_files != NULL) {
					FUNC29(MANDOCERR_WRITE, 0, 0,
					    "%s: %s", tag_files->ofn,
					    FUNC66(errno));
					FUNC72();
					tag_files = NULL;
				} else
					FUNC29(MANDOCERR_WRITE, 0, 0,
					    "%s", FUNC66(errno));
				break;
			}

			if (argc > 1 && curp.outtype <= OUTT_UTF8) {
				if (curp.outdata == NULL)
					FUNC50(&curp);
				FUNC76(curp.outdata);
			}
		} else
			FUNC29(resp == NULL ? MANDOCERR_BADARG_BAD :
			    MANDOCERR_OPEN, 0, 0, "%s", FUNC66(errno));

		FUNC31(NULL);

		if (curp.wstop && FUNC30() != MANDOCLEVEL_OK)
			break;

		if (resp != NULL)
			resp++;
		else
			argv++;
		if (--argc)
			FUNC48(curp.mp);
	}
	if (startdir != -1) {
		(void)FUNC8(startdir);
		FUNC5(startdir);
	}

	if (curp.outdata != NULL) {
		switch (curp.outtype) {
		case OUTT_HTML:
			FUNC20(curp.outdata);
			break;
		case OUTT_UTF8:
		case OUTT_LOCALE:
		case OUTT_ASCII:
			FUNC3(curp.outdata);
			break;
		case OUTT_PDF:
		case OUTT_PS:
			FUNC57(curp.outdata);
			break;
		default:
			break;
		}
	}
	FUNC38();
	FUNC46(curp.mp);
	FUNC43();

out:
	if (search.argmode != ARG_FILE) {
		FUNC26(&conf);
		FUNC41(res, sz);
	}

	FUNC11(curp.os_s);

	/*
	 * When using a pager, finish writing both temporary files,
	 * fork it, wait for the user to close it, and clean up.
	 */

	if (tag_files != NULL) {
		FUNC9(stdout);
		FUNC73();
		man_pgid = FUNC16(0);
		tag_files->tcpgid = man_pgid == FUNC17() ?
		    FUNC16(FUNC18()) : man_pgid;
		pager_pid = 0;
		signum = SIGSTOP;
		for (;;) {

			/* Stop here until moved to the foreground. */

			tc_pgid = FUNC74(tag_files->ofd);
			if (tc_pgid != man_pgid) {
				if (tc_pgid == pager_pid) {
					(void)FUNC75(tag_files->ofd,
					    man_pgid);
					if (signum == SIGTTIN)
						continue;
				} else
					tag_files->tcpgid = tc_pgid;
				FUNC25(0, signum);
				continue;
			}

			/* Once in the foreground, activate the pager. */

			if (pager_pid) {
				(void)FUNC75(tag_files->ofd, pager_pid);
				FUNC25(pager_pid, SIGCONT);
			} else
				pager_pid = FUNC61(tag_files);

			/* Wait for the pager to stop or exit. */

			while ((pid = FUNC78(pager_pid, &status,
			    WUNTRACED)) == -1 && errno == EINTR)
				continue;

			if (pid == -1) {
				FUNC29(MANDOCERR_WAIT, 0, 0,
				    "%s", FUNC66(errno));
				break;
			}
			if (!FUNC0(status))
				break;

			signum = FUNC1(status);
		}
		FUNC72();
	} else if (curp.outtype != OUTT_LINT &&
	    (search.argmode == ARG_FILE || sz > 0))
		FUNC35();

	return (int)FUNC30();
}