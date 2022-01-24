#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__** argv; int /*<<< orphan*/  iflags; } ;
struct TYPE_4__ {int /*<<< orphan*/  bp; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  SEQ_COMMAND ; 
 int /*<<< orphan*/  SEQ_INPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(SCR *sp, EXCMD *cmdp)
{
	if (FUNC2(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len,
	    FUNC0(cmdp->iflags, E_C_FORCE) ? SEQ_INPUT : SEQ_COMMAND)) {
		FUNC1(sp, M_INFO,
		    cmdp->argv[0]->bp, "135|\"%s\" isn't currently mapped");
		return (1);
	}
	return (0);
}