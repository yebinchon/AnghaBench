#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* bp; } ;
struct TYPE_7__ {TYPE_1__* cmd; TYPE_3__** argv; } ;
struct TYPE_6__ {int /*<<< orphan*/  usage; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_2__ EXCMD ;
typedef  TYPE_3__ ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  EXM_USAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC7(SCR *sp, EXCMD *cmdp)
{
	ARGS *arg;

	arg = cmdp->argv[0];

	switch (arg->bp[0]) {
	case 'b':
		if (!FUNC6(arg, FUNC0("buffers")))
			break;
		return (FUNC1(sp));
	case 'c':
		if (!FUNC6(arg, FUNC0("connections")))
			break;
		return (FUNC2(sp));
	case 's':
		if (!FUNC6(arg, FUNC0("screens")))
			break;
		return (FUNC4(sp));
	case 't':
		if (!FUNC6(arg, FUNC0("tags")))
			break;
		return (FUNC5(sp));
	}
	FUNC3(sp, cmdp->cmd->usage, EXM_USAGE);
	return (1);
}