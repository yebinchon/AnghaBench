#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  WN ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(SCR *sp, EXCMD *cmdp)
{
	if (FUNC1(sp, cmdp, WN))
		return (1);
	if (FUNC2(sp, 0))
		return (1);

	/* The file name isn't a new file to edit. */
	cmdp->argc = 0;

	return (FUNC0(sp, cmdp));
}