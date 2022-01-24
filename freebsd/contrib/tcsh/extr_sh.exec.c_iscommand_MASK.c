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
struct varent {scalar_t__** vec; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  STRautorehash ; 
 int /*<<< orphan*/  STRdot ; 
 int /*<<< orphan*/  STRpath ; 
 int /*<<< orphan*/  STRslash ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct varent* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (scalar_t__*) ; 
 scalar_t__ havhash ; 
 scalar_t__** justabs ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int xhash ; 

__attribute__((used)) static int
FUNC12(Char *name)
{
    Char **opv, **pv;
    Char *sav;
    struct varent *v;
    int slash = FUNC3(FUNC10(name), '/');
    int hashval, rehashed, i;

    v = FUNC2(STRpath);
    if (v == NULL || v->vec == NULL || v->vec[0] == NULL || slash)
	opv = justabs;
    else
	opv = v->vec;
    sav = FUNC1(STRslash, name);	/* / command name for postpending */
    hashval = havhash ? FUNC9(name) : 0;

    rehashed = 0;
retry:
    pv = opv;
    i = 0;
    do {
	if (!slash && FUNC0(pv[0]) && havhash) {
#ifdef FASTHASH
	    if (!bit(hashval, i))
		goto cont;
#else /* OLDHASH */
	    int hashval1 = FUNC8(hashval, i);
	    if (!FUNC4(xhash, hashval1))
		goto cont;
#endif /* FASTHASH */
	}
	if (pv[0][0] == 0 || FUNC6(pv[0], STRdot)) {	/* don't make ./xxx */
	    if (FUNC7(NULL, name, 0)) {
		FUNC11(sav);
		return i + 1;
	    }
	}
	else {
	    if (FUNC7(*pv, sav, 0)) {
		FUNC11(sav);
		return i + 1;
	    }
	}
cont:
	pv++;
	i++;
    } while (*pv);
    if (FUNC2(STRautorehash) && !rehashed && havhash && opv != justabs) {
	FUNC5(NULL, NULL);
	rehashed = 1;
	goto retry;
    }
    FUNC11(sav);
    return 0;
}