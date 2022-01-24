#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VICMD ;
struct TYPE_2__ {size_t klen; int /*<<< orphan*/ * keyw; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FORWARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 size_t FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * RE_NWSTOP ; 
 int RE_NWSTOP_LEN ; 
 int /*<<< orphan*/ * RE_WSTART ; 
 int RE_WSTART_LEN ; 
 int /*<<< orphan*/ * RE_WSTOP ; 
 int RE_WSTOP_LEN ; 
 int /*<<< orphan*/  SEARCH_SET ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(SCR *sp, VICMD *vp)
{
	size_t blen, len;
	int rval;
	CHAR_T *bp, *p;

	/* An upper bound for the SIZE of the RE under construction. */
	len = FUNC5(sp)->klen + FUNC3(RE_WSTART_LEN, 1)
	    + FUNC3(RE_WSTOP_LEN, RE_NWSTOP_LEN);
	FUNC1(sp, bp, blen, len);
	p = bp;

	/* Only the first character can be non-word, see v_curword. */
	if (FUNC6(FUNC5(sp)->keyw[0])) {
		FUNC4(p, RE_WSTART, RE_WSTART_LEN);
		p += RE_WSTART_LEN;
	} else if (FUNC7(FUNC5(sp)->keyw[0])) {
		FUNC4(p, FUNC2("\\"), 1);
		p += 1;
	}

	FUNC4(p, FUNC5(sp)->keyw, FUNC5(sp)->klen);
	p += FUNC5(sp)->klen;

	if (FUNC6(p[-1])) {
		FUNC4(p, RE_WSTOP, RE_WSTOP_LEN);
		p += RE_WSTOP_LEN;
	} else {
		/*
		 * The keyword is a single non-word character.
		 * We want it to stay the same when typing ^A several times
		 * in a row, just the way the other cases behave.
		 */
		FUNC4(p, RE_NWSTOP, RE_NWSTOP_LEN);
		p += RE_NWSTOP_LEN;
	}

	len = p - bp;
	rval = FUNC8(sp, vp, bp, len, SEARCH_SET, FORWARD);

	FUNC0(sp, bp, blen);
	return (rval);
}