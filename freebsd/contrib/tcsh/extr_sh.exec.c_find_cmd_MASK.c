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
struct biltins {int /*<<< orphan*/  bname; } ;
typedef  char Char ;

/* Variables and functions */
 char* FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  STRautorehash ; 
 int /*<<< orphan*/  STRdot ; 
 int /*<<< orphan*/  STRpath ; 
 int /*<<< orphan*/  STRslash ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct varent* FUNC2 (int /*<<< orphan*/ ) ; 
 struct varent* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aliases ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char) ; 
 struct biltins const* bfunc ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int) ; 
 int hashdebug ; 
 int FUNC13 (char*) ; 
 scalar_t__ havhash ; 
 size_t nbfunc ; 
 struct biltins const* nt_bfunc ; 
 size_t nt_nbfunc ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 int xhash ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char) ; 

int
FUNC18(Char *cmd, int prt)
{
    struct varent *var;
    const struct biltins *bptr;
    Char **pv;
    Char *sv;
    int hashval, rehashed, i, ex, rval = 0;

    if (prt && FUNC4(FUNC14(cmd), '/')) {
	FUNC16("%s", FUNC0(13, 7, "where: / in command makes no sense\n"));
	return rval;
    }

    /* first, look for an alias */

    if (prt && FUNC3(cmd, &aliases)) {
	if ((var = FUNC3(cmd, &aliases)) != NULL) {
	    FUNC16(FUNC0(13, 8, "%S is aliased to "), cmd);
	    if (var->vec != NULL)
		FUNC6(var->vec);
	    FUNC17('\n');
	    rval = 1;
	}
    }

    /* next, look for a shell builtin */

    for (bptr = bfunc; bptr < &bfunc[nbfunc]; bptr++) {
	if (FUNC10(cmd, FUNC15(bptr->bname))) {
	    rval = 1;
	    if (prt)
		FUNC16(FUNC0(13, 9, "%S is a shell built-in\n"), cmd);
	    else
		return rval;
	}
    }
#ifdef WINNT_NATIVE
    for (bptr = nt_bfunc; bptr < &nt_bfunc[nt_nbfunc]; bptr++) {
	if (eq(cmd, str2short(bptr->bname))) {
	    rval = 1;
	    if (prt)
		xprintf(CGETS(13, 9, "%S is a shell built-in\n"), cmd);
	    else
		return rval;
	}
    }
#endif /* WINNT_NATIVE*/

    /* last, look through the path for the command */

    if ((var = FUNC2(STRpath)) == NULL)
	return rval;

    hashval = havhash ? FUNC13(cmd) : 0;

    sv = FUNC1(STRslash, cmd);
    FUNC7(sv, xfree);

    rehashed = 0;
retry:
    for (pv = var->vec, i = 0; pv && *pv; pv++, i++) {
	if (havhash && !FUNC10(*pv, STRdot)) {
#ifdef FASTHASH
	    if (!bit(hashval, i))
		continue;
#else /* OLDHASH */
	    int hashval1 = FUNC12(hashval, i);
	    if (!FUNC5(xhash, hashval1))
		continue;
#endif /* FASTHASH */
	}
	ex = FUNC11(*pv, sv, 0);
#ifdef FASTHASH
	if (!ex && (hashdebug & 2)) {
	    xprintf("%s", CGETS(13, 10, "hash miss: "));
	    ex = 1;	/* Force printing */
	}
#endif /* FASTHASH */
	if (ex) {
	    rval = 1;
	    if (prt) {
		FUNC16("%S/", *pv);
		FUNC16("%S\n", cmd);
	    }
	    else
		return rval;
	}
    }
    /*
     * If we are printing, we are being called from dowhere() which it 
     * has rehashed already
     */
    if (!prt && FUNC2(STRautorehash) && !rehashed && havhash) {
	FUNC9(NULL, NULL);
	rehashed = 1;
	goto retry;
    }
    FUNC8(sv);
    return rval;
}