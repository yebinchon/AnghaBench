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
 int /*<<< orphan*/  CHECK_MBYTEVAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERR_NAME ; 
 int ERR_VARALNUM ; 
 int ERR_VARBEGIN ; 
 int /*<<< orphan*/  G_APPEND ; 
 scalar_t__ GotTermCaps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int MB_CUR_MAX ; 
 scalar_t__ MapsAreInited ; 
 scalar_t__ NLSMapsAreInited ; 
 int NoNLSRebind ; 
 char* STRCOLUMNS ; 
 char* STRKGROUP ; 
 char* STRKHOME ; 
 char* STRKPATH ; 
 char* STRKSHLVL ; 
 char* STRKTERM ; 
 char* STRKUSER ; 
 char* STRLANG ; 
 char* STRLINES ; 
 char* STRLSCOLORS ; 
 char* STRLS_COLORS ; 
 char* STRNLSPATH ; 
 char* STRNOREBIND ; 
 char* STRNULL ; 
 char* STRSYSTYPE ; 
 char* STRTERMCAP ; 
 int /*<<< orphan*/  STRedit ; 
 int /*<<< orphan*/  STRgroup ; 
 int /*<<< orphan*/  STRhome ; 
 int /*<<< orphan*/  STRshlvl ; 
 char* STRtcshlang ; 
 int /*<<< orphan*/  STRterm ; 
 int /*<<< orphan*/  STRuser ; 
 int /*<<< orphan*/  FUNC2 (struct command*) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int dont_free ; 
 int /*<<< orphan*/  FUNC13 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int editing ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ noediting ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 scalar_t__ FUNC34 (char*,char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,char*) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC37(Char **v, struct command *c)
{
    Char   *vp, *lp;

    FUNC2(c);
    if (*++v == 0) {
	FUNC13(--v, 0);
	return;
    }

    vp = *v++;
    lp = vp;

    if (!FUNC23(*lp))
	FUNC33(ERR_NAME | ERR_VARBEGIN);
    do {
	lp++;
    } while (FUNC4(*lp) || *lp == '.');
    if (*lp != '\0')
	FUNC33(ERR_NAME | ERR_VARALNUM);

    if ((lp = *v++) == 0)
	lp = STRNULL;

    lp = FUNC20(lp, G_APPEND);
    FUNC9(lp, xfree);
    FUNC35(vp, lp);
    if (FUNC18(vp, STRKPATH)) {
        FUNC21(lp);
	FUNC12(NULL, NULL);
	FUNC10(lp);
	return;
    }

#ifdef apollo
    if (eq(vp, STRSYSTYPE)) {
	dohash(NULL, NULL);
	cleanup_until(lp);
	return;
    }
#endif /* apollo */

    /* dspkanji/dspmbyte autosetting */
    /* PATCH IDEA FROM Issei.Suzuki VERY THANKS */
#if defined(DSPMBYTE)
    if(eq(vp, STRLANG) && !adrof(CHECK_MBYTEVAR)) {
	autoset_dspmbyte(lp);
    }
#endif

    if (FUNC22(vp)) {
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
# if defined(AUTOSET_KANJI)
        autoset_kanji();
# endif /* AUTOSET_KANJI */
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
	tw_cmd_free();	/* since the collation sequence has changed */
	for (k = 0200; k <= 0377 && !Isprint(CTL_ESC(k)); k++)
	    continue;
	AsciiOnly = MB_CUR_MAX == 1 && k > 0377;
#else /* !NLS */
	AsciiOnly = 0;
#endif /* NLS */
	NLSMapsAreInited = 0;
	FUNC15();
	if (MapsAreInited && !NLSMapsAreInited)
	    FUNC17();
	FUNC10(lp);
	return;
    }

#ifdef NLS_CATALOGS
    if (eq(vp, STRNLSPATH)) {
	nlsclose();
	nlsinit();
    }
#endif

    if (FUNC18(vp, STRNOREBIND)) {
	NoNLSRebind = 1;
	MapsAreInited = 0;
	NLSMapsAreInited = 0;
	FUNC16();
	FUNC10(lp);
	return;
    }
#ifdef WINNT_NATIVE
    if (eq(vp, STRtcshlang)) {
	nlsinit();
	cleanup_until(lp);
	return;
    }
#endif /* WINNT_NATIVE */
    if (FUNC18(vp, STRKTERM)) {
	char *t;

	FUNC31(STRterm, FUNC28(lp), VAR_READWRITE);	/* lp memory used here */
	FUNC8(lp);
	FUNC10(lp);
	t = FUNC32(lp);
	if (noediting && FUNC34(t, "unknown") != 0 && FUNC34(t,"dumb") != 0) {
	    editing = 1;
	    noediting = 0;
	    FUNC29(STRedit);
	}
	GotTermCaps = 0;
	FUNC15();
	return;
    }

    if (FUNC18(vp, STRKHOME)) {
	Char *canon;
	/*
	 * convert to canonical pathname (possibly resolving symlinks)
	 */
	canon = FUNC11(lp, lp);
	FUNC8(lp);
	FUNC10(lp);
	FUNC9(canon, xfree);
	FUNC31(STRhome, FUNC28(canon), VAR_READWRITE); /* lp memory used here */
	FUNC8(canon);
	FUNC10(canon);

	/* fix directory stack for new tilde home */
	FUNC14();
	return;
    }

    if (FUNC18(vp, STRKSHLVL)) {
	FUNC31(STRshlvl, FUNC28(lp), VAR_READWRITE); /* lp memory used here */
	FUNC8(lp);
	FUNC10(lp);
	return;
    }

    if (FUNC18(vp, STRKUSER)) {
	FUNC31(STRuser, FUNC28(lp), VAR_READWRITE);	/* lp memory used here */
	FUNC8(lp);
	FUNC10(lp);
	return;
    }

    if (FUNC18(vp, STRKGROUP)) {
	FUNC31(STRgroup, FUNC28(lp), VAR_READWRITE); /* lp memory used here */
	FUNC8(lp);
	FUNC10(lp);
	return;
    }

#ifdef COLOR_LS_F
    if (eq(vp, STRLS_COLORS)) {
        parseLS_COLORS(lp);
	cleanup_until(lp);
	return;
    }
    if (eq(vp, STRLSCOLORS)) {
        parseLSCOLORS(lp);
	cleanup_until(lp);
	return;
    }
#endif /* COLOR_LS_F */

#ifdef SIG_WINDOW
    /*
     * Load/Update $LINES $COLUMNS
     */
    if ((eq(lp, STRNULL) && (eq(vp, STRLINES) || eq(vp, STRCOLUMNS))) ||
	eq(vp, STRTERMCAP)) {
	cleanup_until(lp);
	check_window_size(1);
	return;
    }

    /*
     * Change the size to the one directed by $LINES and $COLUMNS
     */
    if (eq(vp, STRLINES) || eq(vp, STRCOLUMNS)) {
#if 0
	GotTermCaps = 0;
#endif
	cleanup_until(lp);
	ed_Init();
	return;
    }
#endif /* SIG_WINDOW */
    FUNC10(lp);
}