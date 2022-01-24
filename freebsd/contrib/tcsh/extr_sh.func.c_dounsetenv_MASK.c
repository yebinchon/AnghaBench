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
struct command {int dummy; } ;
typedef  char Char ;

/* Variables and functions */
 int AsciiOnly ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int MB_CUR_MAX ; 
 scalar_t__ MapsAreInited ; 
 scalar_t__ NLSMapsAreInited ; 
 scalar_t__ NoNLSRebind ; 
 int /*<<< orphan*/  STRLSCOLORS ; 
 int /*<<< orphan*/  STRLS_COLORS ; 
 int /*<<< orphan*/  STRNLSPATH ; 
 int /*<<< orphan*/  STRNOREBIND ; 
 int /*<<< orphan*/  STRSYSTYPE ; 
 char** STR_environ ; 
 int /*<<< orphan*/  STRtcshlang ; 
 int /*<<< orphan*/  FUNC3 (struct command*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int dont_free ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC22 (int) ; 

void
FUNC23(Char **v, struct command *c)
{
    Char  **ep, *p, *n, *name;
    int     i, maxi;

    FUNC3(c);
    /*
     * Find the longest environment variable
     */
    for (maxi = 0, ep = STR_environ; *ep; ep++) {
	for (i = 0, p = *ep; *p && *p != '='; p++, i++)
	    continue;
	if (i > maxi)
	    maxi = i;
    }

    name = FUNC22((maxi + 1) * sizeof(Char));
    FUNC5(name, xfree);

    while (++v && *v) 
	for (maxi = 1; maxi;)
	    for (maxi = 0, ep = STR_environ; *ep; ep++) {
		for (n = name, p = *ep; *p && *p != '='; *n++ = *p++)
		    continue;
		*n = '\0';
		if (!FUNC1(name, *v))
		    continue;
		maxi = 1;

		/* Unset the name. This wasn't being done until
		 * later but most of the stuff following won't
		 * work (particularly the setlocale() and getenv()
		 * stuff) as intended until the name is actually
		 * removed. (sg)
		 */
		FUNC4(name);

		if (FUNC11(name, STRNOREBIND)) {
		    NoNLSRebind = 0;
		    MapsAreInited = 0;
		    NLSMapsAreInited = 0;
		    FUNC9();
		}
#ifdef apollo
		else if (eq(name, STRSYSTYPE))
		    dohash(NULL, NULL);
#endif /* apollo */
		else if (FUNC14(name)) {
#ifdef NLS
		    int     k;

# ifdef SETLOCALEBUG
		    dont_free = 1;
# endif /* SETLOCALEBUG */
		    (void) setlocale(LC_ALL, "");
# ifdef LC_COLLATE
		    (void) setlocale(LC_COLLATE, "");
# endif
# ifdef LC_CTYPE
		    (void) setlocale(LC_CTYPE, ""); /* for iscntrl */
# endif /* LC_CTYPE */
# ifdef NLS_CATALOGS
#  ifdef LC_MESSAGES
		    (void) setlocale(LC_MESSAGES, "");
#  endif /* LC_MESSAGES */
		    nlsclose();
		    nlsinit();
# endif /* NLS_CATALOGS */
# ifdef SETLOCALEBUG
		    dont_free = 0;
# endif /* SETLOCALEBUG */
# ifdef STRCOLLBUG
		    fix_strcoll_bug();
# endif /* STRCOLLBUG */
		    tw_cmd_free();/* since the collation sequence has changed */
		    for (k = 0200; k <= 0377 && !Isprint(CTL_ESC(k)); k++)
			continue;
		    AsciiOnly = MB_CUR_MAX == 1 && k > 0377;
#else /* !NLS */
		    AsciiOnly = FUNC13("LANG") == NULL &&
			FUNC13("LC_CTYPE") == NULL;
#endif /* NLS */
		    NLSMapsAreInited = 0;
		    FUNC8();
		    if (MapsAreInited && !NLSMapsAreInited)
			FUNC10();

		}
#ifdef WINNT_NATIVE
		else if (eq(name,(STRtcshlang))) {
		    nls_dll_unload();
		    nlsinit();
		}
#endif /* WINNT_NATIVE */
#ifdef COLOR_LS_F
		else if (eq(name, STRLS_COLORS))
		    parseLS_COLORS(n);
		else if (eq(name, STRLSCOLORS))
		    parseLSCOLORS(n);
#endif /* COLOR_LS_F */
#ifdef NLS_CATALOGS
		else if (eq(name, STRNLSPATH)) {
		    nlsclose();
		    nlsinit();
		}
#endif
		/*
		 * start again cause the environment changes
		 */
		break;
	    }
    FUNC6(name);
}