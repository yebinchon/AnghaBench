#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  SC_VI ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(SCR *sp, EXCMD *cmdp)
{
	/* Vi only command. */
	if (!FUNC0(sp, SC_VI)) {
		FUNC2(sp, M_ERR,
		    "150|The script command is only available in vi mode");
		return (1);
	}

	/* Switch to the new file. */
	if (cmdp->argc != 0 && FUNC1(sp, cmdp))
		return (1);

	/* Create the shell, figure out the prompt. */
	if (FUNC3(sp))
		return (1);

	return (0);
}