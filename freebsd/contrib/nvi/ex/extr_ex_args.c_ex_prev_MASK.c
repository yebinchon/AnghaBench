#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  iflags; } ;
struct TYPE_16__ {int /*<<< orphan*/ * cargv; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  FREF ;
typedef  TYPE_2__ EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  E_NEWSCREEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FS_ALL ; 
 int FS_FORCE ; 
 int FS_POSSIBLE ; 
 int FS_SETALT ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  SC_FSWITCH ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(SCR *sp, EXCMD *cmdp)
{
	FREF *frp;
	size_t wlen;
	CHAR_T *wp;

	if (sp->cargv == sp->argv) {
		FUNC9(sp, M_ERR, "112|No previous files to edit");
		return (1);
	}

	if (FUNC2(cmdp, E_NEWSCREEN)) {
		FUNC0(sp, sp->cargv[-1], FUNC10(sp->cargv[-1]) + 1,
				   wp, wlen);
		if (FUNC4(sp, cmdp, wp, wlen - 1))
			return (1);
		return (FUNC5(sp, cmdp));
	}

	if (FUNC8(sp,
	    FUNC1(cmdp->iflags, E_C_FORCE), FS_ALL | FS_POSSIBLE))
		return (1);

	if ((frp = FUNC6(sp, sp->cargv[-1])) == NULL)
		return (1);

	if (FUNC7(sp, frp, NULL, FS_SETALT |
	    (FUNC1(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0)))
		return (1);
	--sp->cargv;

	FUNC3(sp, SC_FSWITCH);
	return (0);
}