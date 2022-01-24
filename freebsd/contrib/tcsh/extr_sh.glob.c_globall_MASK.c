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
 int G_CSH ; 
 int G_GLOB ; 
 int /*<<< orphan*/  STRnoglob ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_cleanup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

Char  **
FUNC8(Char **v, int gflg)
{
    Char  **vl, **vo;
    int noglob;

    if (!v || !v[0])
	return FUNC6(v);

    noglob = FUNC0(STRnoglob) != 0;

    if (gflg & G_CSH)
	/*
	 * Expand back-quote, tilde and brace
	 */
	vl = vo = FUNC4(v, noglob);
    else
	vl = vo = FUNC6(v);

    if (!noglob && (gflg & G_GLOB)) {
	FUNC2(vo, blk_cleanup);
	vl = FUNC5(vo);
	if (vl == vo)
	    FUNC1(vo);
	FUNC3(vo);
    }
    else
	FUNC7(vl);

    return vl;
}