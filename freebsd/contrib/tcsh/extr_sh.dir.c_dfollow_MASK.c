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
struct varent {char** vec; } ;
struct Strbuf {char* s; int /*<<< orphan*/  len; } ;
typedef  char Char ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  G_ERROR ; 
 int /*<<< orphan*/  STRcdpath ; 
 int /*<<< orphan*/  STRdotdotsl ; 
 int /*<<< orphan*/  STRdotsl ; 
 scalar_t__ SYM_EXPAND ; 
 scalar_t__ SYM_IGNORE ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*) ; 
 scalar_t__ FUNC3 (char*,char) ; 
 size_t FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 struct varent* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  bequiet ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 
 char* FUNC13 (char*,int) ; 
 int errno ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int printd ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ symlinks ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static Char *
FUNC21(Char *cp, int old)
{
    Char *dp;
    struct varent *c;
    int serrno;

    cp = old ? FUNC5(cp) : FUNC14(cp, G_ERROR);
    FUNC10(cp, xfree);
#ifdef apollo
    if (Strchr(cp, '`')) {
	char *dptr;
	if (chdir(dptr = short2str(cp)) < 0) 
	    stderror(ERR_SYSTEM, dptr, strerror(errno));
	dp = agetcwd();
	cleanup_push(dp, xfree);
	if (dp != NULL) {
	    cleanup_until(cp);
	    return dgoto(dp);
	}
	else
	    stderror(ERR_SYSTEM, dptr, strerror(errno));
    }
#endif /* apollo */

    /*
     * if we are ignoring symlinks, try to fix relatives now.
     * if we are expading symlinks, it should be done by now.
     */ 
    dp = FUNC13(cp, symlinks == SYM_IGNORE);
    if (FUNC8(FUNC16(dp)) >= 0) {
        FUNC11(cp);
        return FUNC12(dp);
    }
    else {
        FUNC20(dp);
        if (FUNC8(FUNC16(cp)) >= 0) {
	    FUNC9(cp);
	    FUNC11(cp);
	    return FUNC12(cp);
	}
	else if (errno != ENOENT && errno != ENOTDIR) {
	    int err;

	    err = errno;
	    FUNC17(ERR_SYSTEM, FUNC16(cp), FUNC18(err));
	}
	serrno = errno;
    }

    if (cp[0] != '/' && !FUNC15(STRdotsl, cp) && !FUNC15(STRdotdotsl, cp)
	&& (c = FUNC6(STRcdpath)) && c->vec != NULL) {
	struct Strbuf buf = Strbuf_INIT;
	Char  **cdp;

	for (cdp = c->vec; *cdp; cdp++) {
	    size_t len = FUNC4(*cdp);
	    buf.len = 0;
	    if (len > 0) {
		FUNC0(&buf, *cdp);
		if ((*cdp)[len - 1] != '/')
		    FUNC1(&buf, '/');
	    }
	    FUNC0(&buf, cp);
	    FUNC2(&buf);
	    /*
	     * We always want to fix the directory here
	     * If we are normalizing symlinks
	     */
	    dp = FUNC13(buf.s, symlinks == SYM_IGNORE || 
				   symlinks == SYM_EXPAND);
	    if (FUNC8(FUNC16(dp)) >= 0) {
		printd = 1;
		FUNC20(buf.s);
		FUNC11(cp);
		return FUNC12(dp);
	    }
	    else if (FUNC8(FUNC16(cp)) >= 0) {
		printd = 1;
		FUNC20(dp);
		FUNC20(buf.s);
		FUNC9(cp);
		FUNC11(cp);
		return FUNC12(cp);
	    }
	    FUNC20(dp);
	}
	FUNC20(buf.s);
    }
    dp = FUNC19(cp);
    if ((dp[0] == '/' || dp[0] == '.') && FUNC8(FUNC16(dp)) >= 0) {
	FUNC11(cp);
	cp = FUNC5(dp);
	printd = 1;
	return FUNC12(cp);
    }
    /*
     * on login source of ~/.cshdirs, errors are eaten. the dir stack is all
     * directories we could get to.
     */
    if (!bequiet)
	FUNC17(ERR_SYSTEM, FUNC16(cp), FUNC18(serrno));
    FUNC11(cp);
    return (NULL);
}