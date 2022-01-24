#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_16__ {scalar_t__ cno; int /*<<< orphan*/  lno; } ;
struct TYPE_17__ {TYPE_1__ m_final; } ;
typedef  TYPE_2__ VICMD ;
struct TYPE_18__ {scalar_t__ cno; int /*<<< orphan*/  lno; } ;
struct TYPE_15__ {int /*<<< orphan*/  lno; } ;
typedef  TYPE_3__ SCR ;
typedef  int /*<<< orphan*/  ARG_CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  O_ALTWERASE ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_TTYWERASE ; 
 int /*<<< orphan*/  SC_SCR_REDRAW ; 
 int /*<<< orphan*/  SC_TINPUT_INFO ; 
 TYPE_10__* TMAP ; 
 int TXT_ALTWERASE ; 
 int TXT_APPENDEOL ; 
 int TXT_CR ; 
 int TXT_ESCAPE ; 
 int TXT_INFOLINE ; 
 int TXT_MAPINPUT ; 
 int TXT_TTYWERASE ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC8(SCR *sp, VICMD *vp, ARG_CHAR_T prompt, u_int flags)
{
	/* Normally, we end up where we started. */
	vp->m_final.lno = sp->lno;
	vp->m_final.cno = sp->cno;

	/* Initialize the map. */
	if (FUNC6(sp))
		return (1);

	/* Move to the last line. */
	sp->lno = TMAP[0].lno;
	sp->cno = 0;

	/* Don't update the modeline for now. */
	FUNC1(sp, SC_TINPUT_INFO);

	/* Set the input flags. */
	FUNC3(TXT_APPENDEOL |
	    TXT_CR | TXT_ESCAPE | TXT_INFOLINE | TXT_MAPINPUT);
	if (FUNC4(sp, O_ALTWERASE))
		FUNC3(TXT_ALTWERASE);
	if (FUNC4(sp, O_TTYWERASE))
		FUNC3(TXT_TTYWERASE);

	/* Do the input thing. */
	if (FUNC7(sp, vp, NULL, NULL, 0, prompt, 0, 1, flags))
		return (1);

	/* Reenable the modeline updates. */
	FUNC0(sp, SC_TINPUT_INFO);

	/* Clean up the map. */
	if (FUNC5(sp))
		return (1);

	if (FUNC2(sp))
		FUNC1(sp, SC_SCR_REDRAW);	/* XXX */

	/* Set the cursor to the resulting position. */
	sp->lno = vp->m_final.lno;
	sp->cno = vp->m_final.cno;

	return (0);
}