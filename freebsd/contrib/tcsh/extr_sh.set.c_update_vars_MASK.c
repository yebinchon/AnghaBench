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
struct varent {int /*<<< orphan*/  vec; } ;
typedef  char Char ;

/* Variables and functions */
 char* CHECK_MBYTEVAR ; 
 int ERR_NAME ; 
 int ERR_UNDVAR ; 
 scalar_t__ GotTermCaps ; 
 char HIST ; 
 char HISTSUB ; 
 int HistLit ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 char PRCH ; 
 char PRCHROOT ; 
 int /*<<< orphan*/  STRKGROUP ; 
 int /*<<< orphan*/  STRKHOME ; 
 int /*<<< orphan*/  STRKSHLVL ; 
 int /*<<< orphan*/  STRKTERM ; 
 int /*<<< orphan*/  STRKUSER ; 
 int /*<<< orphan*/  STRLOGNAME ; 
 int /*<<< orphan*/  STRTERMCAP ; 
 char* STRanyerror ; 
 char* STRbackslash_quote ; 
 char* STRcatalog ; 
 char* STRcdtohome ; 
 char* STRchase ; 
 char* STRcolor ; 
 char* STRcompat_expr ; 
 char* STRdirstack ; 
 int /*<<< orphan*/  STRdumb ; 
 char* STRedit ; 
 char* STRexpand ; 
 char* STRfilec ; 
 char* STRgroup ; 
 char* STRhistchars ; 
 char* STRhistlit ; 
 char* STRhistory ; 
 char* STRhome ; 
 char* STRignore ; 
 char* STRignoreeof ; 
 char* STRimplicitcd ; 
 char* STRkillring ; 
 char* STRloginsh ; 
 int /*<<< orphan*/  STRnetwork ; 
 char* STRnoclobber ; 
 char* STRnokanji ; 
 char* STRpath ; 
 char* STRpromptchars ; 
 char* STRrecognize_only_executables ; 
 char* STRshlvl ; 
 char* STRsymlinks ; 
 char* STRterm ; 
 int /*<<< orphan*/  STRunknown ; 
 char* STRuser ; 
 char* STRverbose ; 
 char* STRvimode ; 
 char* STRwatch ; 
 char* STRwordchars ; 
 scalar_t__ SYM_CHASE ; 
 scalar_t__ SYM_EXPAND ; 
 scalar_t__ SYM_IGNORE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int VImode ; 
 struct varent* FUNC5 (char*) ; 
 int anyerror ; 
 int bslash_quote ; 
 int cdtohome ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int compat_expr ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int editing ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int filec ; 
 char* FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*) ; 
 int implicit_cd ; 
 int loginsh ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  no_clobber ; 
 scalar_t__ noediting ; 
 int numeof ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 scalar_t__ symlinks ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 char* FUNC31 (char*) ; 
 char* word_chars ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC32(Char *vp)
{
    if (FUNC14(vp, STRpath)) {
	struct varent *p = FUNC5(STRpath); 
	if (p == NULL)
	    FUNC26(ERR_NAME | ERR_UNDVAR);
	else {
	    FUNC15(p->vec);
	    FUNC10(NULL, NULL);
	}
    }
    else if (FUNC14(vp, STRnoclobber)) {
	struct varent *p = FUNC5(STRnoclobber);
	if (p == NULL)
	    FUNC26(ERR_NAME | ERR_UNDVAR);
	else
	    no_clobber = FUNC23(p->vec);
    }
    else if (FUNC14(vp, STRhistchars)) {
	Char *pn = FUNC31(vp);

	HIST = *pn++;
	if (HIST)
	    HISTSUB = *pn;
	else
	    HISTSUB = HIST;
    }
    else if (FUNC14(vp, STRpromptchars)) {
	Char *pn = FUNC31(vp);

	PRCH = *pn++;
	if (PRCH)
	    PRCHROOT = *pn;
	else
	    PRCHROOT = PRCH;
    }
    else if (FUNC14(vp, STRhistlit)) {
	HistLit = 1;
    }
    else if (FUNC14(vp, STRuser)) {
	FUNC27(STRKUSER, FUNC31(vp));
	FUNC27(STRLOGNAME, FUNC31(vp));
    }
    else if (FUNC14(vp, STRgroup)) {
	FUNC27(STRKGROUP, FUNC31(vp));
    }
    else if (FUNC14(vp, STRwordchars)) {
	word_chars = FUNC31(vp);
    }
    else if (FUNC14(vp, STRloginsh)) {
	loginsh = 1;
    }
    else if (FUNC14(vp, STRanyerror)) {
	anyerror = 1;
    }
    else if (FUNC14(vp, STRsymlinks)) {
	Char *pn = FUNC31(vp);

	if (FUNC14(pn, STRignore))
	    symlinks = SYM_IGNORE;
	else if (FUNC14(pn, STRexpand))
	    symlinks = SYM_EXPAND;
	else if (FUNC14(pn, STRchase))
	    symlinks = SYM_CHASE;
	else
	    symlinks = 0;
    }
    else if (FUNC14(vp, STRterm)) {
	Char *cp = FUNC31(vp);
	FUNC27(STRKTERM, cp);
#ifdef DOESNT_WORK_RIGHT
	cp = getenv("TERMCAP");
	if (cp && (*cp != '/'))	/* if TERMCAP and not a path */
	    Unsetenv(STRTERMCAP);
#endif /* DOESNT_WORK_RIGHT */
	GotTermCaps = 0;
	if (noediting && FUNC2(cp, STRnetwork) != 0 &&
	    FUNC2(cp, STRunknown) != 0 && FUNC2(cp, STRdumb) != 0) {
	    editing = 1;
	    noediting = 0;
	    FUNC21(STRedit);
	}
	FUNC13();		/* reset the editor */
    }
    else if (FUNC14(vp, STRhome)) {
	Char *cp, *canon;

	cp = FUNC3(FUNC31(vp));	/* get the old value back */
	FUNC7(cp, xfree);

	/*
	 * convert to cononical pathname (possibly resolving symlinks)
	 */
	canon = FUNC9(cp, cp);
	FUNC6(cp);
	FUNC8(cp);
	FUNC7(canon, xfree);

	FUNC24(vp, canon, VAR_READWRITE);	/* have to save the new val */

	/* and now mirror home with HOME */
	FUNC27(STRKHOME, canon);
	/* fix directory stack for new tilde home */
	FUNC12();
	FUNC8(canon);
    }
    else if (FUNC14(vp, STRedit)) {
	editing = 1;
	noediting = 0;
	/* PWP: add more stuff in here later */
    }
    else if (FUNC14(vp, STRvimode)) {
	VImode = 1;
	FUNC30();
    }
    else if (FUNC14(vp, STRshlvl)) {
	FUNC27(STRKSHLVL, FUNC31(vp));
    }
    else if (FUNC14(vp, STRignoreeof)) {
	Char *cp;
	numeof = 0;
    	for ((cp = FUNC31(STRignoreeof)); cp && *cp; cp++) {
	    if (!FUNC0(*cp)) {
		numeof = 0;
		break;
	    }
	    numeof = numeof * 10 + *cp - '0';
	}
	if (numeof <= 0) numeof = 26;	/* Sanity check */
    } 
    else if (FUNC14(vp, STRbackslash_quote)) {
	bslash_quote = 1;
    }
    else if (FUNC14(vp, STRcompat_expr)) {
	compat_expr = 1;
    }
    else if (FUNC14(vp, STRdirstack)) {
	FUNC11();
    }
    else if (FUNC14(vp, STRrecognize_only_executables)) {
	FUNC28();
    }
    else if (FUNC14(vp, STRkillring)) {
	FUNC1((int)FUNC17(FUNC31(vp)));
    }
    else if (FUNC14(vp, STRhistory)) {
	FUNC25((int)FUNC17(FUNC31(vp)));
    }
#ifndef HAVENOUTMP
    else if (FUNC14(vp, STRwatch)) {
	FUNC20();
    }
#endif /* HAVENOUTMP */
    else if (FUNC14(vp, STRimplicitcd)) {
	implicit_cd = ((FUNC14(FUNC31(vp), STRverbose)) ? 2 : 1);
    }
    else if (FUNC14(vp, STRcdtohome)) {
	cdtohome = 1;
    }
#ifdef COLOR_LS_F
    else if (eq(vp, STRcolor)) {
	set_color_context();
    }
#endif /* COLOR_LS_F */
#if defined(KANJI) && defined(SHORT_STRINGS) && defined(DSPMBYTE)
    else if(eq(vp, CHECK_MBYTEVAR) || eq(vp, STRnokanji)) {
	update_dspmbyte_vars();
    }
#endif
#ifdef NLS_CATALOGS
    else if (eq(vp, STRcatalog)) {
	nlsclose();
	nlsinit();
    }
#if defined(FILEC) && defined(TIOCSTI)
    else if (eq(vp, STRfilec))
	filec = 1;
#endif
#endif /* NLS_CATALOGS */
}