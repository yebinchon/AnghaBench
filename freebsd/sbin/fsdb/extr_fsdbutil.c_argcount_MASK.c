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
struct cmdtable {int minargc; int maxargc; int /*<<< orphan*/  helptxt; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 

int
FUNC1(struct cmdtable *cmdp, int argc, char *argv[])
{
    if (cmdp->minargc == cmdp->maxargc)
	FUNC0("command `%s' takes %u arguments, got %u", cmdp->cmd,
	    cmdp->minargc-1, argc-1);
    else
	FUNC0("command `%s' takes from %u to %u arguments",
	      cmdp->cmd, cmdp->minargc-1, cmdp->maxargc-1);
	    
    FUNC0("usage: %s: %s", cmdp->cmd, cmdp->helptxt);
    return 1;
}