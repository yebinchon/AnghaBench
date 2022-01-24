#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
struct TYPE_3__ {scalar_t__ tgw; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ CL_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int S_IWGRP ; 
 scalar_t__ TGW_SET ; 
 scalar_t__ TGW_UNKNOWN ; 
 scalar_t__ TGW_UNSET ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(SCR *sp, CL_PRIVATE *clp, int on)
{
	struct stat sb;
	char *tty;

	/* Find the tty, get the current permissions. */
	if ((tty = FUNC3(STDERR_FILENO)) == NULL) {
		if (sp != NULL)
			FUNC1(sp, M_SYSERR, "stderr");
		return (1);
	}
	if (FUNC2(tty, &sb) < 0) {
		if (sp != NULL)
			FUNC1(sp, M_SYSERR, "%s", tty);
		return (1);
	}

	/* Save the original status if it's unknown. */
	if (clp->tgw == TGW_UNKNOWN)
		clp->tgw = sb.st_mode & S_IWGRP ? TGW_SET : TGW_UNSET;

	/* Toggle the permissions. */
	if (on) {
		if (FUNC0(tty, sb.st_mode | S_IWGRP) < 0) {
			if (sp != NULL)
				FUNC1(sp, M_SYSERR,
				    "046|messages not turned on: %s", tty);
			return (1);
		}
	} else
		if (FUNC0(tty, sb.st_mode & ~S_IWGRP) < 0) {
			if (sp != NULL)
				FUNC1(sp, M_SYSERR,
				    "045|messages not turned off: %s", tty);
			return (1);
		}
	return (0);
}