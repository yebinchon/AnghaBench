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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char _POSIX_VDISABLE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int autologin ; 
 int binary ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int eight ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*) ; 
 char escape ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int forward_option ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 char* prompt ; 
 char rlogin ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int skiprc ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 
 char* FUNC21 (char*,char) ; 
 int FUNC22 (int,char**) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  toplevel ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int wantencryption ; 

int
FUNC25(int argc, char **argv)
{
	int ch;
	char *user;

	FUNC18(argv[0]);

#ifdef KRB5
	krb5_init();
#endif

	FUNC23();		/* Clear out things */

	FUNC3();

	if ((prompt = FUNC21(argv[0], '/')))
		++prompt;
	else
		prompt = argv[0];

	user = NULL;

	rlogin = (FUNC20(prompt, "rlog", 4) == 0) ? '~' : _POSIX_VDISABLE;

	/*
	 * if AUTHENTICATION and ENCRYPTION is set autologin will be
	 * se to true after the getopt switch; unless the -K option is
	 * passed
	 */
	autologin = -1;

	if (argc == 2 && FUNC19(argv[1], "--version") == 0) {
	    FUNC15(NULL);
	    FUNC9(0);
	}
	if (argc == 2 && FUNC19(argv[1], "--help") == 0)
	    FUNC24(0);


	while((ch = FUNC12(argc, argv,
			   "78DEKLS:X:abcde:fFk:l:n:rxG")) != -1) {
		switch(ch) {
		case '8':
			eight = 3;	/* binary output and input */
			break;
		case '7':
			eight = 0;
			break;
		case 'b':
		    binary = 3;
		    break;
		case 'D': {
		    /* sometimes we don't want a mangled display */
		    char *p;
		    if((p = FUNC11("DISPLAY")))
			FUNC8((unsigned char*)"DISPLAY", (unsigned char*)p);
		    break;
		}
		case 'E':
			rlogin = escape = _POSIX_VDISABLE;
			break;
		case 'K':
#ifdef	AUTHENTICATION
			autologin = 0;
#endif
			break;
		case 'L':
			eight |= 2;	/* binary output only */
			break;
		case 'S':
		    {
#ifdef	HAVE_PARSETOS
			extern int tos;

			if ((tos = parsetos(optarg, "tcp")) < 0)
				fprintf(stderr, "%s%s%s%s\n",
					prompt, ": Bad TOS argument '",
					optarg,
					"; will try to use default TOS");
#else
			FUNC10(stderr,
			   "%s: Warning: -S ignored, no parsetos() support.\n",
								prompt);
#endif
		    }
			break;
		case 'X':
#ifdef	AUTHENTICATION
			auth_disable_name(optarg);
#endif
			break;
		case 'a':
			autologin = 1;
			break;
		case 'c':
			skiprc = 1;
			break;
		case 'd':
			debug = 1;
			break;
		case 'e':
			FUNC16(optarg);
			break;
		case 'f':
		case 'F':
		case 'G':
#if defined(AUTHENTICATION) && defined(KRB5) && defined(FORWARD)
			if (forward_option) {
			    fprintf(stderr,
				    "%s: Only one of -f, -F and -G allowed.\n",
				    prompt);
			    usage(1);
			}
			forward_option = ch;
#else
			FUNC10(stderr,
			 "%s: Warning: -%c ignored, no Kerberos V5 support.\n",
				prompt, ch);
#endif
			break;
		case 'k':
		    FUNC10(stderr,
			    "%s: Warning: -k ignored, no Kerberos V4 support.\n",
			    prompt);
		    break;
		case 'l':
		  if(autologin == 0){
		    FUNC10(stderr, "%s: Warning: -K ignored\n", prompt);
		    autologin = -1;
		  }
			user = optarg;
			break;
		case 'n':
				FUNC2(optarg);
			break;
		case 'r':
			rlogin = '~';
			break;
		case 'x':
#ifdef	ENCRYPTION
			encrypt_auto(1);
			decrypt_auto(1);
			wantencryption = 1;
			EncryptVerbose(1);
#else
			FUNC10(stderr,
			    "%s: Warning: -x ignored, no ENCRYPT support.\n",
								prompt);
#endif
			break;

		case '?':
		default:
			FUNC24(1);
			/* NOTREACHED */
		}
	}

	if (autologin == -1) {		/* esc@magic.fi; force  */
#if defined(AUTHENTICATION)
		autologin = 1;
#endif
#if defined(ENCRYPTION)
		encrypt_auto(1);
		decrypt_auto(1);
		wantencryption = -1;
#endif
	}

	if (autologin == -1)
		autologin = (rlogin == _POSIX_VDISABLE) ? 0 : 1;

	argc -= optind;
	argv += optind;

	if (argc) {
		char *args[7], **argp = args;

		if (argc > 2)
			FUNC24(1);
		*argp++ = prompt;
		if (user) {
			*argp++ = "-l";
			*argp++ = user;
		}
		*argp++ = argv[0];		/* host */
		if (argc > 1)
			*argp++ = argv[1];	/* port */
		*argp = 0;

		if (FUNC17(toplevel) != 0)
			FUNC1(0);
		if (FUNC22(argp - args, args) == 1)
			return (0);
		else
			return (1);
	}
	FUNC17(toplevel);
	for (;;) {
			FUNC5(1, 0, 0);
	}
}