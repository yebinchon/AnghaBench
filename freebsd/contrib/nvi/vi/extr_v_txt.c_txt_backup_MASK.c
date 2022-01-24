#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  VI_PRIVATE ;
struct TYPE_8__ {size_t len; size_t sv_len; scalar_t__ owrite; scalar_t__ insert; scalar_t__ lno; int /*<<< orphan*/ * lb; } ;
typedef  int /*<<< orphan*/  TEXTH ;
typedef  TYPE_1__ TEXT ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  CH_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINE_DELETE ; 
 int /*<<< orphan*/  M_BERR ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXT_APPENDEOL ; 
 int /*<<< orphan*/  TXT_REPLAY ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _texth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TEXT *
FUNC9(SCR *sp, TEXTH *tiqh, TEXT *tp, u_int32_t *flagsp)
{
	VI_PRIVATE *vip;
	TEXT *ntp;

	/* Get a handle on the previous TEXT structure. */
	if ((ntp = FUNC3(tp, _texth, q)) == NULL) {
		if (!FUNC1(*flagsp, TXT_REPLAY))
			FUNC6(sp, M_BERR,
			    "193|Already at the beginning of the insert");
		return (tp);
	}

	/* Bookkeeping. */
	ntp->len = ntp->sv_len;

	/* Handle appending to the line. */
	vip = FUNC5(sp);
	if (ntp->owrite == 0 && ntp->insert == 0) {
		ntp->lb[ntp->len] = CH_CURSOR;
		++ntp->insert;
		++ntp->len;
		FUNC2(*flagsp, TXT_APPENDEOL);
	} else
		FUNC0(*flagsp, TXT_APPENDEOL);

	/* Release the current TEXT. */
	FUNC4(tiqh, tp, q);
	FUNC7(tp);

	/* Update the old line on the screen. */
	if (FUNC8(sp, ntp->lno + 1, LINE_DELETE))
		return (NULL);

	/* Return the new/current TEXT. */
	return (ntp);
}