#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct roff_man {int /*<<< orphan*/  roff; int /*<<< orphan*/  flags; TYPE_1__* last; } ;
struct TYPE_2__ {scalar_t__ type; int line; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDOC_NEWLINE ; 
 int /*<<< orphan*/  MDOC_SYNOPSIS ; 
 scalar_t__ ROFFT_EQN ; 
 int FUNC0 (struct roff_man*,int,char*,int) ; 
 int FUNC1 (struct roff_man*,int,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

int
FUNC4(struct roff_man *mdoc, int ln, char *buf, int offs)
{

	if (mdoc->last->type != ROFFT_EQN || ln > mdoc->last->line)
		mdoc->flags |= MDOC_NEWLINE;

	/*
	 * Let the roff nS register switch SYNOPSIS mode early,
	 * such that the parser knows at all times
	 * whether this mode is on or off.
	 * Note that this mode is also switched by the Sh macro.
	 */
	if (FUNC3(mdoc->roff, "nS"))
		mdoc->flags |= MDOC_SYNOPSIS;
	else
		mdoc->flags &= ~MDOC_SYNOPSIS;

	return FUNC2(mdoc->roff, buf, &offs) ?
	    FUNC0(mdoc, ln, buf, offs) :
	    FUNC1(mdoc, ln, buf, offs);
}