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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_NOMATCH ; 
 int G_CSH ; 
 int G_GLOB ; 
 int G_NONE ; 
 int /*<<< orphan*/ * STRNULL ; 
 int /*<<< orphan*/  STRnoglob ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_cleanup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 

Char   *
FUNC14(Char *str, int action)
{
    Char   *v[2], **vl, **vo;
    int gflg, noglob;

    noglob = FUNC1(STRnoglob) != 0;
    v[0] = str;
    v[1] = 0;
    gflg = FUNC12(v);
    if (gflg == G_NONE)
	return (FUNC11(FUNC0(str)));

    if (gflg & G_CSH) {
	/*
	 * Expand back-quote, tilde and brace
	 */
	vo = FUNC5(v, noglob);
	if (noglob || (gflg & G_GLOB) == 0) {
	    vl = vo;
	    goto result;
	}
	FUNC3(vo, blk_cleanup);
    }
    else if (noglob || (gflg & G_GLOB) == 0)
	return (FUNC11(FUNC0(str)));
    else
	vo = v;

    vl = FUNC7(vo);
    if (gflg & G_CSH) {
    	if (vl != vo)
	    FUNC4(vo);
	else
	    FUNC2(vo);
    }
    if (vl == NULL) {
	FUNC8(FUNC9(str));
	FUNC10(ERR_NAME | ERR_NOMATCH);
    }
 result:
    if (vl && vl[0] == NULL) {
	FUNC13(vl);
	return (FUNC0(STRNULL));
    }
    if (vl && vl[1]) 
	return (FUNC6(str, vl, action));
    else {
	str = FUNC11(*vl);
	FUNC13(vl);
	return (str);
    }
}