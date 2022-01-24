#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ VICMD ;
struct TYPE_9__ {int csearchdir; int /*<<< orphan*/  lastckey; } ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
#define  CNOTSET 132 
#define  FSEARCH 131 
#define  TSEARCH 130 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  fSEARCH 129 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  tSEARCH 128 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC7(SCR *sp, VICMD *vp)
{
	vp->character = FUNC0(sp)->lastckey;

	switch (FUNC0(sp)->csearchdir) {
	case CNOTSET:
		FUNC2(sp);
		return (1);
	case FSEARCH:
		return (FUNC3(sp, vp));
	case fSEARCH:
		return (FUNC5(sp, vp));
	case TSEARCH:
		return (FUNC4(sp, vp));
	case tSEARCH:
		return (FUNC6(sp, vp));
	default:
		FUNC1();
	}
	/* NOTREACHED */
}