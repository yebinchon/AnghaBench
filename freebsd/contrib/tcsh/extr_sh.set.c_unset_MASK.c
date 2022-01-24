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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 char HIST ; 
 char HISTSUB ; 
 scalar_t__ HistLit ; 
 char PRCH ; 
 char PRCHROOT ; 
 int /*<<< orphan*/  STR_WORD_CHARS ; 
 int /*<<< orphan*/  STRanyerror ; 
 int /*<<< orphan*/  STRbackslash_quote ; 
 int /*<<< orphan*/  STRcdtohome ; 
 int /*<<< orphan*/  STRcolor ; 
 int /*<<< orphan*/  STRcompat_expr ; 
 int /*<<< orphan*/  STRedit ; 
 int /*<<< orphan*/  STRfilec ; 
 int /*<<< orphan*/  STRhistchars ; 
 int /*<<< orphan*/  STRhistlit ; 
 int /*<<< orphan*/  STRhistory ; 
 int /*<<< orphan*/  STRignoreeof ; 
 int /*<<< orphan*/  STRimplicitcd ; 
 int /*<<< orphan*/  STRkillring ; 
 int /*<<< orphan*/  STRloginsh ; 
 int /*<<< orphan*/  STRnoclobber ; 
 int /*<<< orphan*/  STRpromptchars ; 
 int /*<<< orphan*/  STRrecognize_only_executables ; 
 int /*<<< orphan*/  STRsymlinks ; 
 int /*<<< orphan*/  STRvimode ; 
 int /*<<< orphan*/  STRwordchars ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 scalar_t__ VImode ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ anyerror ; 
 scalar_t__ bslash_quote ; 
 scalar_t__ cdtohome ; 
 scalar_t__ compat_expr ; 
 scalar_t__ editing ; 
 scalar_t__ filec ; 
 scalar_t__ implicit_cd ; 
 scalar_t__ loginsh ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ no_clobber ; 
 scalar_t__ noediting ; 
 scalar_t__ numeof ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shvhed ; 
 scalar_t__ symlinks ; 
 scalar_t__ tcsh ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  word_chars ; 

void
FUNC11(Char **v, struct command *c)
{
    int did_roe, did_edit;

    FUNC1(c);
    did_roe = FUNC2(STRrecognize_only_executables) != NULL;
    did_edit = FUNC2(STRedit) != NULL;
    FUNC8(v, &shvhed);

#if defined(FILEC) && defined(TIOCSTI)
    if (adrof(STRfilec) == 0)
	filec = 0;
#endif /* FILEC && TIOCSTI */

    if (FUNC2(STRhistchars) == 0) {
	HIST = '!';
	HISTSUB = '^';
    }
    if (FUNC2(STRignoreeof) == 0)
	numeof = 0;
    if (FUNC2(STRpromptchars) == 0) {
	PRCH = tcsh ? '>' : '%';
	PRCHROOT = '#';
    }
    if (FUNC2(STRnoclobber) == 0)
	no_clobber = 0;
    if (FUNC2(STRhistlit) == 0)
	HistLit = 0;
    if (FUNC2(STRloginsh) == 0)
	loginsh = 0;
    if (FUNC2(STRanyerror) == 0)
	anyerror = 0;
    if (FUNC2(STRwordchars) == 0)
	word_chars = STR_WORD_CHARS;
    if (FUNC2(STRedit) == 0)
	editing = 0;
    if (FUNC2(STRbackslash_quote) == 0)
	bslash_quote = 0;
    if (FUNC2(STRcompat_expr) == 0)
	compat_expr = 0;
    if (FUNC2(STRsymlinks) == 0)
	symlinks = 0;
    if (FUNC2(STRimplicitcd) == 0)
	implicit_cd = 0;
    if (FUNC2(STRcdtohome) == 0)
	cdtohome = 0;
    if (FUNC2(STRkillring) == 0)
	FUNC0(0);
    if (did_edit && noediting && FUNC2(STRedit) == 0)
	noediting = 0;
    if (FUNC2(STRvimode) == 0)
	VImode = 0;
    if (did_roe && FUNC2(STRrecognize_only_executables) == 0)
	FUNC7();
    if (FUNC2(STRhistory) == 0)
	FUNC6(0);
#ifdef COLOR_LS_F
    if (adrof(STRcolor) == 0)
	set_color_context();
#endif /* COLOR_LS_F */
#if defined(KANJI) && defined(SHORT_STRINGS) && defined(DSPMBYTE)
    update_dspmbyte_vars();
#endif
    FUNC10();
#ifdef NLS_CATALOGS
    nlsclose();
    nlsinit();
#endif /* NLS_CATALOGS */
}